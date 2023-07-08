# This tries to stay faithful to the book's code
# using Revise
using Parameters, StaticArrays, LinearAlgebra, Images, StructArrays, SmartAsserts, CUDA, Random, MLStyle
using Core: LLVMPtr

if CUDA.functional()
    CUDA.allowscalar(false)
    const var"@time_adapt" = CUDA.var"@time"
    SmartAsserts.set_enabled(false) # crashes gpu compiler if enabled
    # CUDA.math_mode!(CUDA.FAST_MATH; precision=:Float16)
else
    const var"@time_adapt" = var"@time"
    # SmartAsserts.set_enabled(false)
end

const F = Float32

### TYPES
const VE        = Base.VecElement
const Vec{N, T} = NTuple{N, VE{T}}
# https://discourse.julialang.org/t/help-defining-masked-vload-and-vstore-operations-for-sarrays-or-other-isbits-structs-using-llvmcall/17291
to_tup(v::Vec{N}) where N = ntuple(i->v[i].value, N)

LLVMPtr{T}(x::LLVMPtr{K, A}) where {T,A,K} = reinterpret(LLVMPtr{T,A}, x)

const Point = SVector{3, F} # We use F so we dont have points of different types, otherwise Ray, Sphere become parametric types and HittableList needs to be contructed carefully to ensure same types everywhere. (can we somehow promote it)
const Spectrum = SVector{3, F}

StructArrays.staticschema(::Type{Point}) = NamedTuple{(:x, :y, :z), fieldtypes(Point)...}
StructArrays.component(m::Point, key::Symbol) = getproperty(m, key)
StructArrays.createinstance(::Type{Point}, args...) = Point(args)

@with_kw struct Ray
    origin::Point = zeros(Point)
    direction::Point = Point(0, 1, 0)
    @smart_assert isapprox(norm(direction), 1, atol=F(1e-2)) "Ray direction not normalised for Ray with origin $origin and direction $direction"
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

abstract type Primitive end

@kwdef struct Sphere <: Primitive
    centre_radius::SVector{4, F} = SVector{4, F}(0, 0, 0, 1//2)
    material::Material = Lambertian()
end
function Sphere(centre, radius, material)
    Sphere(SVector{4, F}(centre..., radius), material)
end
@fastmath sphere_normal(centre, radius, position) = (position - centre) / (radius)

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
@inline function StructArrays.component(s::StructArray{BufferData}, key::Symbol)
    if key == :attenuation
        map(first, getfield(StructArrays.components(s), :attenuation_and_pixel_index))
    elseif key == :pixel_index
        map(last, getfield(StructArrays.components(s), :attenuation_and_pixel_index))
    else
        getfield(StructArrays.components(s), key)
    end
end

struct HitRecord
    t::F
    sphere_index::UInt32
end

### General Functions

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

@inline @fastmath function random_in_unit_disk()
    while true
        p = rand(SVector{2, F}) * 2 .- 1
        if norm2(p) < 1
            return p
        end
    end
end

@inline @fastmath function random_in_unit_sphere()
    # while true
    #     sample = rand(Point) * 2 .- 1
    #     if norm2(sample) < 1
    #         return sample
    #     end
    # end
    z = 1 - 2 * rand(F)
    r = sqrt(max(0, 1 - z*z))
    ϕ = 2 * π * rand(F)
    sinϕ, cosϕ = sincos(ϕ)
    return Point(r * cosϕ, r * sinϕ, z) * cbrt(rand(F))
end

@inline @fastmath function random_on_unit_sphere_surface()
    # while true
    #     sample = rand(Point) * 2 .- 1
    #     length2 = norm2(sample)
    #     if length2 < 1
    #         return sample * CUDA.rsqrt(length2)
    #     end
    # end
    # https://github.com/mmp/pbrt-v4/blob/c4baa534042e2ec4eb245924efbcef477e096389/src/pbrt/util/sampling.h#L391
    z = 1 - 2 * rand(F)
    r = sqrt(max(0, 1 - z*z))
    ϕ = 2 * π * rand(F)
    sinϕ, cosϕ = sincos(ϕ)
    return Point(r * cosϕ, r * sinϕ, z)
end

### Materials

@fastmath function reflect(ray, n⃗, fuzz=0)
    direction = ray.direction - 2(ray.direction ⋅ n⃗) * n⃗

    # Is branching worth it? Does const prop eliminate this
    if fuzz != 0
        direction += fuzz * random_in_unit_sphere()
    end

    return normalize_fast(direction)
end

@fastmath function metal(ray, n⃗, fuzz=0)
    @inline scattered = reflect(ray, n⃗, fuzz)
    return scattered, scattered ⋅ n⃗ > 0 # check if scattered direction is into the object
end

@fastmath function shick(cosθ, ior_ratio)
    r0 = ((1 - ior_ratio) / (1 + ior_ratio))^2
    return r0 + (1 - r0) * (1 - cosθ)^5
end

@fastmath function glass(ray, n⃗, ior)
    air_ior = 1

    cosθ = - ray.direction ⋅ n⃗
    into = cosθ > 0

    sinθ = sqrt(max(1 - cosθ^2, zero(F)))
    @smart_assert !isnan(sinθ)
    
    if into
        ior_ratio = air_ior / ior
    else
        ior_ratio = ior / air_ior
        n⃗ *= -1
        cosθ *= -1
    end

    if (ior_ratio * sinθ > 1) || (rand(F) < shick(cosθ, ior_ratio))
        return reflect(ray, n⃗)
    else
        Rperp = ior_ratio * (ray.direction + cosθ * n⃗)
        Rpar = - sqrt(max(1 - norm2(Rperp), zero(F))) * n⃗
        @smart_assert !isnan(Rpar)

        return normalize_fast(Rperp + Rpar)
    end
end

@fastmath function lambertian(n⃗) 
    random = random_on_unit_sphere_surface() # voxel_tracer uses random_in_unit_sphere which is about 5% faster
    vector = n⃗ + random

    if all(vector .≈ 0)
        vector = n⃗
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
    ptr = LLVMPtr{Float32}(base_ptr) + offset*sizeof(Ray)
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

### Render Loop

@inline @fastmath function find_scene_intersection(r, tmin::F, tmax::F)
    minHitT = tmax
    minIndex = UInt32(0)

    for i in UInt32(1):UInt32(length(gpu_material_type()))
        cx, cy, cz, radius = to_tup(unsafe_cached_load(LLVMPtr{Vec{4, F}}(pointer(gpu_centre_radius())), i, Val(16)))

        cox = cx - r.origin.x
        coy = cy - r.origin.y
        coz = cz - r.origin.z

        neg_half_b = r.direction.x * cox + r.direction.y * coy 
        neg_half_b += r.direction.z * coz

        c = cox*cox + coy*coy 
        c += coz*coz 
        c -= radius^2

        quarter_discriminant = neg_half_b^2 - c

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

    return HitRecord(minHitT, minIndex)
end

function intersect_kernel!(data_for_scattering, rays, rays_size, tmin, tmax)
    index = (blockIdx().x - Int32(1)) * blockDim().x + threadIdx().x
    stride = gridDim().x * blockDim().x

    i = index
    while i <= rays_size
        ray = unsafe_cached_load_vectorized(pointer(rays), i)

        # ray = rays[i]
        data_for_scattering[i] = find_scene_intersection(ray, tmin, tmax)

        i += stride
    end

    return nothing
end

@inbounds @fastmath function scatter!(img, next_state, current_state, next_state_index, hit_record, max_depth)
    pixel_index = current_state.pixel_index
    r = current_state.ray

    if hit_record.sphere_index == 0 # nothing hit
        @smart_assert all(world_color(r) .>= 0)
        atomic_add!(img, pixel_index, current_state.attenuation .* world_color(r))
    else
        position = r(hit_record.t)
        cx, cy, cz, radius = to_tup(unsafe_cached_load(LLVMPtr{Vec{4, F}}(pointer(gpu_centre_radius())), hit_record.sphere_index, Val(16)))
        @inline normal = sphere_normal(Point(cx, cy, cz), radius, position)
        @smart_assert isapprox(norm(normal), 1; atol=F(1e-2)) normal

        material_data = to_tup(unsafe_cached_load(LLVMPtr{Vec{4, F}}(pointer(gpu_material_data())), hit_record.sphere_index, Val(16)))
        material_type = gpu_material_type()[hit_record.sphere_index]
        material = Material(material_type, material_data)

        if material.type == 0
            direction = lambertian(normal)
            scatter_again = true
        elseif material.type == 1
            ior = material.data[4]
            direction = glass(r, normal, ior)
            scatter_again = true
        else # not doing a check here is important about 10%, goes from 38ms to 34.5ms (i.e. on par with expronicon)
            fuzz = material.data[4]
            direction, scatter_again = metal(r, normal, fuzz)
        end

        # if scatter_again
            attenuation = Spectrum(@view material.data[1:3])

            new_attenuation = ifelse(scatter_again, current_state.attenuation .* attenuation, zeros(Spectrum))

            if current_state.depth == max_depth
                atomic_add!(img, pixel_index, new_attenuation)
            elseif scatter_again
                old_index = CUDA.atomic_add!(pointer(next_state_index), Int32(1))

                unsafe_store!(LLVMPtr{Vec{2, F}}(pointer(next_state.ray, old_index)), (position[1], position[2]), 1, Val(8))
                unsafe_store!(LLVMPtr{Vec{2, F}}(pointer(next_state.ray, old_index) + 2*sizeof(Float32)), (position[3], direction[1]), 1, Val(8))
                unsafe_store!(LLVMPtr{Vec{2, F}}(pointer(next_state.ray, old_index) + 4*sizeof(Float32)), (direction[2], direction[3]), 1, Val(8))
                unsafe_store!(LLVMPtr{Vec{4, F}}(pointer(next_state.attenuation_and_pixel_index)), (new_attenuation..., reinterpret(Float32, pixel_index)), old_index, Val(16))
                next_state.depth[old_index] = current_state.depth + 1
            end
        # end
    end

    return nothing
end
@inbounds @fastmath function scatter!(img, next_state, current_state, i, next_state_index, hit_record, max_depth)
    r_attenuation, pixel_index = unsafe_load(pointer(current_state.attenuation_and_pixel_index, i))

    if hit_record.sphere_index == 0 # nothing hit
        r = Ray(zeros(Point), Point(0, 0, current_state.ray[i].direction.z))
        @smart_assert all(world_color(r) .>= 0)
        atomic_add!(img, pixel_index, r_attenuation .* world_color(r))
    else
        r = unsafe_cached_load_vectorized(pointer(current_state.ray), i)

        position = r(hit_record.t)
        cx, cy, cz, radius = to_tup(unsafe_cached_load(LLVMPtr{Vec{4, F}}(pointer(gpu_centre_radius())), hit_record.sphere_index, Val(16)))
        @inline normal = sphere_normal(Point(cx, cy, cz), radius, position)
        @smart_assert isapprox(norm(normal), 1; atol=F(1e-2)) normal

        material_data = to_tup(unsafe_cached_load(LLVMPtr{Vec{4, F}}(pointer(gpu_material_data())), hit_record.sphere_index, Val(16)))
        material_type = gpu_material_type()[hit_record.sphere_index]
        material = Material(material_type, material_data)

        if material.type == 0
            direction = lambertian(normal)
            scatter_again = true
        elseif material.type == 1
            ior = material.data[4]
            direction = glass(r, normal, ior)
            scatter_again = true
        else # not doing a check here is important about 10%, goes from 38ms to 34.5ms (i.e. on par with expronicon)
            fuzz = material.data[4]
            direction, scatter_again = metal(r, normal, fuzz)
        end

        # if scatter_again
            attenuation = Spectrum(@view material.data[1:3])

            new_attenuation = ifelse(scatter_again, r_attenuation .* attenuation, zeros(Spectrum))

            if current_state.depth[i] == max_depth
                atomic_add!(img, pixel_index, r_attenuation .* world_color(r))
            elseif scatter_again
                old_index = CUDA.atomic_add!(pointer(next_state_index), Int32(1))

                unsafe_store!(LLVMPtr{Vec{2, F}}(pointer(next_state.ray, old_index)), (position[1], position[2]), 1, Val(8))
                unsafe_store!(LLVMPtr{Vec{2, F}}(pointer(next_state.ray, old_index) + 2*sizeof(Float32)), (position[3], direction[1]), 1, Val(8))
                unsafe_store!(LLVMPtr{Vec{2, F}}(pointer(next_state.ray, old_index) + 4*sizeof(Float32)), (direction[2], direction[3]), 1, Val(8))
                unsafe_store!(LLVMPtr{Vec{4, F}}(pointer(next_state.attenuation_and_pixel_index)), (new_attenuation..., reinterpret(Float32, pixel_index)), old_index, Val(16))
                next_state.depth[old_index] = current_state.depth[i] + 1
            end
        # end
    end

    return nothing
end
@inbounds function scatter_kernel!(img, next_state, current_state, data_for_scattering, max_depth, next_state_index, current_state_size)
    index = (blockIdx().x - Int32(1)) * blockDim().x + threadIdx().x
    stride = gridDim().x * blockDim().x

    # Only for Nsight compute prevents out of bound error
    # if index == 1
    #     next_state_index[] = 1
    # end

    # for i = index:stride:current_state_size
        # scatter!(img, next_state, current_state[i], next_state_index, data_for_scattering[i], max_depth)
    # end

    i = index
    # if i <= current_state_size
    while i <= current_state_size
        hit_record = unsafe_cached_load_vectorized(pointer(data_for_scattering, i))
        scatter!(img, next_state, current_state, i, next_state_index, hit_record, max_depth)
        # scatter!(img, next_state, current_state[i], next_state_index, data_for_scattering[i], max_depth)
        i += stride
    end

    return nothing
end
@inbounds function intersect_and_scatter_kernel!(img, next_state, current_state, max_depth, next_state_index, rays_size, tmin, tmax)
    index = (blockIdx().x - UInt32(1)) * blockDim().x + threadIdx().x
    stride = gridDim().x * blockDim().x

    # Only for Nsight compute prevents out of bound error
    # if index == 1
    #     next_state_index[] = 1
    # end

    i = index
    while i <= rays_size
        ray = unsafe_cached_load_vectorized(pointer(current_state.ray), i)

        hit_record = find_scene_intersection(ray, tmin, tmax)
        scatter!(img, next_state, current_state, i, next_state_index, hit_record, max_depth)
        i += stride
    end

    return nothing
end

@fastmath function generate_ray(pixel_position, camera)
    random_pixel_position = pixel_position + rand(F) * camera.right + rand(F) * camera.down

    defocus_random = camera.lens_radius * random_in_unit_disk()
    defocus_offset = defocus_random[1] * camera.u + defocus_random[2] * camera.v

    return Ray(camera.pinhole_location + defocus_offset, normalize_fast(random_pixel_position - camera.pinhole_location - defocus_offset))
end
function generate_rays_kernel!(current_state, camera, column_size, current_state_size, offset, samples_per_pixel, index_offset=Int32(0))
    index = (blockIdx().x - Int32(1)) * blockDim().x + threadIdx().x
    stride = gridDim().x * blockDim().x

    for i = index:stride:current_state_size
        img_linear_index = UInt32(1) + UInt32((i - UInt32(1) + offset) ÷ samples_per_pixel)

        y = ceil(UInt32, img_linear_index / column_size)
        x = mod1(img_linear_index, column_size)

        ray = generate_ray(pixel_world_position(camera, x, y), camera)
        # current_state[i + index_offset] = BufferData(ray, ones(Spectrum), UInt32(img_linear_index), 1)
        unsafe_store!(LLVMPtr{Vec{2, F}}(pointer(current_state.ray, i + index_offset)), (ray.origin[1], ray.origin[2]), 1, Val(8))
        unsafe_store!(LLVMPtr{Vec{2, F}}(pointer(current_state.ray, i + index_offset) + 2*sizeof(Float32)), (ray.origin[3], ray.direction[1]), 1, Val(8))
        unsafe_store!(LLVMPtr{Vec{2, F}}(pointer(current_state.ray, i + index_offset) + 4*sizeof(Float32)), (ray.direction[2], ray.direction[3]), 1, Val(8))
        unsafe_store!(LLVMPtr{Vec{4, F}}(pointer(current_state.attenuation_and_pixel_index)), (ones(Spectrum)..., reinterpret(Float32, UInt32(img_linear_index))), i + index_offset, Val(16))
        current_state.depth[i + index_offset] = 1
    end

    return nothing
end
@inbounds function generate_and_intersect_and_scatter_kernel!(img, next_state, max_depth, next_state_index, rays_size, tmin, tmax, camera, offset, samples_per_pixel, column_size)
    index = (blockIdx().x - Int32(1)) * blockDim().x + threadIdx().x
    stride = gridDim().x * blockDim().x

    # Only for Nsight compute prevents out of bound error
    # if index == 1
    #     next_state_index[] = 1
    # end

    i = index
    while i <= rays_size
        img_linear_index = UInt32(1) + UInt32((i - UInt32(1) + offset) ÷ samples_per_pixel)

        y = ceil(Int32, img_linear_index / column_size)
        x = mod1(img_linear_index, column_size)

        ray = generate_ray(pixel_world_position(camera, x, y), camera)
        current_state = BufferData(ray, ones(Spectrum), img_linear_index, 1)

        hit_record = find_scene_intersection(ray, tmin, tmax)
        scatter!(img, next_state, current_state, next_state_index, hit_record, max_depth)
        i += stride
    end

    return nothing
end

function undef_array(::Type{T}, sz; unwrap::F = StructArrays.alwaysfalse) where {T, F}
    if unwrap(T)
        return StructArrays.buildfromschema(typ -> undef_array(typ, sz; unwrap = unwrap), T)
    else
        return CuArray{T}(undef, sz)
    end
end

function render!(img, HittableList, camera=Camera(); tmin=F(1e-4), tmax=F(Inf), samples_per_pixel=100, max_depth=16, parallel=:GPU)
    if parallel == :GPU
        rays_traced = 0

        number_of_rays = samples_per_pixel*length(img)

        max_state_size = 10^7
        state_size = min(number_of_rays, max_state_size)

        current_state = StructArrays.buildfromschema(typ -> undef_array(typ, (state_size,)), BufferData);
        next_state = StructArrays.buildfromschema(typ -> undef_array(typ, (state_size,)), BufferData);
        data_for_scattering = CuArray{HitRecord}(undef, state_size)

        number_of_rays_generated::UInt32 = 0

        current_state_size = Int32(min(number_of_rays - number_of_rays_generated, state_size))
        if current_state_size + 1 > typemax(UInt32)
            throw("Overflow")
        end
        if number_of_rays > typemax(UInt32)
            throw("Overflow 2")
        end
        next_state_index = CuArray{Int32}([1])

        _generate_rays_kernel! = @cuda launch=false always_inline=true generate_rays_kernel!(current_state, camera, UInt32(size(img)[1]), current_state_size, number_of_rays_generated, UInt32(samples_per_pixel))
        _generate_rays_kernel!_config = launch_configuration(_generate_rays_kernel!.fun)
        
        _intersect_kernel! = @cuda launch=false always_inline=true intersect_kernel!(data_for_scattering, current_state.ray, state_size, tmin, tmax)
        _intersect_kernel!_config = launch_configuration(_intersect_kernel!.fun)

        _scatter_kernel! = @cuda launch=false always_inline=true scatter_kernel!(img, next_state, current_state, data_for_scattering, max_depth, next_state_index, current_state_size)
        _scatter_kernel!_config = launch_configuration(_scatter_kernel!.fun)

        _intersect_and_scatter_kernel! = @cuda launch=false always_inline=true intersect_and_scatter_kernel!(img, next_state, current_state, max_depth, next_state_index, current_state_size, tmin, tmax)
        _intersect_and_scatter_kernel!_config = launch_configuration(_intersect_and_scatter_kernel!.fun)

        _generate_and_intersect_and_scatter_kernel! = @cuda launch=false always_inline=true generate_and_intersect_and_scatter_kernel!(img, next_state, max_depth, next_state_index, current_state_size, tmin, tmax, camera, number_of_rays_generated, samples_per_pixel, size(img)[1])
        _generate_and_intersect_and_scatter_kernel!_config = launch_configuration(_generate_and_intersect_and_scatter_kernel!.fun)

        @time_adapt begin
            current_state_size = UInt32(min(number_of_rays - number_of_rays_generated, state_size))

            # _generate_rays_kernel!_threads = min(current_state_size, _generate_rays_kernel!_config.threads)
            # _generate_rays_kernel!_blocks = cld(current_state_size, _generate_rays_kernel!_threads)
            # _generate_rays_kernel!(current_state, camera, size(img)[1], current_state_size, number_of_rays_generated, samples_per_pixel; threads=_generate_rays_kernel!_threads, blocks=_generate_rays_kernel!_blocks)

            _generate_and_intersect_and_scatter_kernel!_threads = min(current_state_size, _generate_and_intersect_and_scatter_kernel!_config.threads)
            _generate_and_intersect_and_scatter_kernel!_blocks = cld(current_state_size, _generate_and_intersect_and_scatter_kernel!_threads)
            _generate_and_intersect_and_scatter_kernel!(img, current_state, max_depth, next_state_index, current_state_size, tmin, tmax, camera, number_of_rays_generated, samples_per_pixel, size(img)[1]; threads=_generate_and_intersect_and_scatter_kernel!_threads, blocks=_generate_and_intersect_and_scatter_kernel!_blocks)

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
                CUDA.@sync _intersect_and_scatter_kernel!(img, next_state, current_state, max_depth, next_state_index, current_state_size, tmin, tmax, number_of_rays_generated; threads=_intersect_and_scatter_kernel!_threads, blocks=_intersect_and_scatter_kernel!_blocks)

                # _intersect_kernel!_threads = min(current_state_size, _intersect_kernel!_config.threads)
                # _intersect_kernel!_blocks = cld(current_state_size, _intersect_kernel!_threads)
                # CUDA.@sync _intersect_kernel!(data_for_scattering, current_state.ray, current_state_size, tmin, tmax; threads=_intersect_kernel!_threads, blocks=_intersect_kernel!_blocks)
                
                # _scatter_kernel!_threads = min(current_state_size, _scatter_kernel!_config.threads)
                # _scatter_kernel!_blocks = cld(current_state_size, _scatter_kernel!_threads)
                # CUDA.@sync _scatter_kernel!(img, next_state, current_state, data_for_scattering, max_depth, next_state_index, current_state_size, number_of_rays_generated; threads=_scatter_kernel!_threads, blocks=_scatter_kernel!_blocks)
                
                tmp = current_state;
                current_state = next_state;
                next_state = tmp;
                
                rays_traced += current_state_size
                current_state_size = CUDA.@allowscalar next_state_index[] - Int32(1)
                CUDA.@allowscalar next_state_index[] = Int32(1)
            end

            img ./= samples_per_pixel
        end
    end

    println(rays_traced)

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
        scene = hittable_list((centre_radius=(stack(x -> [x[i] for i in 1:4], scene.spheres.centre_radius)), material=(scene.spheres.material)))
        # if gpu_centre_radius() == 0
        #     for var in [:centre_radius]
        #         val = getfield(scene.spheres, var) |> Array |> vec
        #         gpu_var = Symbol("gpu_$var")
        #         @eval @inline @generated function $gpu_var()
        #             Expr(:call, $(typeof(val)), $(pointer(val)), $(size(val)))
        #         end
        #     end
        # end
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

    @time_adapt render!(spectrum_img, scene, camera, samples_per_pixel=10, parallel=parallel, max_depth=50)
    # @match parallel begin
    #     :GPU => display(@benchmark (CUDA.@sync render!($spectrum_img, $scene, $camera, samples_per_pixel=$10, parallel=$parallel, max_depth=50)))
    #     :false => display(@benchmark render!($spectrum_img, $scene, $camera, samples_per_pixel=$10, parallel=$parallel, max_depth=50))
    #     _ => display(@benchmark render!($spectrum_img, $scene, $camera, samples_per_pixel=$10, parallel=$parallel, max_depth=50) teardown=sleep(1) seconds=20)
    # end
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