using StructArrays, LoopVectorization, StaticArrays, Parameters, LinearAlgebra, JET, Strided, BenchmarkTools

const T = Float32
const Point = SVector{3, T}

@with_kw struct Ray @deftype Point
    origin = zeros(Point)
    direction = Point(0, 1, 0)
    # @assert norm(direction) ≈ 1
end

struct Sphere
    centre_x::T
    centre_y::T
    centre_z::T
    radius::T
    # record::HitRecord
end

struct Spheres{F, G}
    centre_x::F
    centre_y::F
    centre_z::F
    radius::G
    # record::HitRecord
end

N = 300
spheres = Spheres(collect(range(-100, 100, N)), collect(range(-100, 100, N)), collect(range(-100, 100, N)), collect(range(5, 50, N)))
ray = Ray()

function test(ray, spheres, values, values2, tmin, tmax)
    @turbo for i in eachindex(spheres.radius)
        centre_x = spheres.centre_x[i]
        centre_y = spheres.centre_y[i]
        centre_z = spheres.centre_z[i]
        radius = spheres.radius[i]

        half_b = ray.direction ⋅ ray.origin - (ray.direction.x * centre_x + ray.direction.y * centre_y + ray.direction.z * centre_z)
        c = ray.origin ⋅ ray.origin + (centre_x^2 + centre_y^2 + centre_z^2) - 2 * (ray.origin.x * centre_x + ray.origin.y * centre_y + ray.origin.z * centre_z) - radius^2
        quarter_discriminant = half_b^2 - c
        values[i] = quarter_discriminant
        values2[i] = half_b
    end

    besti = 0
    for (i, quarter_discriminant) in enumerate(values)
        half_b = values2[i]
        if quarter_discriminant < 0
            continue
        else
            sqrtd = sqrt(quarter_discriminant);

            # Find the nearest root that lies in the acceptable range.
            root = -half_b - sqrtd
            if tmin < root < tmax
                tmax = root
                besti = i
            elseif tmin < root + sqrtd * 2 < tmax
                tmax = root + sqrtd * 2
                besti = i
            else 
                continue
            end
        end
    end

    return (tmax, besti)
end

values = similar(spheres.radius) # Matrix{T}(undef, 2, length(spheres.radius))
values2 = similar(spheres.radius)

test(ray, spheres, values, values2, T(0.), T(Inf))
@report_opt test(ray, spheres, values, values2, T(0.), T(Inf))
@benchmark test($ray, $spheres, $values, $values2, $0.0f0, $Inf32)

function testAVXSimple(ray, spheres, tmin, tmax)
    besti = 0
    @turbo for i in eachindex(spheres.radius)
        centre_x = spheres.centre_x[i]
        centre_y = spheres.centre_y[i]
        centre_z = spheres.centre_z[i]
        radius = spheres.radius[i]

        ocx = ray.origin.x - centre_x
        ocy = ray.origin.y - centre_y
        ocz = ray.origin.z - centre_z

        half_b = ray.direction.x * ocx + ray.direction.y * ocy + ray.direction.z * ocz
        c = ocx^2 + ocy^2 + ocz^2 - radius^2

        # half_b = ray.direction ⋅ ray.origin - (ray.direction.x * centre_x + ray.direction.y * centre_y + ray.direction.z * centre_z)
        # c = ray.origin ⋅ ray.origin + (centre_x^2 + centre_y^2 + centre_z^2) - 2 * (ray.origin.x * centre_x + ray.origin.y * centre_y + ray.origin.z * centre_z) - radius^2
        quarter_discriminant = half_b^2 - c
        # values[i] = quarter_discriminant
        # values2[i] = -half_b
        # sqrtd = (quarter_discriminant >= T(0)) * sqrt(quarter_discriminant)
        sqrtd = ifelse(quarter_discriminant >= T(0), sqrt(quarter_discriminant), T(Inf))
        # values[i] = sqrtd
        # values2[i] = sqrtd
        root = -half_b - sqrtd
        # values2[i] = -sqrtd
        # values2[i] = (tmin < root < tmax) * root + (quarter_discriminant < T(0)) * T(-Inf)
        root2 = ifelse(tmin < root < tmax, root, ifelse(tmin < root + sqrtd * 2 < tmax, root + sqrtd * 2, T(Inf)))

        tmax = min(root2, tmax)
        besti = ifelse(root2 < tmax, i, besti+0)
    end

    return tmax, besti
end

testAVXSimple(ray, spheres, T(0.), T(Inf))
@report_opt testAVXSimple(ray, spheres, 0., T(Inf))
@benchmark testAVXSimple($ray, $spheres, $0.0f0, $Inf32)
@code_llvm debuginfo=:none testAVXSimple(ray, spheres, values, values2, T(0.), T(Inf))

function squareTest(spheres)
    a = similar(spheres.radius)
    @turbo for i in eachindex(spheres.radius)
        a[i] = spheres.centre_x[i]^2 + spheres.centre_y[i]^2 + spheres.centre_z[i]
    end
    return a
end
squareTest(spheres)
@report_opt squareTest(spheres)

@inline @fastmath function intersect(ray, sphere::SphereNoAVX, tmin, tmax) # Relies on norm(ray.direction) == 1 # @inline together gives 4x speedup for render. @fastmath gives 2% speedup?
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

function test2(ray, spheres, tmin, tmax)
    for sphere in spheres
        t = intersect(ray, sphere, tmin, tmax)
        if t > 0 # we know t ≤ tmax as t is the result of intersect
            tmax = t
        end
    end

    return tmax
end

struct SphereNoAVX
    centre::Point
    radius::T
    # record::HitRecord
end

spheres = SphereNoAVX.([Point(1, 1, 1) * v for v in  range(-100, 100, N)], range(5, 50, N))

test2(ray, spheres, T(0.), T(Inf))
@benchmark test2($ray, $spheres, $0.0f0, $Inf32)

N = 2
spheres = Spheres(collect(range(-100, 100, N)), collect(range(-100, 100, N)), collect(range(-100, 100, N)), collect(range(5, 50, N)))
function squareTest!(x, a)
    for i in eachindex(x)
        a[i] = ifelse(x[i] >= T(0), T(1), T(-1))
    end
end

a = similar(spheres.radius)
squareTest!(spheres.radius, a)
@report_opt squareTest!(spheres.radius, a)
@code_llvm debuginfo=:none squareTest!(spheres.radius, a)