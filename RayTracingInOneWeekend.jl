using Parameters, StaticArrays, LinearAlgebra, Images

const Point = SVector{3, Float64} 

@with_kw struct Ray{R <: Real} @deftype SVector{3, R} 
    origin = @SVector zeros(Int, 3)
    direction = SA[0; 0; 1]
    @assert norm(direction) ≈ 1
end
Ray(origin, direction) = Ray(promote(origin, direction)...)

@with_kw struct Sphere{R <: Real}
    centre::SVector{3, R} = zeros(SVector{3, Int})
    radius::R = 1
end
Sphere(centre, radius) = Sphere(promote(centre, radius)...)

# function intersect(centre, radius, ray) # Relies on norm(ray.direction) == 1
#     origin_to_centre = ray.origin - centre
#     half_b = ray.direction ⋅ origin_to_centre
#     c = origin_to_centre ⋅ origin_to_centre - radius^2
#     quarter_discriminant = half_b^2 - c
#     if quarter_discriminant < 0
#         return - one(quarter_discriminant)
#     else
#         if -half_b - sqrt(quarter_discriminant) > 0
#             return -half_b - sqrt(quarter_discriminant)
#         elseif -half_b + sqrt(quarter_discriminant) ≥ 0
#             return -half_b - sqrt(quarter_discriminant)
#         else
#             return - one(quarter_discriminant)
#         end
#     end
# end

function intersect(sphere::Sphere, ray) # Relies on norm(ray.direction) == 1
    origin_to_centre = ray.origin - sphere.centre
    half_b = ray.direction ⋅ origin_to_centre
    c = origin_to_centre ⋅ origin_to_centre - sphere.radius^2
    quarter_discriminant = half_b^2 - c
    if quarter_discriminant < 0
        return - one(quarter_discriminant)
    else
        if -half_b - sqrt(quarter_discriminant) > 0
            return -half_b - sqrt(quarter_discriminant)
        elseif -half_b + sqrt(quarter_discriminant) ≥ 0
            return -half_b - sqrt(quarter_discriminant)
        else
            return - one(quarter_discriminant)
        end
    end
end

function advance(ray, t)
    return ray.origin + t * ray.direction
end

function scene(ray)
    sphere = Sphere(centre=SA[0, 0, 1.])
    t = intersect(sphere, sphere, ray)
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