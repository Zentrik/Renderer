# This tries to stay faithful to the book's code
# using Revise
using Parameters, StaticArrays, LinearAlgebra, Images, StructArrays, MLStyle, SmartAsserts, KernelAbstractions, CUDA, Adapt, NVTX, SIMD, Random
using Expronicon.ADT: @adt

if CUDA.functional()
    CUDA.allowscalar(false)
    const var"@time_adapt" = CUDA.var"@time"
    SmartAsserts.set_enabled(false) # crashes gpu compiler if enabled
else
    const var"@time_adapt" = var"@time"
end

# SmartAsserts.set_enabled(false) # crashes gpu compiler if enabled

Fast = false

const F = Float32

### TYPES
const Point = SVector{3, F} # We use F so we dont have points of different types, otherwise Ray, Sphere become parametric types and HittableList needs to be contructed carefully to ensure same types everywhere. (can we somehow promote it)
const Spectrum = SVector{3, F}

@with_kw struct Ray
    origin::Point = zeros(Point)
    direction::Point = Point(0, 1, 0)
    @smart_assert isapprox(norm(direction), 1, atol=F(1e-2)) "Ray direction not normalised for Ray with origin $origin and direction $direction"
end
@inline (ray::Ray)(t) = ray.origin + t * ray.direction

@adt Material begin
    struct Lambertian
        attenuation::Spectrum = ones(Spectrum)
    end
    struct Dielectric
        attenuation::Spectrum = ones(Spectrum)
        ior::F = 3//2
    end
    struct Metal
        attenuation::Spectrum = ones(Spectrum)
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
    centre_radius::Vec{4, F} = Vec{4, F}((0, 0, 0, 0.5)) #[zeros(F, 3); 0.5f0]
    material::Material = Material.Lambertian()
end
function Sphere(centre, radius, material)
    Sphere(Vec{4, F}(tuple([centre; radius]...)), material)
end

@fastmath sphere_normal(centre, radius, position) = (position - centre) / radius
@fastmath sphere_normal(sphere, position) = sphere_normal(sphere.centre, sphere.radius, position)

# function StructArrays.staticschema(::Type{Point})
#     # Define the desired names and eltypes of the "fields"
#     return NamedTuple{(:x, :y, :z), fieldtypes(Point)...}
# end

# StructArrays.component(m::Point, key::Symbol) = getproperty(m, key)
# StructArrays.createinstance(::Type{Point}, args...) = Point(args)

# function StructArrays.staticschema(::Type{Sphere})
#     # Define the desired names and eltypes of the "fields"
#     return NamedTuple{(:centre_radius, :material), Tuple{SVector{4, F}, Material}}
# end

# function StructArrays.component(m::Sphere, key::Symbol)
#     if key == :centre_radius
#         return SVector{4, F}(m.centre..., m.radius)
#     end
#     return getproperty(m, key)
# end
# StructArrays.createinstance(::Type{Sphere}, args...) = Sphere(args[1][1:3], args[1][4], args[2])

@kwdef struct hittable_list{T}
    spheres::T = []
end
Adapt.@adapt_structure hittable_list

imagesize(height, aspectRatio) = (Int(height), round(Int, height / aspectRatio))

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

### General Functions

@fastmath pixelWorldPosition(camera, index) = pixelWorldPosition(camera, index[1], index[2])
@fastmath pixelWorldPosition(camera, x, y) = camera.upper_left_corner + (y - 1) * camera.right + (x - 1) * camera.down

@inline @fastmath norm2(x) = x ⋅ x
# probably doesn't do anything, StaticArrays should be aggressively unrolling anyways
@inline @fastmath norm2(x::SVector{3}) = x[1] * x[1] + x[2] * x[2] + x[3] * x[3]

@inline @fastmath normalize_fast(x) = x * (1 / sqrt(norm2(x)))

if CUDA.functional()
    # @inline @fastmath normalize_fast(x) = x * CUDA.rsqrt(norm2(x))
    @inline @fastmath CUDA.@device_override normalize_fast(x) = x * CUDA.rsqrt(norm2(x))
    # does this even get called, dispatch should still work even if its actually a CuArray
    @inline @fastmath CUDA.@device_override normalize_fast(x::SVector{3}) = x * CUDA.rnorm3df(x[1], x[2], x[3])
end

function world_color(ray)
    interp = (ray.direction.z + 1) / 2
    return (1 - interp) * Spectrum(1, 1, 1) + interp * Spectrum(0.5, 0.7, 1.0)
end

@static if Fast
    # @inline @fastmath random_in_unit_disk() = normalize_fast(SVector{2, F}(randn(), randn()))

    @inline @fastmath random_in_unit_disk() = normalize_fast(randn(SVector{2, F}))

    @inline @fastmath function random_in_unit_sphere()
        while true
            sample = rand(Point) * 2 .- 1
            # sample = Point(rand(F) * 2 - 1, rand(F) * 2 - 1, rand(F) * 2 - 1)
            if norm2(sample) < 1
                return sample
            end
        end
    end

    @inline @fastmath random_on_unit_sphere_surface() = normalize_fast(Point(randn(), randn(), randn()))
else
    @inline @fastmath function random_in_unit_disk()
        # while true
        #     p = rand(SVector{2, F}) * 2 .- 1
        #     if norm2(p) < 1
        #         return p
        #     end
        # end
        θ = 2*π*rand(F)
        r = sqrt(rand(F))
        sinθ, cosθ = sincos(θ)
        SVector{2, F}(r*sinθ, r*cosθ)
    end

    @inline @fastmath function random_in_unit_sphere()
        # while true
        #     sample = rand(Point) * 2 .- 1
        #     # sample = @inline rand(Point) * 2 .- 1
        #     if norm2(sample) < 1
        #         return sample
        #     end
        # end

        # return normalize_fast(randn(Point)) * cbrt(rand(F))

        z = 1 - 2 * rand(F)
        r = sqrt(1 - z*z)
        ϕ = 2 * π * rand(F)
        sinϕ, cosϕ = sincos(ϕ)
        return Point(r * cosϕ, r * sinϕ, z) * cbrt(rand(F))
    end

    @inline @fastmath function random_on_unit_sphere_surface()
        # tmp = random_in_unit_sphere()
        # return normalize_fast(tmp)

        # while true
        #     # sample = rand(Point) * 2 .- 1
        #     sample = @inline rand(Point) * 2 .- 1
        #     length2 = norm2(sample)
        #     if length2 < 1
        #         return sample * CUDA.rsqrt(length2)
        #     end
        # end

        # return Point(normalize_fast(CUDA.randn(F, 3)))
 
        # https://github.com/mmp/pbrt-v4/blob/c4baa534042e2ec4eb245924efbcef477e096389/src/pbrt/util/sampling.h#L391
        z = 1 - 2 * rand(F)
        r = sqrt(1 - z*z)
        ϕ = 2 * π * rand(F)
        sinϕ, cosϕ = sincos(ϕ)
        return Point(r * cosϕ, r * sinϕ, z)

        # ϕ, z = rand(F, 2)
        # z = 1 - 2 * z
        # r = sqrt(1 - z*z)
        # ϕ = 2 * π * ϕ
        # sinϕ, cosϕ = sincos(ϕ)
        # return Point(r * cosϕ, r * sinϕ, z)

        # z = 1 .- 2 * CUDA.rand(F, 1)
        # r = sqrt.(1 .- z.*z)
        # ϕ = 2 * π * CUDA.rand(F, 1)
        # sinϕ, cosϕ = sincos.(ϕ)
        # return Point(r .* sincos.(ϕ), z)
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

### Materials

@fastmath function shick(cosθ, ior_ratio)
    r0 = ((1 - ior_ratio) / (1 + ior_ratio))^2
    return r0 + (1 - r0) * (1 - cosθ)^5
end

@fastmath function metal(ray, n⃗, fuzz=0)
    @inline scattered = reflect(ray, n⃗, fuzz)
    return scattered, scattered ⋅ n⃗ > 0 # check if scattered direction is into the object
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

### Render Loop

# https://discourse.julialang.org/t/help-defining-masked-vload-and-vstore-operations-for-sarrays-or-other-isbits-structs-using-llvmcall/17291
to_vec(t::SVector{N,T}) where {N,T} = ntuple(i->VecElement{T}(t[i]), N)
to_tup(v::NTuple{N,VecElement{T}}) where {N,T} = ntuple(i->v[i].value, N)
to_tup(v::Vec{N,T}) where {N,T} = ntuple(i->v[i], N)

# for var in [:centre_radius]
#     val = getfield(scene.spheres, var) |> Array |> vec
#     gpu_var = Symbol("gpu_$var")
#     arr_typ = :(CuDeviceArray{$(eltype(val)),$(ndims(val)),CUDA.AS.Constant})
#     @eval @inline @generated function $gpu_var()
#         ptr = CUDA.emit_constant_array($(QuoteNode(var)), $val)
#         Expr(:call, $arr_typ, ptr, $(size(val)))
#     end
#     CUDA.@allowscalar gpu_centre_radius() # needs to be called once?
# end

@inline @fastmath @inbounds function findSceneIntersection(r, hittable_list, tmin::F, tmax::F)
    minHitT = tmax
    minIndex = Int32(0)
    indexCounter = Int32(0) # 10% speedup

    for i in Int32(1):Int32(length(hittable_list.spheres.material)) #eachindex(hittable_list.spheres.material)
        # @inline @inbounds cx = hittable_list.spheres.centre_radius[indexCounter+=Int32(1)]
        # @inline @inbounds cy = hittable_list.spheres.centre_radius[indexCounter+=Int32(1)]
        # @inline @inbounds cz = hittable_list.spheres.centre_radius[indexCounter+=Int32(1)]
        # @inline @inbounds radius = hittable_list.spheres.centre_radius[indexCounter+=Int32(1)]

        @inline @inbounds cx = gpu_centre_radius()[indexCounter+=Int32(1)]
        @inline @inbounds cy = gpu_centre_radius()[indexCounter+=Int32(1)]
        @inline @inbounds cz = gpu_centre_radius()[indexCounter+=Int32(1)]
        @inline @inbounds radius = gpu_centre_radius()[indexCounter+=Int32(1)]

        # @inbounds cx, cy, cz, radius = gpu_centre_radius()[4*(i-1)+1:4*i]
        # @inbounds cx, cy, cz, radius = @view hittable_list.spheres.centre_radius[Int32(1):Int32(4), i]
        # cx, cy, cz, radius = to_tup(vloada(Vec{4, F}, pointer(hittable_list.spheres.centre_radius.a, size(hittable_list.spheres.centre_radius.a)[1]*i-3))) # a field is the actuall array contained in a Const
        # @inbounds cx, cy, cz, radius = to_tup(vloada(Vec{4, F}, pointer(hittable_list.spheres.centre_radius.a, 4*(i-1)+1))) # a field is the actuall array contained in a Const
        # @inbounds cx, cy, cz, radius = @view hittable_list.spheres.centre_radius.a[4*(i-1)+1:4*i] 
        # @inbounds cx, cy, cz, radius = @view hittable_list.spheres.centre_radius[4*(i-1)+1:4*i] # very slow for whatever reason
        #vloada(Vec{4, F}, hittable_list.spheres.centre_radius, 1+4*i) |> to_tup
        # cx, cy, cz, radius = to_tup(vloada(Vec{4, F}, pointer(hittable_list.spheres.centre_radius[i])))
        # cx, cy, cz, radius = to_tup(to_vec(hittable_list.spheres.centre_radius[i]))
        # cx, cy, cz, radius = hittable_list.spheres.centre_radius[i]
        cox = cx - r.origin.x
        coy = cy - r.origin.y
        coz = cz - r.origin.z

        neg_half_b = r.direction.x * cox + r.direction.y * coy 
        neg_half_b += r.direction.z * coz

        c = cox*cox + coy*coy 
        c += coz*coz 
        c -= radius^2

        quarter_discriminant = neg_half_b^2 - c
        isDiscriminantPositive = quarter_discriminant > 0

        if isDiscriminantPositive
            @inline @fastmath sqrtd = sqrt(quarter_discriminant) # When using fastmath, negative values just give 0
    
            root = neg_half_b - sqrtd
            root2 = neg_half_b + sqrtd

            t = ifelse(root > tmin, root, root2)

            newMinT = (tmin < t) & (t < minHitT)
            minHitT = ifelse(newMinT, t, minHitT)
            minIndex = ifelse(newMinT, i, minIndex)
        end
    end

    if minHitT < tmax
        position = r(minHitT)
        @inbounds centre_radius = @view hittable_list.spheres.centre_radius[Int32(1):Int32(4), minIndex]
        @inbounds material = hittable_list.spheres.material[minIndex]

        @inbounds normal = sphere_normal(Point(centre_radius[Int32(1)], centre_radius[Int32(2)], centre_radius[Int32(3)]), centre_radius[Int32(4)], position)

        return hit_record(position, normal, material, minHitT)
    else 
        return hit_record(zeros(Point), normalize(ones(Point)), Material.Lambertian(), tmax)
    end
end

@inbounds function metalTest(r, record, attenuation, fuzz)
    tmp = metal(r, record.normal, fuzz)
    return (tmp[1], tmp[2], attenuation)
end

@fastmath function ray_color(r, world, depth, tmin=F(1e-4), tmax=F(Inf))
    accumulated_attenuation = ones(Spectrum)

    for i in 1:depth
        @inline record = findSceneIntersection(r, world, tmin, tmax)

        @smart_assert !any(isnan.(accumulated_attenuation)) accumulated_attenuation
        if record.t == tmax # nothing hit, t from initialRecord
            @smart_assert all(world_color(r) .>= 0)
            return accumulated_attenuation .* world_color(r)
        else
            @smart_assert isapprox(norm(record.normal), 1; atol=F(1e-2)) record.normal

            @fastmath @inline (direction, scatterAgain, attenuation) = @match record.material begin
                Material.Lambertian(attenuation) => (lambertian(r, record.normal), true, attenuation)
                Material.Dielectric(attenuation, ior) => (glass(r, record.normal, ior), true, attenuation)
                Material.Metal(attenuation, fuzz) => metalTest(r, record, attenuation, fuzz)
            end

            # @fastmath @inline (direction, scatterAgain, attenuation) = @match record.material begin
            #     Material.Lambertian(attenuation) => (lambertian(r, record.normal), true, attenuation)
            #     Material.Dielectric(attenuation, ior) => (lambertian(r, record.normal), true, attenuation)
            #     Material.Metal(attenuation, fuzz) => (lambertian(r, record.normal), true, attenuation)
            # end

            # direction = lambertian(r, record.normal)
            # scatterAgain = true
            # attenuation = Spectrum(1, 0, 0)

            if !scatterAgain
                return zeros(Spectrum)
            end

            r = Ray(record.p, direction)
            accumulated_attenuation = accumulated_attenuation .* attenuation
        end
    end

    return zeros(Spectrum)
end

@fastmath function renderRay(HittableList, maxDepth, pixel_position, camera)
    random_pixel_position = pixel_position + rand(F) * camera.right + rand(F) * camera.down

    defocus_random = camera.lens_radius * random_in_unit_disk()
    defocus_offset = defocus_random[1] * camera.u + defocus_random[2] * camera.v

    ray = Ray(camera.pinhole_location + defocus_offset, normalize_fast(random_pixel_position - camera.pinhole_location - defocus_offset))

    return ray_color(ray, HittableList, maxDepth)
end

@kernel function renderPixel(img, @Const(HittableList), @Const(camera), samples_per_pixel, maxDepth)
    I = @index(Global, Cartesian)

    for sample in 1:samples_per_pixel
        @inbounds img[I] += renderRay(HittableList, maxDepth, pixelWorldPosition(camera, I), camera)
    end
    @inbounds img[I] /= samples_per_pixel
end

function CUDAKernel(img, HittableList, camera, samples_per_pixel, maxDepth)
    i = (blockIdx().x - Int32(1)) * blockDim().x + threadIdx().x
    j = (blockIdx().y - Int32(1)) * blockDim().y + threadIdx().y

    centre_radius = Base.Experimental.Const(HittableList.spheres.centre_radius)
    material = Base.Experimental.Const(HittableList.spheres.material)

    scene = hittable_list((centre_radius=centre_radius, material=material))

    # scene = HittableList

    if i > size(img)[1] || j > size(img)[2]
        return nothing
    end

    for sample in Int32(1):Int32(samples_per_pixel)
        @inbounds img[i, j] += renderRay(scene, maxDepth, pixelWorldPosition(camera, i, j), camera)
    end
    @inbounds img[i, j] /= samples_per_pixel
    return nothing
end

function render!(img, HittableList, camera=Camera(); samples_per_pixel=100, maxDepth=16, parallel=true)
    if parallel == true
        @sync for j in axes(img, 2)
            Threads.@spawn @inbounds for i in axes(img, 1)
                for sample in 1:samples_per_pixel
                    @inbounds img[i, j] += renderRay(HittableList, maxDepth, pixelWorldPosition(camera, i, j), camera)
                end
                @inbounds img[i, j] /= samples_per_pixel
            end
        end
    else
        # dev = CUDABackend(true, true) 
        # dev = CUDABackend(false, false)
        # dev = KernelAbstractions.get_backend(img)
        # kernel = renderPixel(dev, (8, 8))(img, HittableList, camera, samples_per_pixel, maxDepth, ndrange=size(img)) # slower not sure why, I thought it's equivalent to below line
        # kernel = renderPixel(dev)(img, HittableList, camera, samples_per_pixel, maxDepth, ndrange=size(img), workgroupsize=(8, 8))
        # KernelAbstractions.synchronize(dev)

        CUDA.@sync begin
            numblocks = ceil.(Int, size(img)./8)
            @cuda threads=(8, 8) blocks=numblocks CUDAKernel(img, HittableList, camera, samples_per_pixel, maxDepth)
            # ker = @cuda launch=false CUDAKernel(img, HittableList, camera, samples_per_pixel, maxDepth)
            # ker(img, scene, camera, 10, 16; threads=(8, 8), blocks=(135, 240))
            # config = launch_configuration(kernel.fun)
            # threads = min(N, config.threads)
            # blocks = cld(N, threads)
        end
        # spheres::StructVector{Sphere, NamedTuple{(:centre, :radius, :material), Tuple{StructVector{SVector{3, Float32}, NamedTuple{(:x, :y, :z), Tuple{CuArray{Float32, 1, CUDA.Mem.DeviceBuffer}, CuArray{Float32, 1, CUDA.Mem.DeviceBuffer}, CuArray{Float32, 1, CUDA.Mem.DeviceBuffer}}}, Int64}, CuArray{Float32, 1, CUDA.Mem.DeviceBuffer}, CuArray{Material, 1, CUDA.Mem.DeviceBuffer}}}, Int64} = HittableList.spheres
        # map!(img, CartesianIndices(img)) do index
        #     # const_spheres = replace_storage(Base.Experimental.Const, spheres)
        #     # scene = hittable_list(StructArray(Sphere.(Point.(HittableList.spheres.centre.x, HittableList.spheres.centre.y, HittableList.spheres.centre.z), HittableList.spheres.radius, HittableList.spheres.material), unwrap = F -> (F<:AbstractVector)))

        #     # cols = StructArrays.components(spheres)
        #     # for col in cols
        #     #     col = Base.Experimental.Const(col)
        #     # end
        #     # StructArray{T}(newcols)

        #     # x = Base.Experimental.Const(HittableList.spheres.centre.x)
        #     # y = Base.Experimental.Const(HittableList.spheres.centre.y)
        #     # z = Base.Experimental.Const(HittableList.spheres.centre.z)
        #     # radius = Base.Experimental.Const(HittableList.spheres.radius)
        #     # material = Base.Experimental.Const(HittableList.spheres.material)

        #     # centres = StructVector{Point, NamedTuple{(:x, :y, :z), Tuple{typeof(x), typeof(y), typeof(z)}}, Int64}((x=x, y=y, z=z))
        #     # spheres = StructVector{Sphere, NamedTuple{(:centre, :radius, :material), Tuple{typeof(centres), typeof(radius), typeof(material)}}, Int64}((centre=centres, radius=radius, material=material))

        #     # centres = StructVector{Point, typeof((x=x, y=y, z=z)), Int64}((x=x, y=y, z=z))
        #     # spheres = StructVector{Sphere, typeof((centre=centres, radius=radius, material=material)), Int64}((centre=centres, radius=radius, material=material))

        #     # centres = StructArray{Point}(x=x, y=y, z=z)
        #     # spheres = StructArray{Sphere}(centre=centres, radius=radius, material=material)

        #     centre_radius = Base.Experimental.Const(HittableList.spheres.centre_radius)
        #     material = Base.Experimental.Const(HittableList.spheres.material)

        #     # spheres = StructVector{Sphere, typeof((centre_radius=centre_radius, material=material)), Int64}((centre_radius=centre_radius, material=material))

        #     # scene = hittable_list(spheres)
        #     # scene = HittableList

        #     scene = hittable_list((centre_radius=centre_radius, material=material))

        #     pixel = zeros(Spectrum)
        #     for sample in 1:samples_per_pixel
        #         pixel += renderRay(scene, maxDepth, pixelWorldPosition(camera, index), camera)
        #     end
        #     pixel /= samples_per_pixel
        #     return pixel
        # end
    end

    return nothing
end

### Scene Setup

function scene_random_spheres()
    Random.seed!(1324)
    HittableList = [Sphere([0, 0, -1000], 1000, Material.Lambertian([.5, .5, .5]))]

	for a in -11:10, b in -11:10
		choose_mat = rand()
		center = Point(a + 0.9*rand(), -(b + 0.9*rand()), 0.2)

		# skip spheres too close?
		if norm(center - Point(4, 0, 0.2)) < 0.9 continue end 
			
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

    tmp = StructArray(HittableList)

    return hittable_list(tmp);
end

### Run Code
spectrumToRGB(img) = map(x -> RGB(sqrt.(x)...), img |> Array)

function setup(parallel, resolution=1920/4, aspect_ratio=16//9)
    scene = scene_random_spheres()
    spectrum_img = zeros(Spectrum, reverse(imagesize(resolution, aspect_ratio))...)
    camera = Camera(reverse(size(spectrum_img))..., [13, -3, 2], [0, 0, 0], [0, 0, 1], 20, 0.05, 10)

    if parallel == :GPU
        scene = hittable_list((centre_radius=CuArray(stack(x -> [x[i] for i in 1:4], scene.spheres.centre_radius)), material=CuArray(scene.spheres.material)))
        # scene = hittable_list(CUDA.@allowscalar replace_storage(CuArray, scene.spheres))
        spectrum_img = CuArray(spectrum_img)
    else
        scene = hittable_list((centre_radius=(stack(x -> [x[i] for i in 1:4], scene.spheres.centre_radius)), material=(scene.spheres.material)))
    end

    return scene, spectrum_img, camera
end

function production(parallel=true)
    scene, spectrum_img, camera = setup(parallel)

    @time_adapt render!(spectrum_img, scene, camera, samples_per_pixel=10, parallel=parallel)
    return spectrumToRGB(spectrum_img)
end

function test(parallel=false)
    scene, spectrum_img, camera = setup(parallel, 1920/10)

    @time_adapt render!(spectrum_img, scene, camera, samples_per_pixel=5, parallel=parallel)

    spectrumToRGB(spectrum_img)
end

function claforte(parallel=true)
    scene, spectrum_img, camera = setup(parallel, 1920)

    @time_adapt render!(spectrum_img, scene, camera, samples_per_pixel=1000, parallel=parallel)
    return spectrumToRGB(spectrum_img)
end

if CUDA.functional()
    function profile(parallel=:GPU)
        scene, spectrum_img, camera = setup(parallel, 1920/2)

        @time_adapt NVTX.@range "Range Rendering" begin
            CUDA.@profile render!(spectrum_img, scene, camera, samples_per_pixel=10, parallel=parallel)
        end

        spectrumToRGB(spectrum_img)
    end
end

# function profview(parallel=true)
#     scene, spectrum_img, camera = setup(parallel)

#     @profview render!(spectrum_img, scene, camera, samples_per_pixel=10, parallel=parallel)
#     return spectrumToRGB(spectrum_img)
# end

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
        :GPU => display(@benchmark (CUDA.@sync render!($spectrum_img, $scene, $camera, samples_per_pixel=$10, parallel=$parallel)))
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

    # @time_adapt render!(spectrum_img, scene, camera, samples_per_pixel=50, parallel=parallel)
    @match parallel begin
        :GPU => display(@benchmark (CUDA.@sync render!($spectrum_img, $scene, $camera, samples_per_pixel=$10, parallel=$parallel, maxDepth=50)))
        :false => display(@benchmark render!($spectrum_img, $scene, $camera, samples_per_pixel=$10, parallel=$parallel, maxDepth=50))
        _ => display(@benchmark render!($spectrum_img, $scene, $camera, samples_per_pixel=$10, parallel=$parallel, maxDepth=50) teardown=sleep(1) seconds=20)
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