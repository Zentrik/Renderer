using Parameters, StaticArrays, LinearAlgebra, Images

const T = Float64
const Point = SVector{3, T} 

const Spectrum = SVector{3, T}

@with_kw struct Ray @deftype Point
    origin = @SVector zeros(3)
    direction = Point(0, 1, 0)
    @assert norm(direction) ≈ 1
end

@with_kw struct Sphere
    centre::Point = zeros(Point, 3)
    radius::T = 0.5
end

function intersect(sphere::Sphere, ray, tmin, tmax) # Relies on norm(ray.direction) == 1
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
        elseif tmin < root < tmax
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

function rayColour(ray, HittableList, depth, tmin=1e-4, tmax=Inf)
    if depth ≤ 0
        return zeros(Spectrum)
    end

    hitIndex = 0
    for (i, hittable) in enumerate(HittableList)
        t = intersect(hittable, ray, tmin, tmax) 
        if t > 0 # we know t ≤ tmax as t is the result of intersect
            tmax = t
            hitIndex = i
        end
    end

    if hitIndex == 0 # nothing hit
        return world(ray)
    else
        position = advance(ray, tmax)

        ξ₁ = 2 * rand() - 1
        ξ₂ = rand()
        
        direction = Point(cos(2π * ξ₂) * sqrt(1 - ξ₁^2), sin(2π * ξ₂) * sqrt(1 - ξ₁^2), ξ₁)
        if direction ⋅ normal(HittableList[hitIndex], position) < 0
            direction *= -1
        end

        # x = cos(2π * ξ₂) * sqrt(1 - ξ₁^2)
        # y = sin(2π * ξ₂) * sqrt(1 - ξ₁^2)
        # z = ξ₁
        
        # k⃗ = normal(HittableList[hitIndex], position)
        # i⃗ = cross(k⃗, Point(0, 0, 1))
        # j⃗ = cross(i⃗, Point(0, 0, 1))
        # direction = x * i⃗ + y * j⃗ + z * k⃗

        ray = Ray(position, direction)
        return rayColour(ray, HittableList, depth - 1) / 2
        # n = normalize(advance(ray, tmax) - HittableList[hitIndex].centre)
        # return Spectrum(([n.x, n.z, -n.y] + ones(3)) / 2)  
    end
end

function render(nx, ny, camera_height = 2, camera_centre = Point(0, 1, 0), focal_length = 1)
    sphere1 = Sphere(centre=[0, 1, 0])
    sphere2 = Sphere([0, 1, -100.5], 100)

    HittableList = [sphere1, sphere2]


    aspect_ratio = nx / ny

	i⃗ = Point(camera_height * aspect_ratio, 0, 0) / nx
	k⃗ = Point(0, 0, camera_height) / ny
    upper_left_corner = camera_centre - i⃗ * nx / 2 + k⃗ * ny / 2

	camera_origin = camera_centre - Point(0, focal_length, 0)

    img = zeros(Spectrum, ny, nx)

    samples_per_pixel = 10
    maxDepth = 50

    for index in CartesianIndices(img)
        u = (index[2] - 1)
        v = (index[1] - 1)
        pixel_position = upper_left_corner + u * i⃗ - v * k⃗

        for sample in 1:samples_per_pixel
            random_pixel_position = pixel_position + rand() * i⃗ - rand() * k⃗

            ray = Ray(camera_origin, normalize(random_pixel_position - camera_origin))

            img[index] += rayColour(ray, HittableList, maxDepth)
        end
    end
    img /= samples_per_pixel

    map(x -> RGB(x...), img) |> display
    return img, map(x -> RGB(x...), img)
end
    
function imagesize(height, aspectRatio)
    return (height, round(Int, height / aspectRatio))
end

spectrum_img, rgb_img = render(imagesize(1920, 16/9)...)
save("render.png", rgb_img)
save("render.exr", rgb_img)