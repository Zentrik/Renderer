using StaticArrays, Parameters, LinearAlgebra, BenchmarkTools

const T = Float64
const Point = SVector{3, T}

@with_kw struct Ray @deftype Point
    origin = zeros(Point)
    direction = Point(0, 1, 0)
    # @assert norm(direction) ≈ 1
end

struct Sphere
    centre::Point
    radius::T
end

@inline @fastmath function intersect(ray, sphere::Sphere, tmin, tmax) # Relies on norm(ray.direction) == 1 # @inline together gives 4x speedup for render. @fastmath gives 2% speedup?
    origin_to_centre = ray.origin - sphere.centre

    a = ray.direction ⋅ ray.direction
    half_b = ray.direction ⋅ origin_to_centre
    c = origin_to_centre ⋅ origin_to_centre - sphere.radius^2

    quarter_discriminant = half_b^2 - a*c

    if quarter_discriminant < 0
        return -one(c)
    else
        sqrtd = sqrt(quarter_discriminant);
        
        # Find the nearest root that lies in the acceptable range.
        root = (-half_b - sqrtd) / a
        if tmin < root < tmax
            return root
        elseif tmin < root + sqrtd * 2/a < tmax
            return root + sqrtd * 2/a
        else 
            return -one(c)
        end
    end
end

function scene_intersection(ray, spheres, tmin, tmax)
    besti = 0
    for (i, sphere) in enumerate(spheres)
        t = intersect(ray, sphere, tmin, tmax)
        if t > 0 # we know t ≤ tmax as t is the result of intersect
            tmax = t
            besti = i
        end
    end

    return tmax, besti
end

N = 300
spheres = Sphere.([Point(1, 1, 1) * v for v in  range(-100, 100, N)], range(5, 50, N))
ray = Ray()

scene_intersection(ray, spheres, 1e-4, Inf)
@benchmark scene_intersection(ray, spheres, 1e-4, Inf)