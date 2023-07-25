# This tries to stay faithful to the book's code
# using Revise
using StaticArrays, LinearAlgebra, Images, StructArrays, CUDA, Random, MLStyle, LLVMLoopInfo, SmartAsserts
using Core: LLVMPtr
using LLVM, LLVM.Interop

struct Literal{T} end
Base.:(*)(x, ::Type{Literal{T}}) where {T} = T(x)
const i32 = Literal{Int32}
const u32 = Literal{UInt32}

if CUDA.functional()
    CUDA.allowscalar(false)
    const var"@time_adapt" = CUDA.var"@time"
    # CUDA.math_mode!(CUDA.PEDANTIC_MATH)
    CUDA.math_mode!(CUDA.FAST_MATH; precision=:Float16)

    macro assert_adapt(ex, msg=nothing)
        return :($(esc(ex)) ? $(nothing) : @cuprintln(("Assertion failed at line $($(__source__.line))")) )
        # return :( $ex ? nothing : @cuprintln(("Assertion failed at line $($(__source__.line)): " * $(string(ex)))) )
    end
else
    # SmartAsserts.set_enabled(false)
    const var"@time_adapt" = var"@time"
    const var"@assert_adapt" = var"@smart_assert"
end

if @isdefined(ASSERTIONS_DISABLED) && ASSERTIONS_DISABLED
    macro assert_adapt(ex, msg=nothing)
        return :($(esc(ex)))
    end
end

const F = Float32

### TYPES
const VE        = Base.VecElement
const Vec{N, T} = NTuple{N, VE{T}}
# https://discourse.julialang.org/t/help-defining-masked-vload-and-vstore-operations-for-sarrays-or-other-isbits-structs-using-llvmcall/17291
to_tup(v::Vec{N}) where N = ntuple(i->v[i].value, N)

LLVMPtr{T}(x::LLVMPtr{K, A}) where {T,K,A} = reinterpret(LLVMPtr{T,A}, x)

const Point = SVector{3, F} # We use F so we dont have points of different types, otherwise Ray, Sphere become parametric types and HittableList needs to be contructed carefully to ensure same types everywhere. (can we somehow promote it)
const Spectrum = SVector{3, F}

StructArrays.staticschema(::Type{SVector{3, F}}) = NamedTuple{(:x, :y, :z), fieldtypes(SVector{3, F})...}
StructArrays.component(m::SVector{3, F}, key::Symbol) = getproperty(m, key)
StructArrays.createinstance(::Type{SVector{3, F}}, args...) = SVector{3, F}(args)

struct Ray
    origin::Point
    direction::Point
    
    @fastmath function Ray(origin=zeros(Point), direction=Point(0, 1, 0))
        @assert_adapt isapprox(direction ⋅ direction, 1; atol=F(1e-2)) "Ray direction not normalised for Ray with origin $origin and direction $direction"
        new(origin, direction)
    end
end
@inline (ray::Ray)(t) = ray.origin + t * ray.direction

struct Material
    type::UInt32
    data::SVector{4, F} # attenuation first, then any other float
end
Material(type, attenuation, float) = Material(type, SVector{4, F}(attenuation..., float))
Lambertian(attenuation=ones(Spectrum), padding=0) = Material(0, attenuation, padding)
Dielectric(attenuation=ones(Spectrum), ior=3//2) = Material(1, attenuation, ior)
Metal(attenuation=ones(Spectrum), fuzz=0) = Material(2, attenuation, fuzz)

@kwdef struct Sphere
    centre_radius::SVector{4, F} = SVector{4, F}(0, 0, 0, 1//2)
    material::Material = Lambertian()
end
function Sphere(centre, radius, material)
    Sphere(SVector{4, F}(centre..., radius), material)
end

rcp(x) = @fastmath 1/x
# CUDA.@device_override rcp(x::Float32) = ccall("extern __nv_frcp_rn", llvmcall, Cfloat, (Cfloat,), x)
CUDA.@device_override rcp(x::Float32) = @asmcall("rcp.approx.ftz.f32 \$0, \$1;", "=f,f", Float32, Tuple{Float32}, x)
@fastmath sphere_normal(centre, radius, position) = (position - centre) * rcp(radius)

@kwdef struct hittable_list{T}
    spheres::T = []
end

struct Camera
    u::Point
    v::Point

    right::Point
	down::Point

    upper_left_corner::Point
	pinhole_location::Point

    lens_radius::F
end
function Camera(nx::Integer=400, ny=imagesize(nx, 16/9)[2], pinhole_location=Point(0, 0, 0), lookat=Point(0, 1, 0), up=Point(0, 0, 1), vfov=2atand(1), lens_radius=0, focus_distance=1)
    aspect_ratio = nx/ny

    camera_height = 2 * tand(vfov / 2) * focus_distance
    camera_width = camera_height * aspect_ratio

    w = normalize(lookat - pinhole_location)
    u = normalize(w × up)
    v = w × u

    right = u * camera_width / nx 
    down = v * camera_height / ny

    camera_centre = pinhole_location + w * focus_distance
    upper_left_corner = camera_centre - right * nx / 2 - down * ny / 2

    return Camera(u, v, right, down, upper_left_corner, pinhole_location, lens_radius)
end

struct BufferData
    ray::Ray
    attenuation::Spectrum
    pixel_index::UInt32
    depth::UInt32
end
StructArrays.staticschema(::Type{BufferData}) = NamedTuple{(:ray, :attenuation_and_pixel_index, :depth), Tuple{Ray, Tuple{Spectrum, UInt32}, UInt32}}
function StructArrays.component(m::BufferData, key::Symbol)
    if key == :attenuation_and_pixel_index
        (getproperty(m, :attenuation), getproperty(m, :pixel_index))
    else
        getproperty(m, key)
    end
end
StructArrays.createinstance(::Type{BufferData}, ray, attenuation_and_pixel_index, depth) = BufferData(ray, attenuation_and_pixel_index[1], attenuation_and_pixel_index[end], depth)

struct HitRecord
    t::F
    sphere_index::UInt32
end

mutable struct RNG <: AbstractRNG
    seed::UInt32
end
@inline @fastmath function pcg_hash(seed::UInt32)
    state = seed * 747796405u32 + 2891336453u32
    # https://github.com/JuliaLang/julia/issues/50225
    word = ((state >> (((state >> 28u32) + 4u32) & (8*sizeof(UInt32)-1))) ⊻ state) * 277803737u32
    return (word >> 22u32) ⊻ word
end

function rand!(rng::RNG, ::Type{Float32}) # random float in [0, 1)
    rng.seed = pcg_hash(rng.seed)
    # return rand(Float32)
    # return Float32(rng.seed) / Float32(typemax(UInt32))
    result = reinterpret(Float32, rng.seed & 0x007FFFFF | 0x3f800000) - 1f0
    # https://github.com/JuliaLang/julia/issues/44887
    # return Float32(rng.seed >>> 8) * Float32(0x1.0p-24) 

    assume(result >= 0)
    return result
end

function rand_minustoplus!(rng::RNG, ::Type{Float32}) # random float in [-1, 1)
    rng.seed = pcg_hash(rng.seed)
    # return rand!(rng, Float32) * 2 - 1
    # return Float32(rng.seed) / Float32(typemax(UInt32)) * 2 - 1
    return reinterpret(Float32, rng.seed & 0x007FFFFF | 0x40000000) - 3f0
end

### General Functions

CUDA.@device_override @inline Base.FastMath.sqrt_fast(x::Float32) = @asmcall("sqrt.approx.ftz.f32 \$0, \$1;", "=f,f", Float32, Tuple{Float32}, x)
@inline StaticArrays.dot(a::SVector{N, T}, b::SVector{N, T}) where {N,T<:Real} = StaticArrays._vecdot(StaticArrays.same_size(a, b), a, b, Base.FastMath.mul_fast)

imagesize(height, aspectRatio) = (Int(height), round(Int, height / aspectRatio))

@fastmath pixel_world_position(camera, index) = pixel_world_position(camera, index[1], index[2])
@fastmath pixel_world_position(camera, x, y) = camera.upper_left_corner + (y - 1) * camera.right + (x - 1) * camera.down

@inline @fastmath norm2(x) = x ⋅ x

@inline @fastmath normalize_fast(x) = x * (1 / sqrt(norm2(x)))
@inline @fastmath normalize_fast(x::SVector{3}) = x * (1 / sqrt(norm2(x)))

CUDA.@device_override @inline @fastmath normalize_fast(x) = x * CUDA.rsqrt(norm2(x))
CUDA.@device_override @inline @fastmath normalize_fast(x::SVector{3}) = x * CUDA.rnorm3df(x[1], x[2], x[3])

function world_color(ray)
    interp = (ray.direction.z + 1) / 2
    return (1 - interp) * Spectrum(1, 1, 1) + interp * Spectrum(0.5, 0.7, 1.0)
end

@inline @fastmath function random_in_unit_disk!(rng)
    while true
        p = SVector{2, F}(rand_minustoplus!(rng, F), rand_minustoplus!(rng, F))
        if norm2(p) < 1
            return p
        end
    end
end

@inline @fastmath function random_in_unit_sphere!(rng)
    z = rand_minustoplus!(rng, F)
    r = sqrt(max(0, 1 - z*z))
    ϕ = 2 * π * rand!(rng, F)
    sinϕ, cosϕ = sincos(ϕ) # We want to call fast_sin, fast_cos on GPU, fast_sincos is much slower. fast_sinpi, fast_sincospi do not exist
    return Point(r * cosϕ, r * sinϕ, z) * cbrt(rand!(rng, F))
end

@inline @fastmath function random_on_unit_sphere_surface!(rng)
    # https://github.com/mmp/pbrt-v4/blob/c4baa534042e2ec4eb245924efbcef477e096389/src/pbrt/util/sampling.h#L391
    z = rand_minustoplus!(rng, F)
    r = sqrt(max(0, 1 - z*z))
    ϕ = 2 * π * rand!(rng, F)
    sinϕ, cosϕ = sincos(ϕ)
    return Point(r * cosϕ, r * sinϕ, z)
end

### Materials

@fastmath function reflect!(rng, ray, n⃗, fuzz=0)
    direction = ray.direction - 2(ray.direction ⋅ n⃗) * n⃗

    # Is branching worth it? Does const prop eliminate this
    if fuzz != 0
        direction += fuzz * random_in_unit_sphere!(rng)
    end

    return normalize_fast(direction)
end

@fastmath function metal!(rng, ray, n⃗, fuzz=0)
    @inline scattered = reflect!(rng, ray, n⃗, fuzz)
    return scattered, scattered ⋅ n⃗ > 0 # check if scattered direction is into the object
end

@fastmath function shick(cosθ, ior_ratio)
    r0 = ((1 - ior_ratio) / (1 + ior_ratio))
    r0 *= r0
    return r0 + (1 - r0) * (1 - cosθ)^5
    # return r0 + (1 - r0) * Base.:(^)(1 - cosθ, 5i32)
end

# A lot of branching here
@fastmath function glass!(rng, ray, n⃗, ior)
    air_ior = 1

    cosθ = - ray.direction ⋅ n⃗
    into = cosθ > 0

    sinθ = sqrt(max(1 - cosθ*cosθ, zero(F)))
    @assert_adapt !isnan(sinθ)

    ior_ratio = ifelse(into, air_ior / ior, ior) #/ air_ior)
    n⃗ = ifelse(into, n⃗, -n⃗)
    cosθ = ifelse(into, cosθ, -cosθ)

    if (ior_ratio * sinθ > 1) | (rand!(rng, F) < shick(cosθ, ior_ratio))
        return reflect!(rng, ray, n⃗)
    else
        Rperp = ior_ratio * (ray.direction + cosθ * n⃗)
        Rpar = - sqrt(max(1 - norm2(Rperp), zero(F))) * n⃗
        @assert_adapt !isnan(Rpar)

        return normalize_fast(Rperp + Rpar)
    end
end

@fastmath function lambertian!(rng, n⃗) 
    random = random_on_unit_sphere_surface!(rng) # voxel_tracer uses random_in_unit_sphere which is about 5% faster
    vector = n⃗ + random

    if sum(abs.(vector)) <= F(1e-2)
        vector = n⃗
        return vector # n⃗ should be normalised already
    end
    
    direction = normalize_fast(vector)
    return direction
end

### Load/ Stores

@inline function atomic_add!(img::AbstractArray{Spectrum}, pixel_index, attenuation)
    CUDA.atomic_add!(LLVMPtr{Float32}(pointer(img, pixel_index)), attenuation[1])
    CUDA.atomic_add!(LLVMPtr{Float32}(pointer(img, pixel_index)) + sizeof(Float32), attenuation[2])
    CUDA.atomic_add!(LLVMPtr{Float32}(pointer(img, pixel_index)) + 2*sizeof(Float32), attenuation[3])
end

@inline function unsafe_cached_load_vectorized(base_ptr::LLVMPtr{Ray,CUDA.AS.Global}, i::Integer)
    offset = i-one(i) # in elements
    ptr = LLVMPtr{Float32}(base_ptr) + offset*convert(typeof(i), sizeof(Ray))

    ox, oy = to_tup(unsafe_cached_load(LLVMPtr{Vec{2, F}}(ptr), 1, Val(8)))

    ptr += 2*sizeof(Float32)
    oz, dx = to_tup(unsafe_cached_load(LLVMPtr{Vec{2, F}}(ptr), 1, Val(8)))

    ptr += 2*sizeof(Float32)
    dy, dz = to_tup(unsafe_cached_load(LLVMPtr{Vec{2, F}}(ptr), 1, Val(8)))

    return Ray(Point(ox, oy, oz), Point(dx, dy, dz))
end
@inline function unsafe_cached_load_vectorized(ptr::LLVMPtr{HitRecord, CUDA.AS.Global})
    t, sphere_index = to_tup(unsafe_cached_load(LLVMPtr{Vec{2, F}}(ptr), 1, Val(8)))
    return HitRecord(t, reinterpret(UInt32, sphere_index))
end
@inline function unsafe_cached_load_vectorized(ptr::LLVMPtr{Tuple{Spectrum, UInt32},CUDA.AS.Global})
    s1, s2, s3, pixel_index = to_tup(unsafe_cached_load(LLVMPtr{Vec{4, F}}(ptr), 1, Val(16)))
    return Spectrum(s1, s2, s3), reinterpret(UInt32, pixel_index)
end

@inline function unsafe_store_vectorized!(ptr::LLVMPtr{Ray,CUDA.AS.Global}, ray)
    unsafe_store!(LLVMPtr{Vec{2, F}}(ptr), (ray.origin[1], ray.origin[2]), 1, Val(8))
    unsafe_store!(LLVMPtr{Vec{2, F}}(ptr + 2*sizeof(Float32)), (ray.origin[3], ray.direction[1]), 1, Val(8))
    unsafe_store!(LLVMPtr{Vec{2, F}}(ptr + 4*sizeof(Float32)), (ray.direction[2], ray.direction[3]), 1, Val(8))

    return nothing
end

@inline function unsafe_store_vectorized!(ptr::LLVMPtr{Tuple{Spectrum, UInt32},CUDA.AS.Global}, attenuation_and_pixel_index)
    unsafe_store!(LLVMPtr{Vec{4, F}}(ptr), (attenuation_and_pixel_index[1]..., reinterpret(Float32, UInt32(attenuation_and_pixel_index[end]))), 1, Val(16))

    return nothing
end

### Render Loop

@inline @fastmath function find_scene_intersection(r, tmin::F, tmax::F)
    minHitT = tmax
    minIndex = Int32(0)

    assume(length(gpu_material_type()) >= 1)
    @loopinfo unrollcount=16 predicate for i in Int32(1):Int32(length(gpu_material_type()))
        cx, cy, cz, radius = to_tup(unsafe_cached_load(LLVMPtr{Vec{4, F}}(pointer(gpu_centre_radius())), i, Val(16)))

        cox = cx - r.origin.x
        coy = cy - r.origin.y
        coz = cz - r.origin.z

        neg_half_b = r.direction.x * cox + r.direction.y * coy 
        neg_half_b += r.direction.z * coz

        c = cox*cox + coy*coy 
        c += coz*coz 
        c -= radius*radius

        quarter_discriminant = neg_half_b*neg_half_b - c

        if quarter_discriminant > 0
            sqrtd = sqrt(quarter_discriminant)
    
            root = neg_half_b - sqrtd
            root2 = neg_half_b + sqrtd

            t = ifelse(root > tmin, root, root2)

            newMinT = (tmin < t) & (t < minHitT)
            minHitT = ifelse(newMinT, t, minHitT)
            minIndex = ifelse(newMinT, i, minIndex)
        end
    end

    assume(minIndex >= 0)
    return HitRecord(minHitT, minIndex)
end

@fastmath function scatter!(rng, img, next_state, current_state, next_state_index, hit_record, max_depth)
    pixel_index = current_state.pixel_index
    r = current_state.ray

    if hit_record.sphere_index == 0 # nothing hit
        @assert_adapt all(world_color(r) .>= 0)
        atomic_add!(img, pixel_index, current_state.attenuation .* world_color(r))
    else
        position = r(hit_record.t)
        cx, cy, cz, radius = to_tup(unsafe_cached_load(LLVMPtr{Vec{4, F}}(pointer(gpu_centre_radius())), hit_record.sphere_index, Val(16)))
        @inline normal = sphere_normal(Point(cx, cy, cz), radius, position)
        @assert_adapt isapprox(norm2(normal), 1; atol=F(1e-2)) normal

        material_data = to_tup(unsafe_cached_load(LLVMPtr{Vec{4, F}}(pointer(gpu_material_data())), hit_record.sphere_index, Val(16)))
        @inbounds material_type = gpu_material_type()[hit_record.sphere_index]
        material = Material(material_type, material_data)

        if material.type == 0
            direction = lambertian!(rng, normal)
            scatter_again = true
        elseif material.type == 1
            ior = material.data[4]
            direction = glass!(rng, r, normal, ior)
            scatter_again = true
        else # not doing a check here is important about 10%, goes from 38ms to 34.5ms (i.e. on par with expronicon)
            fuzz = material.data[4]
            direction, scatter_again = metal!(rng, r, normal, fuzz)
        end

        # if scatter_again
            attenuation = Spectrum(@view material.data[1:3])

            new_attenuation = ifelse(scatter_again, current_state.attenuation .* attenuation, zeros(Spectrum))

            if current_state.depth == max_depth
                atomic_add!(img, pixel_index, new_attenuation)
            elseif scatter_again
                old_index = CUDA.atomic_add!(pointer(next_state_index), 1i32)

                unsafe_store_vectorized!(pointer(next_state.ray, old_index), Ray(position, direction))
                # Don't actually need to rewrite pixel_index though it enables vectorization
                unsafe_store_vectorized!(pointer(next_state.attenuation_and_pixel_index, old_index), (new_attenuation, pixel_index))
                @inbounds next_state.depth[old_index] = current_state.depth + 1u32
            end
        # end
    end

    return nothing
end
@fastmath function scatter!(rng, img, next_state, current_state, i, next_state_index, hit_record, max_depth)
    r_attenuation, pixel_index = unsafe_load(pointer(current_state.attenuation_and_pixel_index, i))


    if hit_record.sphere_index == 0 # nothing hit
        # r = Ray(zeros(Point), Point(0, 0, @inbounds current_state.ray[i].direction.z))
        r = (point=zeros(Point), direction=Point(0, 0, @inbounds current_state.ray[i].direction.z)) # avoids checking direction is normalised
        @assert_adapt all(world_color(r) .>= 0)
        atomic_add!(img, pixel_index, r_attenuation .* world_color(r))
    else
        r = unsafe_cached_load_vectorized(pointer(current_state.ray, i), 1)

        position = r(hit_record.t)
        cx, cy, cz, radius = to_tup(unsafe_cached_load(LLVMPtr{Vec{4, F}}(pointer(gpu_centre_radius())), hit_record.sphere_index, Val(16)))
        @inline normal = sphere_normal(Point(cx, cy, cz), radius, position)
        @assert_adapt isapprox(norm2(normal), 1; atol=F(1e-1)) normal

        material_data = to_tup(unsafe_cached_load(LLVMPtr{Vec{4, F}}(pointer(gpu_material_data())), hit_record.sphere_index, Val(16)))
        @inbounds material_type = gpu_material_type()[hit_record.sphere_index]
        material = Material(material_type, material_data)

        if material.type == 0
            direction = lambertian!(rng, normal)
            scatter_again = true
        elseif material.type == 1
            ior = material.data[4]
            direction = glass!(rng, r, normal, ior)
            scatter_again = true
        else # not doing a check here is important about 10%, goes from 38ms to 34.5ms (i.e. on par with expronicon)
            fuzz = material.data[4]
            direction, scatter_again = metal!(rng, r, normal, fuzz)
        end

        # if scatter_again
            attenuation = Spectrum(@view material.data[1:3])

            new_attenuation = ifelse(scatter_again, r_attenuation .* attenuation, zeros(Spectrum))

            @inbounds if current_state.depth[i] == max_depth
                atomic_add!(img, pixel_index, r_attenuation .* world_color(r))
            elseif scatter_again
                old_index = CUDA.atomic_add!(pointer(next_state_index), 1i32)

                unsafe_store_vectorized!(pointer(next_state.ray, old_index), Ray(position, direction))
                # Don't actually need to rewrite pixel_index though it enables vectorization
                unsafe_store_vectorized!(pointer(next_state.attenuation_and_pixel_index, old_index), (new_attenuation, pixel_index))
                @inbounds next_state.depth[old_index] = current_state.depth[i] + 1u32
            end
        # end
    end

    return nothing
end
@fastmath function generate_ray!(rng, pixel_position, camera)
    random_pixel_position = pixel_position + rand!(rng, F) * camera.right + rand!(rng, F) * camera.down

    defocus_random = camera.lens_radius * random_in_unit_disk!(rng)
    defocus_offset = defocus_random[1] * camera.u + defocus_random[2] * camera.v

    return Ray(camera.pinhole_location + defocus_offset, normalize_fast(random_pixel_position - camera.pinhole_location - defocus_offset))
end
@fastmath function generate_rays_kernel!(current_state, camera, column_size, current_state_size, offset, samples_per_pixel, index_offset)
    index = (blockIdx().x - Int32(1)) * blockDim().x + threadIdx().x
    stride = gridDim().x * blockDim().x

    i = index
    while i <= current_state_size
        assume(samples_per_pixel > 0)
        assume(i > 0)
        img_linear_index = 1u32 + UInt32((i - 1u32 + offset) ÷ samples_per_pixel)

        assume(column_size > 0)
        y = cld(img_linear_index, column_size)
        x = mod1(img_linear_index, column_size)

        rng = RNG(img_linear_index * (i + offset))
        ray = generate_ray!(rng, pixel_world_position(camera, F(x), F(y)), camera)

        unsafe_store_vectorized!(pointer(current_state.ray, i + index_offset), ray)
        unsafe_store_vectorized!(pointer(current_state.attenuation_and_pixel_index, i + index_offset), (ones(Spectrum), img_linear_index))
        @inbounds current_state.depth[i + index_offset] = 1

        i += stride
    end

    return nothing
end
function intersect_and_scatter_kernel!(img, next_state, current_state, max_depth, next_state_index, rays_size, tmin, tmax, number_of_rays_generated)
    index = (blockIdx().x - 1i32) * blockDim().x + threadIdx().x
    stride = gridDim().x * blockDim().x

    # Only for Nsight compute prevents out of bound error
    # if index == 1
    #     next_state_index[] = 1
    # end

    i = index
    while i <= rays_size
        ray = unsafe_cached_load_vectorized(pointer(current_state.ray), i)

        hit_record = find_scene_intersection(ray, tmin, tmax)

        @inbounds _, pixel_index = unsafe_load(pointer(current_state.attenuation_and_pixel_index, i))
        @inbounds rng = RNG(pixel_index * (i + number_of_rays_generated) + current_state.depth[i])
        scatter!(rng, img, next_state, current_state, i, next_state_index, hit_record, max_depth)
        i += stride
    end

    return nothing
end
@fastmath function generate_and_intersect_and_scatter_kernel!(img, next_state, max_depth, next_state_index, rays_size, tmin, tmax, camera, offset, samples_per_pixel, column_size)
    index = (blockIdx().x - 1i32) * blockDim().x + threadIdx().x
    stride = gridDim().x * blockDim().x

    # Only for Nsight compute prevents out of bound error
    # if index == 1
    #     next_state_index[] = 1
    # end

    i = index
    while i <= rays_size
        assume(samples_per_pixel > 0)
        assume(i > 0)
        img_linear_index = 1u32 + UInt32((i - 1u32 + offset) ÷ samples_per_pixel)

        assume(column_size > 0)
        y = cld(img_linear_index, column_size)
        x = mod1(img_linear_index, column_size)

        rng = RNG(img_linear_index * (i + offset))
        ray = generate_ray!(rng, pixel_world_position(camera, F(x), F(y)), camera)
        current_state = BufferData(ray, ones(Spectrum), img_linear_index, 1)

        hit_record = find_scene_intersection(ray, tmin, tmax)
        scatter!(rng, img, next_state, current_state, next_state_index, hit_record, max_depth)
        i += stride
    end

    return nothing
end

function undef_array(::Type{T}, sz; unwrap::F = StructArrays.alwaysfalse) where {T, F}
    if unwrap(T)
        return StructArrays.buildfromschema(typ -> undef_array(typ, sz; unwrap = unwrap), T)
    else
        return CuArray{T}(undef, Int.(sz))
    end
end


@fastmath function render!(img, HittableList, camera=Camera(); tmin=F(1e-4), tmax=F(Inf), samples_per_pixel=100, max_depth=16, parallel=:GPU)
    if parallel == :GPU
        rays_traced = 0

        number_of_rays = samples_per_pixel*length(img)

        max_state_size::Int32 = 10^7
        state_size::Int32 = min(number_of_rays, max_state_size)

        current_state = StructArrays.buildfromschema(typ -> undef_array(typ, (state_size,)), BufferData);
        next_state = StructArrays.buildfromschema(typ -> undef_array(typ, (state_size,)), BufferData);
        data_for_scattering = CuArray{HitRecord}(undef, state_size)

        number_of_rays_generated::UInt32 = 0

        current_state_size::Int32 = min(number_of_rays - number_of_rays_generated, state_size)
        if number_of_rays > typemax(UInt32)
            throw("Overflow 2")
        end
        next_state_index = CuArray{Int32}([1])

        _generate_rays_kernel! = @cuda launch=false always_inline=true generate_rays_kernel!(current_state, camera, UInt32(size(img)[1]), current_state_size, number_of_rays_generated, UInt32(samples_per_pixel), Int32(0))
        _generate_rays_kernel!_config = launch_configuration(_generate_rays_kernel!.fun)
        # @show CUDA.registers(_generate_rays_kernel!)
        # @show CUDA.memory(_generate_rays_kernel!)

        # buf = IOBuffer();
        # @device_code_llvm io=buf @cuda launch=false always_inline=true generate_rays_kernel!(current_state, camera, UInt32(size(img)[1]), current_state_size, number_of_rays_generated, UInt32(samples_per_pixel), Int32(0))
        # write("_generate_rays_kernel!.llvm", take!(buf))

        _intersect_and_scatter_kernel! = @cuda launch=false always_inline=true intersect_and_scatter_kernel!(img, next_state, current_state, UInt32(max_depth), next_state_index, current_state_size, tmin, tmax, number_of_rays_generated)
        _intersect_and_scatter_kernel!_config = launch_configuration(_intersect_and_scatter_kernel!.fun)
        # @show CUDA.registers(_intersect_and_scatter_kernel!)
        # @show CUDA.memory(_intersect_and_scatter_kernel!)
        # @show _intersect_and_scatter_kernel!_config

        # @device_code_warntype interactive=true @cuda launch=false always_inline=true intersect_and_scatter_kernel!(img, next_state, current_state, UInt32(max_depth), next_state_index, current_state_size, tmin, tmax, number_of_rays_generated)

        # buf = IOBuffer();
        # @device_code_llvm io=buf @cuda launch=false always_inline=true intersect_and_scatter_kernel!(img, next_state, current_state, UInt32(max_depth), next_state_index, current_state_size, tmin, tmax, number_of_rays_generated)
        # write("intersect_and_scatter_kernel!.llvm", take!(buf))

       _generate_and_intersect_and_scatter_kernel! = @cuda launch=false always_inline=true generate_and_intersect_and_scatter_kernel!(img, next_state, UInt32(max_depth), next_state_index, current_state_size, tmin, tmax, camera, number_of_rays_generated, UInt32(samples_per_pixel), UInt32(size(img)[1]))
        _generate_and_intersect_and_scatter_kernel!_config = launch_configuration(_generate_and_intersect_and_scatter_kernel!.fun)
        # @show CUDA.registers(_generate_and_intersect_and_scatter_kernel!)
        # @show CUDA.memory(_generate_and_intersect_and_scatter_kernel!)
        # @show _generate_and_intersect_and_scatter_kernel!_config

        # @device_code_warntype interactive=true @cuda launch=false always_inline=true generate_and_intersect_and_scatter_kernel!(img, next_state, UInt32(max_depth), next_state_index, current_state_size, tmin, tmax, camera, number_of_rays_generated, UInt32(samples_per_pixel), UInt32(size(img)[1]))

        # buf = IOBuffer();
        # @device_code_llvm io=buf @cuda launch=false always_inline=true generate_and_intersect_and_scatter_kernel!(img, next_state, UInt32(max_depth), next_state_index, current_state_size, tmin, tmax, camera, number_of_rays_generated, UInt32(samples_per_pixel), UInt32(size(img)[1]))
        # write("_generate_and_intersect_and_scatter_kernel!.llvm", take!(buf))

        # buf = IOBuffer();
        # @device_code_ptx io=buf raw=true @cuda launch=false always_inline=true generate_and_intersect_and_scatter_kernel!(img, next_state, UInt32(max_depth), next_state_index, current_state_size, tmin, tmax, camera, number_of_rays_generated, UInt32(samples_per_pixel), UInt32(size(img)[1]))
        # write("_generate_and_intersect_and_scatter_kernel!.ptx", take!(buf))

        current_state_size = UInt32(min(number_of_rays - number_of_rays_generated, state_size))

        # _generate_rays_kernel!_threads = min(current_state_size, _generate_rays_kernel!_config.threads)
        # _generate_rays_kernel!_blocks = cld(current_state_size, _generate_rays_kernel!_threads)
        # _generate_rays_kernel!(current_state, camera, size(img)[1], current_state_size, number_of_rays_generated, UInt32(samples_per_pixel); threads=_generate_rays_kernel!_threads, blocks=_generate_rays_kernel!_blocks)

        _generate_and_intersect_and_scatter_kernel!_threads = min(current_state_size, _generate_and_intersect_and_scatter_kernel!_config.threads)
        _generate_and_intersect_and_scatter_kernel!_blocks = cld(current_state_size, _generate_and_intersect_and_scatter_kernel!_threads)
        # _generate_and_intersect_and_scatter_kernel!_blocks = 60
        # min(_generate_and_intersect_and_scatter_kernel!_config.blocks, cld(current_state_size, _generate_and_intersect_and_scatter_kernel!_threads))
        # @show Int(_generate_and_intersect_and_scatter_kernel!_blocks)
        _generate_and_intersect_and_scatter_kernel!(img, current_state, UInt32(max_depth), next_state_index, current_state_size, tmin, tmax, camera, number_of_rays_generated, UInt32(samples_per_pixel), UInt32(size(img)[1]); threads=_generate_and_intersect_and_scatter_kernel!_threads, blocks=_generate_and_intersect_and_scatter_kernel!_blocks)

        number_of_rays_generated += current_state_size
        
        rays_traced += current_state_size
        current_state_size = CUDA.@allowscalar next_state_index[] - Int32(1)
        CUDA.@allowscalar next_state_index[] = Int32(1)

        while current_state_size > 0
            free_slots = UInt32(min(number_of_rays - number_of_rays_generated, state_size - current_state_size))
            if free_slots > 0
                _generate_rays_kernel!_threads = min(free_slots, _generate_rays_kernel!_config.threads)
                _generate_rays_kernel!_blocks = cld(free_slots, _generate_rays_kernel!_threads)
                _generate_rays_kernel!(current_state, camera, UInt32(size(img)[1]), free_slots, number_of_rays_generated, UInt32(samples_per_pixel), current_state_size; threads=_generate_rays_kernel!_threads, blocks=_generate_rays_kernel!_blocks)

                number_of_rays_generated += free_slots
                current_state_size += free_slots
            end

            # _intersect_and_scatter_kernel!_threads = 256
            _intersect_and_scatter_kernel!_threads = min(current_state_size, _intersect_and_scatter_kernel!_config.threads)
            _intersect_and_scatter_kernel!_blocks = cld(current_state_size, _intersect_and_scatter_kernel!_threads)
            # _intersect_and_scatter_kernel!_blocks = min(_intersect_and_scatter_kernel!_config.blocks, cld(current_state_size, _intersect_and_scatter_kernel!_threads))
            # _intersect_and_scatter_kernel!_blocks = min(60, cld(current_state_size, _intersect_and_scatter_kernel!_threads))
            _intersect_and_scatter_kernel!(img, next_state, current_state, UInt32(max_depth), next_state_index, current_state_size, tmin, tmax, number_of_rays_generated; threads=_intersect_and_scatter_kernel!_threads, blocks=_intersect_and_scatter_kernel!_blocks)
            
            tmp = current_state;
            current_state = next_state;
            next_state = tmp;
            
            rays_traced += current_state_size
            current_state_size = CUDA.@allowscalar next_state_index[] - 1i32
            CUDA.@allowscalar next_state_index[] = 1i32
        end

        img ./= samples_per_pixel
    end

    # println(rays_traced)

    # https://github.com/JuliaCI/BenchmarkTools.jl/issues/127
    CUDA.unsafe_free!(data_for_scattering)
    StructArrays.foreachfield(CUDA.unsafe_free!, current_state)
    StructArrays.foreachfield(CUDA.unsafe_free!, next_state)

    return nothing
end

### Scene Setup

function scene_random_spheres()
    Random.seed!(1324)
    HittableList = [Sphere([0, 0, -1000], 1000, Lambertian(Spectrum(.5, .5, .5)))]

	for a in -11:10, b in -11:10
		choose_mat = rand()
		center = Point(a + 0.9*rand(), -(b + 0.9*rand()), 0.2)

		# skip spheres too close?
		if norm(center - Point(4, 0, 0.2)) < 0.9 continue end 
			
		if choose_mat < 4//5
			# lambertian
			albedo = rand(Spectrum) .* rand(Spectrum)
			push!(HittableList, Sphere(center, 1//5, Lambertian(albedo)))
		elseif choose_mat < 95//100
			# metal
			albedo = rand(Spectrum) / 2 .+ 1/2
			fuzz = rand() * 5
			push!(HittableList, Sphere(center, 0.2, Metal(albedo, fuzz)))
		else
			# glass
			push!(HittableList, Sphere(center, 0.2, Dielectric()))
		end
	end

	push!(HittableList, Sphere([0,0,1], 1, Dielectric()))
	push!(HittableList, Sphere([-4,0,1], 1, Lambertian(Spectrum(0.4, 0.2, 0.1))))
	push!(HittableList, Sphere([4,0,1], 1, Metal(Spectrum(0.7, 0.6, 0.5), 0)))

    return hittable_list(HittableList);
end

### Run Code
spectrumToRGB(img) = map(x -> RGB(sqrt.(x)...), img |> Array)

function setup(parallel, resolution=1920/4, aspect_ratio=16//9)
    scene = scene_random_spheres()
    spectrum_img = zeros(Spectrum, reverse(imagesize(resolution, aspect_ratio))...)
    camera = Camera(reverse(size(spectrum_img))..., [13, -3, 2], [0, 0, 0], [0, 0, 1], 20, 0.05, 10)

    if parallel == :GPU
        scene = hittable_list(StructArray(scene.spheres, unwrap=T->T==Material))

        const_memory = (centre_radius=stack(scene.spheres.centre_radius), material_type=scene.spheres.material.type, material_data=stack(scene.spheres.material.data))
        if !(@isdefined gpu_centre_radius)
            for var in [:centre_radius, :material_type, :material_data]
                val = getfield(const_memory, var) |> Array |> vec
                gpu_var = Symbol("gpu_$var")
                arr_typ = :(CuDeviceArray{$(eltype(val)),$(ndims(val)),CUDA.AS.Constant})
                @eval @inline @generated function $gpu_var()
                    ptr = CUDA.emit_constant_array($(QuoteNode(var)), $val)
                    Expr(:call, $arr_typ, ptr, $(size(val)))
                end
            end
        end

        spectrum_img = CuArray(spectrum_img)
    else
        throw("Rendering not supported on CPU")
        scene = hittable_list(StructArray(scene.spheres))
    end

    return scene, spectrum_img, camera
end

function production(parallel=true)
    scene, spectrum_img, camera = setup(parallel)

    @time_adapt invokelatest(render!, spectrum_img, scene, camera; samples_per_pixel=10, parallel=parallel)
    return spectrumToRGB(spectrum_img)
end

function test(parallel=false)
    scene, spectrum_img, camera = setup(parallel, 1920/10)

    @time_adapt invokelatest(render!, spectrum_img, scene, camera; samples_per_pixel=5, parallel=parallel) # invokelatest is hack so that latest verison of gpu_var() is used 

    spectrumToRGB(spectrum_img)
end

function claforte(parallel=true)
    scene, spectrum_img, camera = setup(parallel, 1920)

    @time_adapt invokelatest(render!, spectrum_img, scene, camera; samples_per_pixel=1000, parallel=parallel)
    return spectrumToRGB(spectrum_img)
end

function profile(parallel=:GPU)
    scene, spectrum_img, camera = setup(parallel, 1920/2)

    if parallel == :GPU 
        if CUDA.functional()
            @time_adapt CUDA.@profile invokelatest(render!, spectrum_img, scene, camera; samples_per_pixel=10, parallel=parallel)
        else
            error("CUDA is not functional so GPU rendering is not supported")
        end
    else
        error("This function is not intended for use on the CPU")
    end

    spectrumToRGB(spectrum_img)
end

# function profview_allocs(parallel=true)
#     scene, spectrum_img, camera = setup(parallel)

#     @profview_allocs render!(spectrum_img, scene, camera, samples_per_pixel=10, parallel=parallel)
#     return spectrumToRGB(spectrum_img)
# end

# using Profile, PProf
# function profile()
#     HittableList, spectrum_img, camera = setup(parallel, 10)

#     render!(spectrum_img, HittableList, camera, samples_per_pixel=10)

#     Profile.Allocs.clear(); 

#     Profile.Allocs.@profile sample_rate=1 render!(spectrum_img, scene, camera)

#     PProf.Allocs.pprof(from_c=false, webport=8080)
# end

using BenchmarkTools
function benchmark(;print=false, parallel=true)
    scene, spectrum_img, camera = setup(parallel)

    @match parallel begin
        :GPU => begin
            # display(@benchmark (CUDA.@sync render!($spectrum_img, $scene, $camera, samples_per_pixel=10, parallel=$parallel)))
            display(@benchmark (CUDA.@sync invokelatest($render!, $spectrum_img, $scene, $camera; samples_per_pixel=10, parallel=$parallel)))

            # https://github.com/JuliaCI/BenchmarkTools.jl/issues/127
            CUDA.reclaim()
        end
        :false => display(@benchmark render!($spectrum_img, $scene, $camera, samples_per_pixel=$10, parallel=$parallel))
        _ => display(@benchmark render!($spectrum_img, $scene, $camera, samples_per_pixel=$10, parallel=$parallel) teardown=sleep(1) seconds=20)
    end

    if print
        rgb_img = spectrumToRGB(spectrum_img)
        rgb_img |> display
    end 
    return nothing
end

function voxel_tracer(parallel=true, print=false)
    scene, spectrum_img, camera = setup(parallel, 1200, 12//8)

    # @time_adapt render!(spectrum_img, scene, camera, samples_per_pixel=10, parallel=parallel, max_depth=50)
    @match parallel begin
        :GPU => begin
            display(@benchmark (CUDA.@sync render!($spectrum_img, $scene, $camera, samples_per_pixel=$10, parallel=$parallel, max_depth=50)))

            # https://github.com/JuliaCI/BenchmarkTools.jl/issues/127
            CUDA.reclaim()
        end
        :false => display(@benchmark render!($spectrum_img, $scene, $camera, samples_per_pixel=$10, parallel=$parallel, max_depth=50))
        _ => display(@benchmark render!($spectrum_img, $scene, $camera, samples_per_pixel=$10, parallel=$parallel, max_depth=50) teardown=sleep(1) seconds=20)
    end
    if print
        rgb_img = spectrumToRGB(spectrum_img)
        rgb_img |> display
    end
    return nothing
end

# using Cthulhu
# @descend ray_color(Ray(), setup() |> first, 10)
# @device_code_warntype interactive=true test(:GPU)

# try
#     test(:GPU);
# catch err
#     code_typed(err, interactive=true)
# end