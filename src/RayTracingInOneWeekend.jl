# This tries to stay faithful to the book's code
using Revise
using Parameters, StaticArrays, LinearAlgebra, Images, SIMD, StructArrays, MLStyle, SmartAsserts, KernelAbstractions, CUDA
using Expronicon.ADT: @adt
using Adapt
# import CUDA.rand

CUDA.allowscalar(false)

# SmartAsserts.set_enabled(false)

import SmartAsserts.@smart_assert
macro smart_assert(ex, msg=nothing)
    if !SmartAsserts._ENABLED[]
        return :(nothing)
    end

    has_msg = msg !== nothing
    r_ex = SmartAsserts._show_assertion(ex)

    quote
        (result, reason) = $r_ex
        if !result
            error_msg = $has_msg ? "$($(esc(msg)))\nCaused by $reason" : reason
            throw(AssertionError(error_msg))
        end
    end |> Base.remove_linenums!
end

using GPUArrays
import Base.allequal

allequal(x) = true
allequal(x, y, z...) = x == y && allequal(y, z...)

function Base.map(f, x::GPUArrays.BroadcastGPUArray, xs::StaticArray...)
    # if argument sizes match, their shape needs to be preserved
    xs = (x, xs...)
    if allequal(size.(xs)...)
         return f.(xs...)
    end

    # if not, treat them as iterators
    indices = LinearIndices.(xs)
    common_length = minimum(length.(indices))

    # construct a broadcast to figure out the destination container
    ElType = Broadcast.combine_eltypes(f, xs)
    isbitstype(ElType) || error("Cannot map function returning non-isbits $ElType.")
    dest = similar(x, ElType, common_length)

    return map!(f, dest, xs...)
end

Fast = false

const F = Float32
const N = 8 # vector width

struct CuSVector{size, T<:Number, B} <: AbstractGPUArray{T, 1}
    data::CuArray{T, 1, B}
    CuSVector(x::CuArray{T, 1, B}) where {T, B} = new{length(x), T, B}(x)
    CuSVector{size, T}(x::CuArray{T, 1, B}) where {size, T, B} = new{size, T, B}(x)
    CuSVector{size, T, B}(x::CuArray{T, 1, B}) where {size, T, B} = new{size, T, B}(x)
end
CuSVector(x::CuSVector) = x
CuSVector(x::AbstractArray) = CuSVector(CuArray(x))
CuSVector(x::Tuple) = CuSVector(CuArray([x...]))
CuSVector(x...) = CuSVector(CuArray([x...]))

CuSVector{size, T}(x::CuSVector) where {size, T} = x
CuSVector{size, T}(x::AbstractArray) where {size, T} = CuSVector{size, T}(CuArray{T}(x))
CuSVector{size, T}(x::Tuple) where {size, T} = CuSVector{size, T}(CuArray{T}([x...]))
CuSVector{size, T}(x::Vararg{Number, size}) where {size, T} = CuSVector{size, T}(CuArray{T}([x...]))

CuSVector{size, T, B}(x::CuSVector) where {size, T, B} = x
CuSVector{size, T, B}(x::AbstractArray) where {size, T, B} = CuSVector{size, T, B}(CuArray{T, 1, B}(x))
CuSVector{size, T, B}(x::Tuple) where {size, T, B} = CuSVector{size, T, B}(CuArray{T, 1, B}([x...]))
CuSVector{size, T, B}(x::Vararg{Number, size}) where {size, T, B} = CuSVector{size, T, B}(CuArray{T, 1, B}([x...]))
Adapt.@adapt_structure CuSVector

function Adapt.adapt_structure(::GPUArrays.ToArray, x::CuSVector)
    Array(x.data)
end

# Base.size(::CuSVector{size}) where size = (size,)

# Base.getindex(v::CuSVector, i::Int) = v.data[i]
# Base.getindex(v::CuSVector, I::Vararg{Int}) = v.data[I]

for f ∈ (:size, :getindex, :setindex!)
    @eval Base.$f(x::CuSVector, args...) = $f(x.data, args...)
end
Base.getindex(x::CuSVector) = x.data[]
Base.getindex(x::CuSVector, I::Integer) = x.data[I]

using Base.Broadcast: BroadcastStyle, Broadcasted
struct CuSVectorStyle{N} <: AbstractGPUArrayStyle{N} end
CuSVectorStyle(::Val{N}) where N = CuSVectorStyle{size}()
CuSVectorStyle{M}(::Val{N}) where {N,M} = CuSVectorStyle{N}()

Base.BroadcastStyle(::Type{<:CuSVector{size}}) where size = CuSVectorStyle{size}()
Base.similar(::Broadcasted{CuSVectorStyle{size}}, ::Type{T}) where {size, T} = CuSVector(CuArray{T}(undef, size))
Base.similar(::Broadcasted{CuSVectorStyle{size}}, ::Type{T}, N) where {size, T} = CuSVector(CuArray{T}(undef, size))

# Base.Broadcast.instantiate(bc::Broadcasted{CuSVectorStyle{size}}) where size = Broadcasted{CuSVectorStyle{size}}(bc.f, bc.args, nothing)
# broadcasting type ctors isn't GPU compatible
# Broadcast.broadcasted(::CuSVector{size, N}, f::Type{T}, args...) where {size, N, T} =
#     Broadcasted{CuSVectorStyle{size, N}}((x...) -> T(x...), args, nothing)

function Base.copyto!(dest::CuSVector, bc::Broadcasted{<:CuSVectorStyle{N}}) where {N}
    copyto!(dest.data, Broadcasted{CUDA.CuArrayStyle{1}}(bc.f, map(x -> x isa CuSVector ? x.data : x, bc.args), bc.axes))
    return dest
end

function GPUArrays.mapreducedim!(f, op, R::CuSVector,
    bc::Broadcast.Broadcasted;
    init=nothing)
    GPUArrays.mapreducedim!(f, op, R.data, Broadcasted{CUDA.CuArrayStyle{1}}(bc.f, map(x -> x isa CuSVector ? x.data : x, bc.args), bc.axes); init)
end

Base.one(::Type{CuSVector{size}}) where {size} = CuSVector{size, Float32}(CUDA.ones(size))
Base.one(::Type{CuSVector{size, T}}) where {size, T} = CuSVector{size, T}(CUDA.ones(T, size))
Base.one(::Type{CuSVector{size, T, B}}) where {size, T, B} = CuSVector{size, T, B}(CUDA.ones(T, size))

Base.zero(::Type{CuSVector{size}}) where {size} = CuSVector{size, Float32}(CUDA.zeros(size))
Base.zero(::Type{CuSVector{size, T}}) where {size, T} = CuSVector{size, T}(CUDA.zeros(T, size))
Base.zero(::Type{CuSVector{size, T, B}}) where {size, T, B} = CuSVector{size, T, B}(CUDA.zeros(T, size))

Base.zeros(::Type{CuSVector{size}}, dims...) where {size} = CUDA.zeros((size, dims...)...)
Base.zeros(::Type{CuSVector{size, T}}, dims...) where {size, T} = CUDA.zeros(T, (size, dims...)...)
Base.zeros(::Type{CuSVector{size, T}}, dims::Vararg{Union{Integer, AbstractUnitRange}}) where {size, T} = CUDA.zeros(T, (size, dims...)...)
Base.zeros(::Type{CuSVector{size, T, B}}, dims::Vararg{Union{Integer, AbstractUnitRange}}) where {size, T, B} = CUDA.zeros(T, (size, dims...)...)

Base.rand(::Type{CuSVector{size}}) where {size} = CuSVector{size, Float32}(CUDA.rand(size))
Base.rand(::Type{CuSVector{size, T}}) where {size, T} = CuSVector{size, T}(CUDA.rand(T, size))
Base.rand(::Type{CuSVector{size, T, B}}) where {size, T, B} = CuSVector{size, T, B}(CUDA.rand(T, size))

# Base.convert(::Type{CuSVector{size, T}}, x::Type{CuSVector{size, F}}) where {size, T, F} = CuSVector{size, F}(convert(F, x.data))

let dimension_names = QuoteNode.([:x, :y, :z, :w])
    body = :(getfield(v, name))
    for (i,dim_name) in enumerate(dimension_names)
        body = :(name === $(dimension_names[i]) ? getfield(v, :data)[$i] : $body)
        @eval @inline function Base.getproperty(v::CuSVector{$i},
                                                name::Symbol)
            $body
        end
    end
end

@inline @fastmath LinearAlgebra.norm(v::CuSVector) = sqrt(v.data ⋅ v.data)
@inline @fastmath LinearAlgebra.normalize(v::CuSVector) = typeof(v)(v.data * (1 / norm(v)))
@inline @fastmath normalize_fast(v::CuSVector) = typeof(v)(v.data * (1 / norm(v)))

const Point = CuSVector{3, F, CUDA.Mem.DeviceBuffer} # We use F so we dont have points of different types, otherwise Ray, Sphere become parametric types and HittableList needs to be contructed carefully to ensure same types everywhere. (can we somehow promote it)
const Spectrum = CuSVector{3, F, CUDA.Mem.DeviceBuffer}

@with_kw struct Ray
    origin::Point = zero(Point)
    direction::Point = Point(0, 1, 0)
    @smart_assert isapprox(norm(direction), 1, atol=1e-2) "Ray direction not normalised for Ray with origin $origin and direction $direction"
end
@inline (ray::Ray)(t) = ray.origin + t * ray.direction

Adapt.@adapt_structure Ray

@adt Material begin
    struct Lambertian
        attenuation::Spectrum = one(Spectrum)
    end
    struct Dielectric
        attenuation::Spectrum = one(Spectrum)
        ior::F = 3//2
    end
    struct Metal
        attenuation::Spectrum = one(Spectrum)
        fuzz::F = 0
    end
end

struct hit_record
    p::Point
    normal::Point
    material::Material
    t::F
end

abstract type Primitive end

@kwdef struct Sphere <: Primitive
    centre::Point = zero(Point)
    radius::F = 1//2
    material::Material = Material.Lambertian()
end

@fastmath sphere_normal(sphere, position) = (position - sphere.centre) / sphere.radius

function StructArrays.staticschema(::Type{Point})
    # Define the desired names and eltypes of the "fields"
    return NamedTuple{(:x, :y, :z), Tuple{F, F, F}}
end

StructArrays.component(m::Point, key::Symbol) = getproperty(m, key)
StructArrays.createinstance(::Type{Point}, args...) = Point([args...])

@kwdef struct hittable_list{F}
    spheres::F = []
end

imagesize(height, aspectRatio) = (Int(height), round(Int, height / aspectRatio))

struct Camera{T<:Real}
    u::Point
    v::Point

    right::Point
	down::Point

    upper_left_corner::Point
	pinhole_location::Point

    lens_radius::F

    function Camera(nx=400, ny=imagesize(nx, 16/9)[2], pinhole_location=Point(0, 0, 0), lookat=Point(0, 1, 0), up=Point(0, 0, 1), vfov=2atand(1), lens_radius::T=0, focus_distance=1) where T
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
    
        return new{T}(u, v, right, down, upper_left_corner, pinhole_location, lens_radius)
    end
end

@fastmath pixelWorldPosition(camera, index) = camera.upper_left_corner + (index[2] - 1) * camera.right + (index[1] - 1) * camera.down

@fastmath pixelWorldPosition(camera, x, y) = camera.upper_left_corner + (y - 1) * camera.right + (x - 1) * camera.down

@inline @fastmath norm2(x) = x ⋅ x

@inline @fastmath normalize_fast(x) = x * (1 / sqrt(norm2(x)))

function world_color(ray)
    interp = CUDA.@allowscalar (ray.direction.z + 1) / 2
    return (1 - interp) * Spectrum(1, 1, 1) + interp * Spectrum(0.5, 0.7, 1.0) # Spectrum{3, Float64} instead of Spectrum{3, F} saves 1mb, 0.2s for nx=50. 
end

@static if Fast
    @inline @fastmath random_in_unit_disk() = normalize_fast(SVector{2, F}(randn(), randn()))

    @inline @fastmath function random_in_unit_sphere()
        while true
            sample = Point(rand(F) * 2 - 1, rand(F) * 2 - 1, rand(F) * 2 - 1)
            if norm2(sample) < 1
                return sample
            end
        end
    end

    @inline @fastmath random_on_unit_sphere_surface() = normalize_fast(Point(randn(), randn(), randn()))
else
    @inline @fastmath function random_in_unit_disk()
        while true
            p = CuSVector(CUDA.rand(F, 2) * 2 .- 1)
            # p = rand(SVector{2, F}) * 2 .- 1
            if norm2(p) < 1
                return p
            end
        end
    end

    @inline @fastmath function random_in_unit_sphere()
        while true
            sample = Point(CUDA.rand(F, 3) * 2 .- 1)
            # sample = @inline rand(Point) * 2 .- 1
            if norm2(sample) < 1
                return sample
            end
        end
    end

    @inline @fastmath function random_on_unit_sphere_surface()
        tmp = random_in_unit_sphere()
        return normalize_fast(tmp)
    end
end

@fastmath function reflect(ray, n⃗, fuzz=0)
    direction = ray.direction - 2(ray.direction ⋅ n⃗) * n⃗

    # Is branching worth it?
    if fuzz != 0
        direction += fuzz * random_in_unit_sphere()
    end

    return normalize_fast(direction)
end

@fastmath function shick(cosθ, ior_ratio)
    r0 = ((1 - ior_ratio) / (1 + ior_ratio))^2
    return r0 + (1 - r0) * (1 - cosθ)^5
end

@fastmath function metal(ray, n⃗, fuzz=0)
    @inline scattered = reflect(ray, n⃗, fuzz)
    return scattered, scattered ⋅ n⃗ > 0 # check if scatterd direction is into the object
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

@fastmath function lambertian(ray, n⃗) 
    random = random_on_unit_sphere_surface()
    vector = n⃗ + random

    if all(vector .≈ 0)
        vector = n⃗
    end
    
    direction = normalize_fast(vector)
    return direction
end

const initialRecord = hit_record(zero(Point), normalize(one(Point)), Sphere().material, Inf)

@fastmath function findSceneIntersection(r, hittable_list, tmin, tmax)
    CUDA.allowscalar() do
        minHitT, i = findmin(hittable_list.spheres) do sphere
            cox = sphere.centre.x - r.origin.x
            coy = sphere.centre.y - r.origin.y
            coz = sphere.centre.z - r.origin.z

            co = sphere.centre - r.origin

            neg_half_b = r.direction ⋅ co

            c = norm2(co) .- sphere.radius * sphere.radius

            quarter_discriminant = neg_half_b^2 - c
            isDiscriminantPositive = quarter_discriminant > 0

            if isDiscriminantPositive
                @fastmath sqrtd = sqrt(quarter_discriminant) # When using fastmath, negative values just give 0
        
                root = neg_half_b - sqrtd
                root2 = neg_half_b + sqrtd

                tmp = ifelse(root > tmin, root, root2)
                return ifelse(tmp > tmin, tmp, tmax)
            end

            return tmax
        end

        if minHitT < tmax
            position = r(minHitT)
            @inbounds sphere = hittable_list.spheres[i]
            normal = sphere_normal(sphere, position)

            return hit_record(position, normal, sphere.material, minHitT)
        else 
            return initialRecord
        end
    end
end

@fastmath function ray_color(r, world, depth, tmin=1e-4, tmax=F(Inf))
    accumulated_attenuation = one(Spectrum)

    for _ in 1:depth
        record = findSceneIntersection(r, world, tmin, tmax)

        @smart_assert !any(isnan.(accumulated_attenuation)) accumulated_attenuation
        if record.t == tmax # nothing hit, t from initialRecord
            @smart_assert all(world_color(r) .>= 0)
            return accumulated_attenuation .* world_color(r)
        else
            @smart_assert isapprox(norm(record.normal), 1; atol=1e-2) record.normal

            # @fastmath @inline (direction, scatterAgain, attenuation) = @match record.material begin
            #     Material.Lambertian(attenuation) => (lambertian(r, record.normal), true, attenuation)
            #     Material.Dielectric(attenuation, ior) => (glass(r, record.normal, ior), true, attenuation)
            #     Material.Metal(attenuation, fuzz) => (metal(r, record.normal, fuzz)..., attenuation)
            # end

            direction = lambertian(r, record.normal)
            scatterAgain = true
            attenuation = Spectrum(0, 0, 1)

            r = Ray(record.p, Point(direction))
            accumulated_attenuation = accumulated_attenuation .* attenuation
        end
    end

    return zero(Spectrum)
end

function scene_random_spheres()
    HittableList = [Sphere([0, 0, -1000], 1000, Material.Lambertian([.5, .5, .5]))]

	for a in -11:10, b in -11:10
		choose_mat = rand()
		center = Point(a + 0.9*rand(), -(b + 0.9*rand()), 0.2)

		# skip spheres too close?
		if norm(center - Point(4,0, 0.2)) < 0.9 continue end 
			
		if choose_mat < 4//5
			# lambertian
			albedo = rand(Spectrum) .* rand(Spectrum)
			push!(HittableList, Sphere(center, 1//5, Material.Lambertian(albedo)))
		elseif choose_mat < 95//100
			# metal
			albedo = rand(Spectrum) / 2 .+ 1/2
			fuzz = rand() * 5
			push!(HittableList, Sphere(center, 0.2, Material.Metal(albedo, fuzz)))
		else
			# glass
			push!(HittableList, Sphere(center, 0.2, Material.Dielectric()))
		end
	end

	push!(HittableList, Sphere([0,0,1], 1, Material.Dielectric()))
	push!(HittableList, Sphere([-4,0,1], 1, Material.Lambertian([0.4,0.2,0.1])))
	push!(HittableList, Sphere([4,0,1], 1, Material.Metal([0.7,0.6,0.5], 0)))

    append!(HittableList, repeat([Sphere(zero(Point), 0, Material.Lambertian())], (N - mod1(length(HittableList), N))))
    tmp = CUDA.@allowscalar StructArray(HittableList, unwrap = F -> (F<:AbstractVector))
    return hittable_list(tmp);
end

@fastmath function renderRay(HittableList, maxDepth, pixel_position, camera)
    random_pixel_position = pixel_position + rand(F) * camera.right + rand(F) * camera.down

    defocus_random = camera.lens_radius * random_in_unit_disk()
    defocus_offset = CUDA.@allowscalar defocus_random[1] * camera.u + defocus_random[2] * camera.v

    ray = Ray(camera.pinhole_location + defocus_offset, normalize_fast(random_pixel_position - camera.pinhole_location - defocus_offset))

    return ray_color(ray, HittableList, maxDepth)
end

function render!(img, HittableList, camera=Camera(); samples_per_pixel=100, maxDepth=16, parallel=true)
    if parallel == true
        @sync for j in axes(img, 3)
            Threads.@spawn @inbounds for i in axes(img, 2)
                for sample in 1:samples_per_pixel
                    @inbounds img[:, i, j] += renderRay(HittableList, maxDepth, pixelWorldPosition(camera, i, j), camera)
                end
                @inbounds img[:, i, j] /= samples_per_pixel
            end
        end
    else
        for j in axes(img, 3)
            for i in axes(img, 2)
                for sample in 1:samples_per_pixel
                    img[:, i, j] += renderRay(HittableList, maxDepth, pixelWorldPosition(camera, i, j), camera).data
                end
                img[:, i, j] /= samples_per_pixel
            end
        end
        # map!((c, i, j) -> sum(sample -> renderRay(HittableList, maxDepth, pixelWorldPosition(camera, i, j), camera), 1:samples_per_pixel) / samples_per_pixel, img, CartesianIndices(img))
    end

    return nothing
end

spectrumToRGB(img) = map(x -> RGB(sqrt.(x)...), img)

function setup(resolution=1920/2)
    HittableList = scene_random_spheres();
    cu_scene = hittable_list(CUDA.@allowscalar replace_storage(CuArray, HittableList.spheres[end-3:end]))
    spectrum_img = zeros(Spectrum, reverse(imagesize(resolution, 16//9))...)
    camera = Camera(reverse(size(spectrum_img)[2:3])..., [13, -3, 2], [0, 0, 0], [0, 0, 1], 20, F(0.05), 10)

    return cu_scene, spectrum_img, camera
end

function production(parallel=true)
    scene, spectrum_img, camera = setup()

    @time render!(spectrum_img, scene, camera, samples_per_pixel=10, parallel=parallel)
    return spectrumToRGB(spectrum_img)
end

function test(parallel=false)
    scene, spectrum_img, camera = setup(1920/10)

    # cu_spectrum_img = CuArray(stack(spectrum_img))
    CUDA.@time render!(spectrum_img, scene, camera, samples_per_pixel=1, parallel=parallel)

    return spectrumToRGB(eachslice(spectrum_img |> Array, dims=(2,3)))
end

function claforte(parallel=true)
    scene, spectrum_img, camera = setup(1920)

    @time render!(spectrum_img, scene, camera, samples_per_pixel=1000, parallel=parallel)
    return spectrumToRGB(spectrum_img)
end

# function profview(parallel=true)
#     scene, spectrum_img, camera = setup()

#     @profview render!(spectrum_img, scene, camera, samples_per_pixel=10, parallel=parallel)
#     return spectrumToRGB(spectrum_img)
# end

# function profview_allocs(parallel=true)
#     scene, spectrum_img, camera = setup()

#     @profview_allocs render!(spectrum_img, scene, camera, samples_per_pixel=10, parallel=parallel)
#     return spectrumToRGB(spectrum_img)
# end

# using Profile, PProf
# function profile()
#     HittableList, spectrum_img, camera = setup(10)

#     render!(spectrum_img, HittableList, camera, samples_per_pixel=10)

#     Profile.Allocs.clear(); 

#     Profile.Allocs.@profile sample_rate=1 render!(spectrum_img, scene, camera)

#     PProf.Allocs.pprof(from_c=false, webport=8080)
# end

using BenchmarkTools
function benchmark(;print=false, parallel=true)
    scene, spectrum_img, camera = setup()

    if parallel != false
        display(@benchmark render!($spectrum_img, $scene, $camera, samples_per_pixel=$10, parallel=$parallel) teardown=sleep(1) seconds=20)
    else
        display(@benchmark render!($spectrum_img, $scene, $camera, samples_per_pixel=$10, parallel=$parallel))
    end
    rgb_img = spectrumToRGB(spectrum_img)
    if print
        rgb_img |> display
    end
    return nothing
end

# using Cthulhu
# @descend ray_color(Ray(), setup() |> first, 10)