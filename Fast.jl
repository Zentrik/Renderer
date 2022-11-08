using Parameters, StaticArrays, LinearAlgebra, Images, ThreadsX, FunctionWrappers # Look into https://github.com/AlgebraicJulia/CompTime.jl
import FunctionWrappers: FunctionWrapper

const T = Float64
const Point = SVector{3, T} # We use define Float64 so we dont have points of different types, otherwise Ray, Sphere become parametric types and HittableList needs to be contructed carefully to ensure same types everywhere. (can we somehow promote it)
# we dont do const T = Float64 as that makes Point(...) slow in sample_hemisphere and world() slow. # seems fine now? i think splitting sample_hemisphere into sample_sphere has helpled.
const Spectrum = SVector{3, T}

@with_kw struct Ray @deftype Point
    origin = zeros(Point)
    direction = Point(0, 1, 0)
    # @assert norm(direction) ≈ 1
end
(ray::Ray)(t) = ray.origin + t * ray.direction

struct HitRecord
    colour::Spectrum
    scatter::FunctionWrapper{Point, Tuple{Ray, Point}}
    normal::FunctionWrapper{Point, Tuple{Point}}
end
function (h::HitRecord)(position, ray)::Tuple{Point, Spectrum}
    return (h.scatter(ray, h.normal(position)), h.colour)
end

abstract type Primitive end

@with_kw struct Sphere <: Primitive
    centre::Point
    radius::T
    record::HitRecord
    Sphere(centre=zeros(Point), radius=1//2, colour=ones(Spectrum), scatter=diffuse) = new(centre, radius, HitRecord(colour, scatter, (position) -> (position - centre) / radius))
end

@with_kw struct Scene{T}
    Sphere::T = []
end

imagesize(height, aspectRatio) = round.(Int, (height, height / aspectRatio))

@with_kw struct Camera{T<:Real} @deftype Point
    right = Point(2 * 16//9, 0, 0) // 400
	down = - Point(0, 0, 2) / imagesize(nx, 16//9)[2]

    upper_left_corner = Point(-16//9, 1, 1)
	pinhole_location = zeros(Point)

    lens_radius::T = 0

    function Camera(nx=400, ny=imagesize(nx, 16/9)[2], camera_height=2, camera_centre=Point(0, 1, 0), lens_radius::T=0, focus_distance=1)  where T
        aspect_ratio = nx/ny

        camera_height *= focus_distance
        right = Point(camera_height * aspect_ratio, 0, 0) / nx
        down = - Point(0, 0, camera_height) / ny
        upper_left_corner = camera_centre - right * nx / 2 - down * ny / 2
        pinhole_location = camera_centre - Point(0, focus_distance, 0)
    
        return new{T}(right, down, upper_left_corner, pinhole_location, lens_radius)
    end
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

        return new{T}(right, down, upper_left_corner, pinhole_location, lens_radius)
    end
end
pixelWorldPosition(camera, index) = camera.upper_left_corner + (index[2] - 1) * camera.right + (index[1] - 1) * camera.down

# using MuladdMacro
# @inbounds @inline @muladd StaticArrays.dot(v0::Point, v1::Point) = v0.x * v1.x + v0.y * v1.y + v0.z * v1.z

norm2(x) = x ⋅ x

@inline @fastmath function intersect(ray, sphere::Sphere, tmin, tmax) # Relies on norm(ray.direction) == 1 # @inline together gives 4x speedup for render. @fastmath gives 2% speedup?
    origin_to_centre = ray.origin - sphere.centre
    half_b = ray.direction ⋅ origin_to_centre
    c = origin_to_centre ⋅ origin_to_centre - sphere.radius^2
    quarter_discriminant = half_b^2 - c
    if quarter_discriminant < 0
        return -one(c)
    else
        sqrtd = sqrt(quarter_discriminant);

        # Find the nearest root that lies in the acceptable range.
        root = -half_b - sqrtd
        if tmin < root < tmax
            return root
        elseif tmin < root + sqrtd * 2 < tmax
            return root + sqrtd * 2
        else 
            return -one(c)
        end
    end
end

function world(ray)
    interp = (ray.direction.z + 1) / 2
    return (1 - interp) * Spectrum(1, 1, 1) + interp * Spectrum(0.5, 0.7, 1.0) # Spectrum{3, Float64} instead of Spectrum{3, T} saves 1mb, 0.2s for nx=50. 
end

function sample_circle()
    θ = 2π * rand()
    return SA[cos(θ), sin(θ)]
end

function sample_sphere()
    ξ₁ = 2 * rand() - 1
    ξ₂ = rand()

    # sample = oftype(n⃗, [cos(2π * ξ₂) * sqrt(1 - ξ₁^2), sin(2π * ξ₂) * sqrt(1 - ξ₁^2), ξ₁])
    return Point(cos(2π * ξ₂) * sqrt(1 - ξ₁^2), sin(2π * ξ₂) * sqrt(1 - ξ₁^2), ξ₁) # allocates memory some times? (seems fine now?)
end

function sample_hemisphere(n⃗)
    sample = sample_sphere()
    if sample ⋅ n⃗ < 0
       return -sample
    else
        return sample
    end
end

function reflect(ray, n⃗, fuzz=0)
    direction = ray.direction - 2(ray.direction ⋅ n⃗) * n⃗

    if fuzz ≉ 0
        # direction += fuzz * sample_hemisphere(n⃗)
        direction += fuzz * sample_sphere()
    end

    return normalize(direction)
end

function shick(cosθ, ior_ratio)
    r0 = ((1 - ior_ratio) / (1 + ior_ratio))^2
    return r0 = (1 - r0) * (1 - cosθ)^5
end

function glass(ray, n⃗, ior)
    air_ior = 1

    cosθ = - ray.direction ⋅ n⃗
    into = cosθ > 0
    # cosθ = min(cosθ, one(T))
    sinθ = sqrt(1 - cosθ^2)
    
    if into
        ior_ratio = air_ior / ior
    else
        ior_ratio = ior / air_ior
        n⃗ *= -1
        cosθ *= -1
    end

    if ior_ratio * sinθ > 1 || rand() < shick(cosθ, ior_ratio)
        return normalize(reflect(ray, n⃗))
    else
        Rperp = ior_ratio * (ray.direction + cosθ * n⃗)
        Rpar = - sqrt(1 - norm2(Rperp)) * n⃗

        return normalize(Rperp + Rpar)
    end
end

glass(ior=3//2) = (ray, n⃗) -> glass(ray, n⃗, ior)
diffuse(ray, n) = sample_hemisphere(n)
metal(fuzz=0) = (ray, n⃗) -> reflect(ray, n⃗, fuzz) # is it slow?

const initialRecord = Sphere().record

function findSceneIntersection(ray, hittable_list, tmin, tmax)
    record = initialRecord
    
    for i in eachindex(hittable_list.Sphere)
        t = intersect(ray, hittable_list.Sphere[i], tmin, tmax)
        if t > 0 # we know t ≤ tmax as t is the result of intersect
            tmax = t
            record = hittable_list.Sphere[i].record
        end
    end

    return (tmax, record)
end

function rayColour(ray, hittable_list, depth, tmin=1e-4, tmax=Inf)::Spectrum
    if depth == 0
        return zeros(Spectrum)
    end

    t, record = findSceneIntersection(ray, hittable_list, tmin, tmax)

    if t == tmax # nothing hit
        return world(ray)
    else
        position = ray(t)
        direction, colour = record(position, ray) # scatter right now only depends on ray direction so we don't need to advance it?

        ray = Ray(position, direction)
        return rayColour(ray, hittable_list, depth - 1) .* colour
    end
end

function scene_random_spheres()
	# HittableList = Sphere[] # SVector{486, Sphere} #  # StructArrays{Sphere} #
    HittableList = [Sphere([0, 0, -1000], 1000, [.5, .5, .5], diffuse)]

	for a in -11:10, b in -11:10
		choose_mat = rand()
		center = [a + 0.9*rand(), -(b + 0.9*rand()), 0.2]

		# skip spheres too close?
		if norm(center - SA[4,0, 0.2]) < 0.9 continue end 
			
		if choose_mat < 4//5
			# diffuse
			albedo = rand(Spectrum) .* rand(Spectrum)
			push!(HittableList, Sphere(center, 1//5, albedo, diffuse))
		elseif choose_mat < 95//100
			# metal
			albedo = rand(Spectrum) / 2 .+ 1/2
			fuzz = rand() * 5
			push!(HittableList, Sphere(center, 0.2, albedo, metal(fuzz)))
		else
			# glass
			push!(HittableList, Sphere(center, 0.2, ones(Spectrum), glass()))
		end
	end

	push!(HittableList, Sphere([0,0,1], 1, ones(Spectrum), glass()))
	push!(HittableList, Sphere([-4,0,1], 1, [0.4,0.2,0.1], diffuse))
	push!(HittableList, Sphere([4,0,1], 1, [0.7,0.6,0.5], metal()))
    return HittableList #HittableDict(HittableList) #SVector{length(HittableList), Sphere}(HittableList)
end

function renderRay(HittableList, maxDepth, pixel_position, camera)
    random_pixel_position = pixel_position + rand() * camera.right + rand() * camera.down # Is this correct when multithreaded?

    defocus_random = camera.lens_radius * sample_circle()
    defocus_offset = defocus_random[1] * normalize(camera.right) + defocus_random[2] * normalize(camera.down)

    ray = Ray(camera.pinhole_location + defocus_offset, normalize(random_pixel_position - camera.pinhole_location - defocus_offset))

    return rayColour(ray, HittableList, maxDepth)
end

function render!(img, HittableList, camera=Camera(); samples_per_pixel=100, maxDepth=16, parallel=true)
    if parallel
        ThreadsX.map!(index -> sum(sample -> renderRay(HittableList, maxDepth, pixelWorldPosition(camera, index), camera), 1:samples_per_pixel) / samples_per_pixel, img, CartesianIndices(img))
    else
        map!(index -> sum(sample -> renderRay(HittableList, maxDepth, pixelWorldPosition(camera, index), camera), 1:samples_per_pixel) / samples_per_pixel, img, CartesianIndices(img))
    end

    return nothing
end
    
# @code_warntype rendexPixel(scene_random_spheres(), 10, Point(0, 0, 1), Camera());
# @code_warntype rayColour(Ray(), scene_random_spheres(), 10, 1e-4, Inf);
# @code_warntype findSceneIntersection(Ray(), scene_random_spheres(), 1e-4, Inf);
# @code_warntype intersect(Ray(), scene_random_spheres()[1], 1e-4, Inf);

function run(;print=false, parallel=true)
    HittableList = scene_random_spheres();
    scene = Scene(Tuple(HittableList));
    spectrum_img = zeros(Spectrum, reverse(imagesize(1920, 16//9))...)
    camera = Camera(reverse(size(spectrum_img))..., [13, -3, 2], [0, 0, 0], [0, 0, 1], 20, 0.05, 10)
    @time render!(spectrum_img, scene, camera, samples_per_pixel=10, parallel=parallel)
    rgb_img = map(x -> RGB(x...), spectrum_img)
    if print
        rgb_img |> display
    end
    return rgb_img
end

using Profile, PProf
function profile()
    HittableList = scene_random_spheres();
    scene = Scene(HittableList);
    spectrum_img = zeros(Spectrum, reverse(imagesize(10, 16//9))...)
    camera = Camera(reverse(size(spectrum_img))..., [13, -3, 2], [0, 0, 0], [0, 0, 1], 20, 0.05, 10)
    render!(spectrum_img, scene, camera, samples_per_pixel=10)

    Profile.Allocs.clear(); 

    @time Profile.Allocs.@profile sample_rate=1 render!(spectrum_img, scene, camera, parallel=false)

    PProf.Allocs.pprof(from_c=false, webport=8080)
end

function profview(;print=false, parallel=true)
    HittableList = scene_random_spheres();
    scene = Scene(Tuple(HittableList));
    spectrum_img = zeros(Spectrum, reverse(imagesize(1920, 16//9))...)
    camera = Camera(reverse(size(spectrum_img))..., [13, -3, 2], [0, 0, 0], [0, 0, 1], 20, 0.05, 10)
    @profview render!(spectrum_img, scene, camera, samples_per_pixel=10, parallel=parallel)
    rgb_img = map(x -> RGB(x...), spectrum_img)
    if print
        rgb_img |> display
    end
    return rgb_img
end

using BenchmarkTools
function benchmark(;print=false, parallel=true)
    HittableList = scene_random_spheres();
    scene = Scene(Tuple(HittableList));
    spectrum_img = zeros(Spectrum, reverse(imagesize(1920/2, 16//9))...)
    camera = Camera(reverse(size(spectrum_img))..., [13, -3, 2], [0, 0, 0], [0, 0, 1], 20, 0.05, 10)
    display(@benchmark render!($spectrum_img, $scene, $camera, samples_per_pixel=10, parallel=$parallel))
    rgb_img = map(x -> RGB(x...), spectrum_img)
    if print
        rgb_img |> display
    end
    return nothing
end
# @benchmark findSceneIntersection(ray, scene, 1e-4, Inf) setup=(ray=Ray(); scene=Scene(scene_random_spheres()))
# @benchmark intersect(ray, sphere, 1e-4, Inf) setup=(ray=Ray(); sphere=Sphere())

# save("render.png", rgb_img)
# save("render.exr", rgb_img)

# using ImageContrastAdjustment
# adjust_histogram(rgb_img, GammaCorrection(gamma=1/2))
# map(x -> RGB(x.^(1/2)...), spectrum_img)