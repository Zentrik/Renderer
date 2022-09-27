using Parameters, StaticArrays, LinearAlgebra, Images, ProgressMeter

const T = Float64
const Point = SVector{3, T} 

const Spectrum = SVector{3, T}

@with_kw struct Ray @deftype Point
    origin = @SVector zeros(3)
    direction = Point(0, 1, 0)
    @assert norm(direction) ≈ 1
end

@with_kw struct Sphere{M}
    centre::Point = zeros(Point, 3)
    radius::T = 0.5
    material::M = Diffuse()
end

@with_kw struct Diffuse
    attenuation::Spectrum = ones(Spectrum)
end

@with_kw struct Metal
    attenuation::Spectrum = ones(Spectrum)
    fuzz::T = 0
end

@with_kw struct Glass
    attenuation::Spectrum = ones(Spectrum)
    ior::T = 1.5
end

function imagesize(height, aspectRatio)
    return (height, round(Int, height / aspectRatio))
end

@with_kw struct Camera @deftype Point
    right = Point(2 * 16/9, 0, 0) / 400
	down = - Point(0, 0, 2) / imagesize(nx, 16/9)[2]

    upper_left_corner = Point(-16/9, 1, 1)
	pinhole_location = zeros(Point)

    lens_radius::T = 0

    function Camera(nx=400, ny=imagesize(nx, 16/9)[2], camera_height=2, camera_centre=Point(0, 1, 0), lens_radius=0, focus_distance=1) 
        aspect_ratio = nx/ny

        camera_height *= focus_distance
        right= Point(camera_height * aspect_ratio, 0, 0) / nx
        down = - Point(0, 0, camera_height) / ny
        upper_left_corner = camera_centre - right * nx / 2 - down * ny / 2
        pinhole_location = camera_centre - Point(0, focus_distance, 0)
    
        return new(right, down, upper_left_corner, pinhole_location, lens_radius)
    end
    function Camera(nx=400, ny=imagesize(nx, 16/9)[2], pinhole_location=Point(0, 0, 0), lookat=Point(0, 1, 0), up=Point(0, 0, 1), vfov=2atand(1), lens_radius=0, focus_distance=1)
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

        return new(right, down, upper_left_corner, pinhole_location, lens_radius)
    end
end

norm2(x) = x ⋅ x

function intersect(ray, sphere::Sphere, tmin, tmax) # Relies on norm(ray.direction) == 1
    origin_to_centre = ray.origin - sphere.centre
    half_b = ray.direction ⋅ origin_to_centre
    c = origin_to_centre ⋅ origin_to_centre - sphere.radius^2
    quarter_discriminant = half_b^2 - c
    if quarter_discriminant < 0
        return -one(T)
    else
        sqrtd = sqrt(quarter_discriminant);

        # Find the nearest root that lies in the acceptable range.
        root = -half_b - sqrtd
        if tmin < root < tmax
            return root
        elseif tmin < root + sqrtd * 2 < tmax
            return root + sqrtd * 2
        else 
            return -one(T)
        end
    end
end

function normal(sphere::Sphere, position)
    return (position - sphere.centre) / sphere.radius
end

function advance(ray, t)
    return ray.origin + t * ray.direction
end

function world(ray)
    interp = (ray.direction.z + 1) / 2
    return (1 - interp) * Spectrum([1, 1, 1]) + interp * Spectrum([0.5, 0.7, 1.0])
end

function sample_circle()
    θ = 2π * rand(T)
    return SVector{2, T}(cos(θ), sin(θ))
end

function sample_hemisphere(n⃗)
    ξ₁ = 2 * rand(T) - 1
    ξ₂ = rand(T)
    
    sample = Point(cos(2π * ξ₂) * sqrt(1 - ξ₁^2), sin(2π * ξ₂) * sqrt(1 - ξ₁^2), ξ₁)
    if sample ⋅ n⃗ < 0
        sample *= -1
    end
    return sample
end

sample_nsphere(n) = normalize(randn(n))

function reflect(ray, n⃗, fuzz=0)
    direction = ray.direction - 2(ray.direction ⋅ n⃗) * n⃗

    if fuzz ≉ 0 
        direction += fuzz * sample_hemisphere(n⃗)
    end

    return normalize(direction)
end

function refract(dir, n⃗, refraction_ratio)
    cosθ = min(-dir ⋅ n⃗, one(T))
    r_out_perp = refraction_ratio * (dir + cosθ*n⃗)
    r_out_parallel = -√(abs(one(T)-norm2(r_out_perp))) * n⃗
    normalize(r_out_perp + r_out_parallel)
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

    if ior_ratio * sinθ > 1 || rand(T) < shick(cosθ, ior_ratio)
        return normalize(reflect(ray, n⃗))
    else
        Rperp = ior_ratio * (ray.direction + cosθ * n⃗)
        Rpar = - sqrt(1 - norm2(Rperp)) * n⃗

        @assert normalize(Rperp + Rpar) ≈ refract(ray.direction, n⃗, ior_ratio)
        return normalize(Rperp + Rpar)
    end
end

function hackyway(n⃗)
    while true
        sample = rand(Point) * 2 .- 1
        if norm2(sample) ≤ 1
            return normalize(n⃗ + sample)
        end
    end
end

function lambertian(n⃗)
    while true
        sample = rand(Point) * 2 .- 1
        if norm2(sample) ≤ 1
            return normalize(n⃗ + normalize(sample))
        end
    end
end

function rayColour(ray, HittableList, depth, tmin=1e-4, tmax=Inf)
    if depth ≤ 0
        return zeros(Spectrum)
    end

    hitIndex = 0
    for (i, hittable) in enumerate(HittableList)
        t = intersect(ray, hittable, tmin, tmax) 
        if t > 0 # we know t ≤ tmax as t is the result of intersect
            tmax = t
            hitIndex = i
        end
    end

    if hitIndex == 0 # nothing hit
        return world(ray)
    else
        hit = HittableList[hitIndex]
        position = advance(ray, tmax)
        n⃗ = normal(hit, position)

        if typeof(hit.material) == Diffuse
            direction = sample_hemisphere(n⃗)
            # direction = hackyway(n⃗)
            # direction = lambertian(n⃗)
        elseif typeof(hit.material) == Metal
            direction = reflect(ray, n⃗, hit.material.fuzz)
        elseif typeof(hit.material) == Glass
            direction = glass(ray, n⃗, hit.material.ior)
        end

        ray = Ray(position, direction)
        return rayColour(ray, HittableList, depth - 1) .* hit.material.attenuation
    end
end

function scene_random_spheres()
	HittableList = Sphere[]
	push!(HittableList, Sphere([0, 0, -1000], 1000, Diffuse([.5, .5, .5])))

	for a in -11:10, b in -11:10
		choose_mat = rand(T)
		center = [a + 0.9*rand(T), -(b + 0.9*rand(T)), 0.2]

		# skip spheres too close?
		if norm(center - SA{T}[4,0, 0.2]) < 0.9 continue end 
			
		if choose_mat < T(0.8)
			# diffuse
			albedo = rand(Spectrum) .* rand(Spectrum)
			push!(HittableList, Sphere(center, 0.2, Diffuse(albedo)))
		elseif choose_mat < T(0.95)
			# metal
			albedo = rand(Spectrum) / 2 .+ 1/2
			fuzz = rand(T) * 5
			push!(HittableList, Sphere(center, 0.2, Metal(albedo, fuzz)))
		else
			# glass
			push!(HittableList, Sphere(center, 0.2, Glass()))
		end
	end

	push!(HittableList, Sphere([0,0,1], 1, Glass()))
	push!(HittableList, Sphere([-4,0,1], 1, Diffuse([0.4,0.2,0.1])))
	push!(HittableList, Sphere([4,0,1], 1, Metal(attenuation=[0.7,0.6,0.5])))
	return HittableList
end

function render(nx, ny, camera=Camera())
    # sphere1 = Sphere([0, 1, -100.5], 100, Diffuse([0.8, 0.8, 0]))
    # sphere2 = Sphere(centre=[0, 1, 0], material=Diffuse([0.1, 0.2, 0.5]))
    # sphere3 = Sphere(centre=[-1, 1, 0], material=Glass(ior = 1.5))
    # sphere4 = Sphere(centre=[1, 1, 0], material=Metal([0.8, 0.6, 0.2], 0))
    # sphere5 = Sphere([-1, 1, 0], -.45, Glass(ior = 1.5))

    # HittableList = [sphere1, sphere2, sphere3, sphere4, sphere5]

    HittableList = scene_random_spheres()

    img = zeros(Spectrum, ny, nx)

    samples_per_pixel = 10
    maxDepth = 50

    @showprogress for index in CartesianIndices(img)
        u = (index[2] - 1)
        v = (index[1] - 1)
        pixel_position = camera.upper_left_corner + u * camera.right + v * camera.down

        for sample in 1:samples_per_pixel
            random_pixel_position = pixel_position + rand(T) * camera.right + rand(T) * camera.down

            defocus_random = camera.lens_radius * sample_circle()
            defocus_offset = defocus_random[1] * normalize(camera.right) + defocus_random[2] * normalize(camera.down)

            ray = Ray(camera.pinhole_location + defocus_offset, normalize(random_pixel_position - camera.pinhole_location - defocus_offset))

            img[index] += rayColour(ray, HittableList, maxDepth)
        end
    end
    img /= samples_per_pixel

    map(x -> RGB(x...), img) |> display
    return img, map(x -> RGB(x...), img)
end
    
render(nx=400) = render(imagesize(nx, 16/9)..., Camera(imagesize(nx, 16/9)...))

# @enter spectrum_img, rgb_img = render(imagesize(400, 16/9)...)
spectrum_img, rgb_img = render(imagesize(400, 16/9)..., Camera(imagesize(400, 16/9)..., [13, -3, 2], [0, 0, 0], [0, 0, 1], 20, 0.05, 10))
save("render.png", rgb_img)
save("render.exr", rgb_img)

# using ImageContrastAdjustment
# adjust_histogram(rgb_img, GammaCorrection(gamma=1/2))
map(x -> RGB(x.^(1/2)...), spectrum_img)