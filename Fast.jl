using Parameters, StaticArrays, LinearAlgebra, Images, ThreadsX, Random, FunctionWrappers
import FunctionWrappers: FunctionWrapper

const Point = SVector{3, Float64} # We use define Float64 so we dont have points of different types, otherwise Ray, Sphere become parametric types and HittableList needs to be contructed carefully to ensure same types everywhere.
# we dont do const T = Float64 as that makes Point(bla) slow in sample_hemisphere and world() slow.
const Spectrum = SVector{3, Float64}

@with_kw struct Ray @deftype Point
    origin = zeros(Point)
    direction = Point(0, 1, 0)
    # @assert norm(direction) ≈ 1
end
(ray::Ray)(t) = ray.origin + t * ray.direction

@with_kw struct Sphere
    centre::Point = zeros(Point)
    radius::Float64 = 1//2
    colour::Spectrum = ones(Spectrum)
    scatter::FunctionWrapper{Point, Tuple{Ray, Point}} = (ray, n) -> sample_hemisphere(n)
end

imagesize(height, aspectRatio) = (height, round(Int, height / aspectRatio))

@with_kw struct Camera{T<:Real} @deftype Point
    right = Point(2 * 16//9, 0, 0) // 400
	down = - Point(0, 0, 2) / imagesize(nx, 16//9)[2]

    upper_left_corner = Point(-16//9, 1, 1)
	pinhole_location = zeros(Point)

    lens_radius::T = 0

    function Camera(nx=400, ny=imagesize(nx, 16/9)[2], camera_height=2, camera_centre=Point(0, 1, 0), lens_radius::T=0, focus_distance=1)  where T
        aspect_ratio = nx/ny

        camera_height *= focus_distance
        right= Point(camera_height * aspect_ratio, 0, 0) / nx
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

normal(sphere::Sphere, position) = (position - sphere.centre) / sphere.radius

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

function sample_hemisphere(n⃗::SVector{3, Float64})::Point
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
        direction += fuzz * sample_hemisphere(n⃗)
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
metal(fuzz=0) = (ray, n⃗) -> reflect(ray, n⃗, fuzz)

function findSceneIntersection(ray, hittable_list::Vector{Sphere}, tmin, tmax)
    hitIndex = 0
    for i in eachindex(hittable_list) # enumerate 1μs slower
        t = intersect(ray, hittable_list[i], tmin, tmax)
        if t > 0 # we know t ≤ tmax as t is the result of intersect
            tmax = t
            hitIndex = i
        end
    end

    return (tmax, hitIndex)
end

function rayColour(ray, hittable_list, depth, tmin=1e-4, tmax=Inf)::Spectrum
    if depth == 0
        return zeros(Spectrum)
    end

    t, hitIndex = findSceneIntersection(ray, hittable_list, tmin, tmax)

    if t == Inf # nothing hit
        return world(ray)
    else
        hit = hittable_list[hitIndex]
        position = ray(t)
        n⃗ = normal(hit, position)

        ray = Ray(position, hit.scatter(ray, n⃗))
        return rayColour(ray, hittable_list, depth - 1) .* hit.colour
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

function rendexPixel(HittableList, maxDepth, pixel_position, camera)
    random_pixel_position = pixel_position + rand() * camera.right + rand() * camera.down # Is this correct when multithreaded?

    defocus_random = camera.lens_radius * sample_circle()
    defocus_offset = defocus_random[1] * normalize(camera.right) + defocus_random[2] * normalize(camera.down)

    ray = Ray(camera.pinhole_location + defocus_offset, normalize(random_pixel_position - camera.pinhole_location - defocus_offset))

    return rayColour(ray, HittableList, maxDepth)
end

function render!(img, HittableList, camera=Camera(); samples_per_pixel=100, maxDepth=16)
    # for index in CartesianIndices(img)
    #     for sample in 1:samples_per_pixel
    #         img[index] += rendexPixel(HittableList, maxDepth, camera.upper_left_corner + (index[2] - 1) * camera.right + (index[1] - 1) * camera.down, camera)
    #     end
    # end

    ThreadsX.map!(index -> sum(rendexPixel(HittableList, maxDepth, camera.upper_left_corner + (index[2] - 1) * camera.right + (index[1] - 1) * camera.down, camera) for sample in 1:samples_per_pixel), img, CartesianIndices(img))

    # Threads.@threads for index in CartesianIndices(img) # Seems a bit slower thatn ThreadsX ∼5%
    #     img[index] = sum(rendexPixel(HittableList, maxDepth, camera.upper_left_corner + (index[2] - 1) * camera.right + (index[1] - 1) * camera.down, camera) for sample in 1:samples_per_pixel)
    # end

    img ./= samples_per_pixel

    return nothing
end
    
# @code_warntype rendexPixel(scene_random_spheres(), 10, Point(0, 0, 1), Camera());
# @code_warntype rayColour(Ray(), scene_random_spheres(), 10, 1e-4, Inf);
# @code_warntype findSceneIntersection(Ray(), scene_random_spheres(), 1e-4, Inf);
# @code_warntype intersect(Ray(), scene_random_spheres()[1], 1e-4, Inf);

# @enter spectrum_img, rgb_img = render(imagesize(400, 16/9)...)

using Profile, PProf
function profile()
    scene = scene_random_spheres()
    img = zeros(Spectrum, imagesize(10, 16//9)...)
    camera = Camera(imagesize(10, 16//9)..., [13, -3, 2], [0, 0, 0], [0, 0, 1], 20, 0.05, 10)
    spectrum_img, rgb_img = render!(img, scene, camera)

    Profile.Allocs.clear(); 

    @time Profile.Allocs.@profile sample_rate=1 spectrum_img, rgb_img = render!(img, scene, camera)

    PProf.Allocs.pprof(from_c=false, webport=8080)
end


using BenchmarkTools
function run(print=false)
    scene = scene_random_spheres()
    spectrum_img = zeros(Spectrum, reverse(imagesize(1920, 16//9))...)
    @time render!(spectrum_img, scene, Camera(reverse(size(spectrum_img))..., [13, -3, 2], [0, 0, 0], [0, 0, 1], 20, 0.05, 10), samples_per_pixel=1000)
    rgb_img = map(x -> RGB(x...), spectrum_img)
    if print
        rgb_img |> display
    end
    return rgb_img
end

# @btime spectrum_img, rgb_img = render(imagesize(50, 16/9)..., Camera(imagesize(50, 16/9)..., [13, -3, 2], [0, 0, 0], [0, 0, 1], 20, 0.05, 10), false) # 6.990 s (8986595 allocations: 716.80 MiB)
# save("render.png", rgb_img)
# save("render.exr", rgb_img)

# using ImageContrastAdjustment
# adjust_histogram(rgb_img, GammaCorrection(gamma=1/2))
# map(x -> RGB(x.^(1/2)...), spectrum_im