using Parameters, StaticArrays, LinearAlgebra, Images

const T = Float64
const Point = SVector{3, T} 

@with_kw struct Ray @deftype Point
    origin = @SVector zeros(3)
    direction = SA[0; 0; 1]
    @assert norm(direction) ≈ 1
end

@with_kw struct Sphere
    centre::Point = @SVector zeros(3)
    radius::T = 1
end

function intersect(sphere::Sphere, ray) # Relies on norm(ray.direction) == 1
    origin_to_centre = ray.origin - sphere.centre
    half_b = ray.direction ⋅ origin_to_centre
    c = origin_to_centre ⋅ origin_to_centre - sphere.radius^2
    quarter_discriminant = half_b^2 - c
    if quarter_discriminant < 0
        return - one(T)
    else
        if -half_b - sqrt(quarter_discriminant) > 0
            return -half_b - sqrt(quarter_discriminant)
        elseif -half_b + sqrt(quarter_discriminant) ≥ 0
            return -half_b - sqrt(quarter_discriminant)
        else
            return - one(T)
        end
    end
end

function advance(ray, t)
    return ray.origin + t * ray.direction
end

function scene(ray)
    sphere = Sphere(centre=[0, 0, 1])
    t = intersect(sphere, ray)
    if t > 0
        n = normalize(advance(ray, t) - sphere.centre)
        return ([n.x, n.y, -n.z] + ones(3)) / 2
    else
        return ones(3)
    end
end

function render(nx, ny, camera_height = 2, camera_centre = SA[0, 0, 1], focal_length = 1)
    aspect_ratio = nx / ny

	i⃗ = SA[camera_height * aspect_ratio, 0, 0]
	j⃗ = SA[0, camera_height, 0]
    upper_left_corner = camera_centre - i⃗/2 + j⃗/2
    center_upper_left_corner = upper_left_corner + (i⃗ / nx - j⃗ / ny) / 2

	camera_origin = camera_centre - SA[0, 0, focal_length]

    img = zeros(RGB, ny, nx)
    for index in CartesianIndices(img)
        u = (index[2] - 1) / (nx - 1)
        v = (index[1] - 1) / (ny - 1)
        pixel_position = center_upper_left_corner + u * i⃗ - v * j⃗ 

        ray = Ray(camera_origin, normalize(pixel_position - camera_origin))

        img[index] = RGB(scene(ray)...)
    end
    return img
end
    

img = render(400, round(Int, 400 * 9/16))