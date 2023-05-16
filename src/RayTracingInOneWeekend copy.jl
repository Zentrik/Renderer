# This tries to stay faithful to the book's code
using Revise
using Parameters, StaticArrays, LinearAlgebra, Images, StructArrays, MLStyle, SmartAsserts, KernelAbstractions, CUDA
using Expronicon.ADT: @adt
using Adapt
# import CUDA.rand

CUDA.allowscalar(false)

SmartAsserts.set_enabled(false)

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

# using GPUArrays
# import Base.allequal

# allequal(x) = true
# allequal(x, y, z...) = x == y && allequal(y, z...)

# function Base.map(f, x::GPUArrays.BroadcastGPUArray, xs::StaticArray...)
#     # if argument sizes match, their shape needs to be preserved
#     xs = (x, xs...)
#     if allequal(size.(xs)...)
#          return f.(xs...)
#     end

#     # if not, treat them as iterators
#     indices = LinearIndices.(xs)
#     common_length = minimum(length.(indices))

#     # construct a broadcast to figure out the destination container
#     ElType = Broadcast.combine_eltypes(f, xs)
#     isbitstype(ElType) || error("Cannot map function returning non-isbits $ElType.")
#     dest = similar(x, ElType, common_length)

#     return map!(f, dest, xs...)
# end

Fast = false

const F = Float32

const N = 8 # SIMD vector width

const Point = SVector{3, F} # We use F so we dont have points of different types, otherwise Ray, Sphere become parametric types and HittableList needs to be contructed carefully to ensure same types everywhere. (can we somehow promote it)
const Spectrum = SVector{3, F}

@with_kw struct Ray
    origin::Point = zeros(Point)
    direction::Point = Point(0, 1, 0)
    @smart_assert isapprox(norm(direction), 1, atol=1e-2) "Ray direction not normalised for Ray with origin $origin and direction $direction"
end
Adapt.@adapt_structure Ray

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
Adapt.@adapt_structure hit_record

abstract type Primitive end

@kwdef struct Sphere <: Primitive
    centre::Point = zeros(Point)
    radius::F = 0.5f0
    material::Material = Material.Lambertian()
end
Adapt.@adapt_structure Sphere

@fastmath sphere_normal(sphere, position) = (position - sphere.centre) / sphere.radius

function StructArrays.staticschema(::Type{Point})
    # Define the desired names and eltypes of the "fields"
    return NamedTuple{(:x, :y, :z), Tuple{F, F, F}}
end

StructArrays.component(m::Point, key::Symbol) = getproperty(m, key)
StructArrays.createinstance(::Type{Point}, args...) = Point(args...)

@kwdef struct hittable_list{F}
    spheres::F = []
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
Adapt.@adapt_structure Camera

function Camera(nx::Integer=400, ny=imagesize(nx, 16/9)[2], pinhole_location=Point(0, 0, 0), lookat=Point(0, 1, 0), up=Point(0, 0, 1), vfov=2atand(1), lens_radius::T=0, focus_distance=1) where T
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

@fastmath pixelWorldPosition(camera, index) = camera.upper_left_corner + (index[2] - 1) * camera.right + (index[1] - 1) * camera.down

# @fastmath pixelWorldPosition(camera, index) = camera.upper_left_corner + [camera.down camera.right] * (index .- 1)

@fastmath pixelWorldPosition(camera, x, y) = camera.upper_left_corner + (y - 1) * camera.right + (x - 1) * camera.down

@inline @fastmath norm2(x) = x ⋅ x

@inline @fastmath normalize_fast(x) = x * (1 / sqrt(norm2(x)))

function world_color(ray)
    interp = (ray.direction.z + 1) / 2
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
            p = rand(SVector{2, F}) * 2 .- 1
            if norm2(p) < 1
                return p
            end
        end
    end

    @inline @fastmath function random_in_unit_sphere()
        while true
            sample = rand(Point) * 2 .- 1
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

# @kernel function intersect(@Const(r), @Const(hittable_list), @Const(tmin), tmax)
#     I = @index(Global)

#     cox = hittable_list.spheres.centre.x[I] - r.origin.x
#     coy = hittable_list.spheres.centre.y[I] - r.origin.y
#     coz = hittable_list.spheres.centre.z[I] - r.origin.z

#     neg_half_b = r.direction.x * cox + r.direction.y * coy + r.direction.z * coz

#     c = cox*cox + coy*coy + coz*coz - hittable_list.spheres.radius[I] * hittable_list.spheres.radius[I]

#     quarter_discriminant = neg_half_b^2 - c
#     isDiscriminantPositive = quarter_discriminant > 0

#     if isDiscriminantPositive
#         sqrtd = sqrt(quarter_discriminant) # When using fastmath, negative values just give 0

#         root = neg_half_b - sqrtd
#         root2 = neg_half_b + sqrtd

#         tmp = ifelse(root > tmin, root, root2)
#         return ifelse(tmp > tmin, tmp, tmax)
#     end
# end

function reduction(t1, t2)
    x = first(t1)
    y = first(t2)

    x < y && return t1
    return t2
end

function findSceneIntersection(r, hittable_list, tmin::F, tmax::F)    
    # cox = hittable_list.spheres.centre.x .- r.origin.x
    # coy = hittable_list.spheres.centre.y .- r.origin.y
    # coz = hittable_list.spheres.centre.z .- r.origin.z

    # neg_half_b = r.direction.x .* cox + r.direction.y .* coy 
    # neg_half_b += r.direction.z .* coz

    # c = cox.*cox + coy.*coy + coz.*coz - hittable_list.spheres.radius .* hittable_list.spheres.radius

    # quarter_discriminant = neg_half_b.^2 - c
    # isDiscriminantPositive = quarter_discriminant .> 0

    # # if any(isDiscriminantPositive)
    #     sqrtd = sqrt.(quarter_discriminant) # When using fastmath, negative values just give 0

    #     root = neg_half_b - sqrtd
    #     root2 = neg_half_b + sqrtd

    #     t = ifelse.(root .> tmin, root, root2)

    #     newMinT = isDiscriminantPositive .& (tmin .< t) .& (t .< tmax)

    #     hitT = ifelse.(newMinT, t, tmax)
    # # end

    # dummy_sphere = Sphere()

    # minHitT, x, y, z, radius, material = mapreduce(tuple, reduction, hitT, hittable_list.spheres.centre.x, hittable_list.spheres.centre.y, hittable_list.spheres.centre.z, hittable_list.spheres.radius, hittable_list.spheres.material; init = (tmax, dummy_sphere.centre.x, dummy_sphere.centre.y, dummy_sphere.centre.z, dummy_sphere.radius, dummy_sphere.material))
    # minHitT, x, y, z, radius, material = mapreduce(reduction, hittable_list.spheres.centre.x, hittable_list.spheres.centre.y, hittable_list.spheres.centre.z, hittable_list.spheres.radius, hittable_list.spheres.material; init = (tmax, dummy_sphere.centre.x, dummy_sphere.centre.y, dummy_sphere.centre.z, dummy_sphere.radius, dummy_sphere.material)) do x, y, z, radius, material
    
    # minHitT, x, y, z, radius = mapreduce(reduction, hittable_list.spheres.centre.x, hittable_list.spheres.centre.y, hittable_list.spheres.centre.z, hittable_list.spheres.radius; init = (tmax, dummy_sphere.centre.x, dummy_sphere.centre.y, dummy_sphere.centre.z, dummy_sphere.radius)) do x, y, z, radius
    #     cox = x - r.origin.x
    #     coy = y - r.origin.y
    #     coz = z - r.origin.z

    #     neg_half_b = r.direction.x * cox + r.direction.y * coy + r.direction.z * coz

    #     c = cox*cox + coy*coy + coz*coz - radius*radius

    #     quarter_discriminant = neg_half_b^2 - c
    #     isDiscriminantPositive = quarter_discriminant > 0

    #     if isDiscriminantPositive
    #         @fastmath sqrtd = sqrt(quarter_discriminant) # When using fastmath, negative values just give 0

    #         root = neg_half_b - sqrtd
    #         root2 = neg_half_b + sqrtd

    #         tmp = ifelse(root > tmin, root, root2)
    #         return (ifelse(tmp > tmin, tmp, tmax), x, y, z, radius)
    #     end
    #     return (tmax, x, y, z, radius)
    # end

    # sphere = Sphere([x, y, z], radius, material)

    # minHitT, i = findmin(hitT)

    minHitT = tmax
    minIndex = 0

    for i in eachindex(hittable_list.spheres)
        cox = hittable_list.spheres.centre.x[i] - r.origin.x
        coy = hittable_list.spheres.centre.y[i] - r.origin.y
        coz = hittable_list.spheres.centre.z[i] - r.origin.z

        neg_half_b = r.direction.x * cox + r.direction.y * coy 
        neg_half_b += r.direction.z * coz

        c = cox*cox + coy*coy 
        c += coz*coz 
        c -= hittable_list.spheres.radius[i] * hittable_list.spheres.radius[i]

        quarter_discriminant = neg_half_b^2 - c
        isDiscriminantPositive = quarter_discriminant > 0

        if isDiscriminantPositive
            @fastmath sqrtd = sqrt(quarter_discriminant) # When using fastmath, negative values just give 0
    
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
        # sphere = Sphere()
        @inbounds sphere = hittable_list.spheres[minIndex]
        normal = sphere_normal(sphere, position)

        return hit_record(position, normal, sphere.material, minHitT)
    else 
        return hit_record(zeros(Point), normalize(ones(Point)), Sphere().material, tmax)
    end
end

function metalTest(r, record, attenuation, fuzz)
    tmp = metal(r, record.normal, fuzz)
    return (tmp[1], tmp[2], attenuation)
end

@fastmath function ray_color(r, world, depth, tmin=F(1e-4), tmax=F(Inf))
    accumulated_attenuation = ones(Spectrum)

    for _ in 1:depth
        record = findSceneIntersection(r, world, tmin, tmax)

        @smart_assert !any(isnan.(accumulated_attenuation)) accumulated_attenuation
        if record.t == tmax # nothing hit, t from initialRecord
            @smart_assert all(world_color(r) .>= 0)
            return accumulated_attenuation .* world_color(r)
        else
            @smart_assert isapprox(norm(record.normal), 1; atol=F(1e-2)) record.normal

            # @fastmath @inline (direction, scatterAgain, attenuation) = @match material begin
            #     Material.Lambertian(attenuation) => (lambertian(r, record.normal), true, attenuation)
            #     Material.Dielectric(attenuation, ior) => (glass(r, record.normal, ior), true, attenuation)
            #     Material.Metal(attenuation, fuzz) => (metal(r, normal, fuzz)..., attenuation)
            # end

            @fastmath @inline (direction, scatterAgain, attenuation) = @match record.material begin
                Material.Lambertian(attenuation) => (lambertian(r, record.normal), true, attenuation)
                Material.Dielectric(attenuation, ior) => (glass(r, record.normal, ior), true, attenuation)
                Material.Metal(attenuation, fuzz) => metalTest(r, record, attenuation, fuzz)
            end

            r = Ray(record.p, direction)
            accumulated_attenuation = accumulated_attenuation .* attenuation

            if !scatterAgain
                return zeros(Spectrum)
            end
        end
    end

    return zeros(Spectrum)
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

    append!(HittableList, repeat([Sphere(zeros(Point), 0, Material.Lambertian())], (N - mod1(length(HittableList), N))))
    tmp = CUDA.@allowscalar StructArray(HittableList, unwrap = F -> (F<:AbstractVector))
    return hittable_list(tmp);
end

@fastmath function renderRay(HittableList, maxDepth, pixel_position, camera)
    random_pixel_position = pixel_position + rand(F) * camera.right + rand(F) * camera.down

    defocus_random = camera.lens_radius * random_in_unit_disk()
    defocus_offset = defocus_random[1] * camera.u + defocus_random[2] * camera.v #[camera.u camera.v] * defocus_random

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
        # for j in axes(img, 2)
        #     for i in axes(img, 1)
        #         for sample in 1:samples_per_pixel
        #             img[i, j] += renderRay(HittableList, maxDepth, pixelWorldPosition(camera, i, j), camera)
        #         end
        #         img[i, j] /= samples_per_pixel
        #     end
        # end
        # map!(linear_index -> renderRay(HittableList, maxDepth, camera.upper_left_corner, camera), img, LinearIndices(img))

        map!(img, CartesianIndices(img)) do index
            for sample in 1:samples_per_pixel
                img[index] += renderRay(HittableList, maxDepth, pixelWorldPosition(camera, index), camera)
            end
            img[index] /= samples_per_pixel
        end

        # @tullio img[i, j] = renderRay(HittableList, maxDepth, camera.upper_left_corner, camera)

        # map!(index -> sum(sample -> renderRay(HittableList, maxDepth, pixelWorldPosition(camera, index), camera), 1:samples_per_pixel) / samples_per_pixel, img, CartesianIndices(img))
    end

    return nothing
end

spectrumToRGB(img) = map(x -> RGB(sqrt.(x)...), img)

function setup(resolution=1920/2)
    HittableList = scene_random_spheres()
    spectrum_img = zeros(Spectrum, reverse(imagesize(resolution, 16//9))...)
    camera = Camera(reverse(size(spectrum_img))..., [13, -3, 2], [0, 0, 0], [0, 0, 1], 20, F(0.05), 10)

    return HittableList, spectrum_img, camera
end

function production(parallel=true)
    scene, spectrum_img, camera = setup()

    @time render!(spectrum_img, scene, camera, samples_per_pixel=10, parallel=parallel)
    return spectrumToRGB(spectrum_img)
end

function test(parallel=false)
    scene, spectrum_img, camera = setup(1920/10)

    cu_scene = hittable_list(CUDA.@allowscalar replace_storage(CuArray, scene.spheres))
    cu_spectrum_img = CuArray(spectrum_img)

    CUDA.@time render!(cu_spectrum_img, cu_scene, camera, samples_per_pixel=5, parallel=parallel)

    spectrumToRGB(cu_spectrum_img |> Array)
    # return spectrumToRGB(eachslice(spectrum_img |> Array, dims=(2,3)))
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