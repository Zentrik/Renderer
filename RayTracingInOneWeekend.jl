using Parameters, StaticArrays, LinearAlgebra, Images, FileIO

const T = Float64
const Point = SVector{3, T} 

@with_kw struct Ray @deftype Point
    origin = @SVector zeros(3)
    direction = SA[0, 1, 0]
    @assert norm(direction) ≈ 1
end

@with_kw struct Sphere
    centre::Point = @SVector zeros(3)
    radius::T = 0.5
end

# @with_kw struct HitRecord @deftype Point
#     t::T
#     object
#     @assert norm(normal) ≈ 1 #necessary?
# end

# @with_kw struct Spectrum{N <: Int}
#     coeffs::SVector{N, T} = @SVector zeros(3)
# end
const Spectrum = SVector{3, T}

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

function rayColour(ray, HittableList, tmin=0, tmax=Inf)
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
        n = normalize(advance(ray, tmax) - HittableList[hitIndex].centre)
        return Spectrum(([n.x, n.z, -n.y] + ones(3)) / 2)  
    end
end

function render(nx, ny, camera_height = 2, camera_centre = SA[0, 1, 0], focal_length = 1)
    sphere1 = Sphere(centre=[0, 1, 0])
    sphere2 = Sphere([0, 1, -100.5], 100)

    HittableList = [sphere1, sphere2]


    aspect_ratio = nx / ny

	i⃗ = SA[camera_height * aspect_ratio, 0, 0] / nx
	k⃗ = SA[0, 0, camera_height] / ny
    upper_left_corner = camera_centre - i⃗ * nx / 2 + k⃗ * ny / 2

	camera_origin = camera_centre - SA[0, focal_length, 0]

    img = zeros(Spectrum, ny, nx)

    samples_per_pixel = 10

    for index in CartesianIndices(img)
        u = (index[2] - 1)
        v = (index[1] - 1)
        pixel_position = upper_left_corner + u * i⃗ - v * k⃗

        for sample in 1:samples_per_pixel
            random_pixel_position = pixel_position + rand() * i⃗ - rand() * k⃗

            ray = Ray(camera_origin, normalize(random_pixel_position - camera_origin))

            img[index] += rayColour(ray, HittableList)
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

# save("test.png", rgb_img) # It doesn't seem to be doing a gamma transformation to ppm file, so maybe not for this either.
# save(File{format"PPMText"}("test.ppm"), rgb_img)
# t2 = load("test.ppm")
# reduce(vcat, [channestelview(test2)[:, index[1], index[2]] for index in CartesianIndices(test2)])' * 255 .|> Int
# save("test.exr", rgb_img)
# # @enter img = render(400, round(Int, 400 * 9/16))

# test4 = load("test.png")