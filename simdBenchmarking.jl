using StaticArrays, Parameters, BenchmarkTools, StructArrays, LoopVectorization

const T = Float32
const Point = SVector{3, T} # Point(1, 1, 1) * Float64(0) returns SVector{F, Float64}! Need some way to fix this

@with_kw struct Ray @deftype Point
    origin = zeros(Point)
    direction = Point(0, 1, 0)
    # @assert norm(direction) ≈ 1
end

struct Sphere
    centre::Point
    radius::T
end

struct Scene{T}
    Sphere::T
end

function StructArrays.staticschema(::Type{Point})
    # Define the desired names and eltypes of the "fields"
    return NamedTuple{(:x, :y, :z), fieldtypes(Point)...}
end

StructArrays.component(m::Point, key::Symbol) = getproperty(m, key)
StructArrays.createinstance(::Type{Point}, args...) = Point(args)

function findSceneIntersection(ray, hittable_list, tmin::T, tmax::T)
    besti::Int32 = 0

    @turbo for i in eachindex(hittable_list.Sphere)
        cox = hittable_list.Sphere.centre.x[i] - ray.origin.x
        coy = hittable_list.Sphere.centre.y[i] - ray.origin.y 
        coz = hittable_list.Sphere.centre.z[i] - ray.origin.z

        neg_half_b = ray.direction.x * cox + ray.direction.y * coy + ray.direction.z * coz
        c = cox^2 + coy^2 + coz^2 - hittable_list.Sphere.radius[i]^2

        quarter_discriminant = neg_half_b^2 - c
        sqrtd = sqrt(quarter_discriminant) # When using fastmath, negative values just give 0

        root = neg_half_b - sqrtd
        root2 = neg_half_b + sqrtd

        t = ifelse(quarter_discriminant < 0, tmax, 
                ifelse(tmin < root < tmax, root, 
                    ifelse(tmin < root2 < tmax, root2, tmax)))

        newMinT = t < tmax
        tmax = ifelse(newMinT, t, tmax)
        besti = ifelse(newMinT, i, besti)
    end    

    return tmax, besti
end

N = 300
spheres = Sphere.([Point(1, 1, 1) * v for v in range(-100, 100, N)], range(5, 50, N))
scene = Scene(StructArray(spheres, unwrap = T -> !(T<:Real)));
# scene = Scene(spheres);
ray = Ray()

findSceneIntersection(ray, scene, T(1e-4), T(Inf))
# Very important tmin, tmax are of type T
# I just specified this in the function so fine now
@benchmark findSceneIntersection($ray, $scene, $(T(1e-4)), $(T(Inf)))
@code_llvm debuginfo=:none findSceneIntersection(ray, scene, T(1e-4), T(Inf))
@code_native debuginfo=:none syntax=:intel findSceneIntersection(ray, scene, T(1e-4), T(Inf))

function findSceneIntersectionNotSIMD(ray, hittable_list, tmin::T, tmax::T)
    besti::Int32 = 0

    @fastmath @inbounds for i::Int32 in eachindex(hittable_list.Sphere)
        ocx = ray.origin.x - hittable_list.Sphere.centre.x[i]
        ocy = ray.origin.y - hittable_list.Sphere.centre.y[i]
        ocz = ray.origin.z - hittable_list.Sphere.centre.z[i]

        half_b = ray.direction.x * ocx + ray.direction.y * ocy + ray.direction.z * ocz
        c = ocx^2 + ocy^2 + ocz^2 - hittable_list.Sphere.radius[i]^2

        quarter_discriminant = half_b^2 - c
        sqrtd = sqrt(quarter_discriminant) # When using fastmath, negative values just give 0

        root = -half_b - sqrtd
        root2 = -half_b + sqrtd

        t = ifelse(quarter_discriminant < 0, T(Inf), 
                ifelse(tmin < root < tmax, root, 
                    ifelse(tmin < root2 < tmax, root2, T(Inf))))

        newMinT = t < tmax
        tmax = ifelse(newMinT, t, tmax)
        besti = ifelse(newMinT, i, besti)
    end    

    return tmax, besti
end

findSceneIntersectionNotSIMD(ray, scene, T(1e-4), T(Inf))
@code_warntype debuginfo=:none findSceneIntersectionNotSIMD(ray, scene, T(1e-4), T(Inf))
@code_llvm debuginfo=:none findSceneIntersectionNotSIMD(ray, scene, T(1e-4), T(Inf))
@benchmark findSceneIntersectionNotSIMD($ray, $scene, $(T(1e-4)), $(T(Inf)))

function findSceneIntersectionNotSIMDBranched(ray, hittable_list, tmin::T, tmax::T)
    besti::Int32 = 0

    @fastmath @inbounds for i::Int32 in eachindex(hittable_list.Sphere)
        ocx = ray.origin.x - hittable_list.Sphere.centre.x[i]
        ocy = ray.origin.y - hittable_list.Sphere.centre.y[i]
        ocz = ray.origin.z - hittable_list.Sphere.centre.z[i]

        half_b = ray.direction.x * ocx + ray.direction.y * ocy + ray.direction.z * ocz
        c = ocx^2 + ocy^2 + ocz^2 - hittable_list.Sphere.radius[i]^2

        quarter_discriminant = half_b^2 - c

        if quarter_discriminant > 0
            sqrtd = sqrt(quarter_discriminant) # When using fastmath, negative values just give 0

            root = -half_b - sqrtd
            root2 = -half_b + sqrtd

            t = ifelse(root > tmin, root, root2)

            newMinT = tmin < t < tmax
            tmax = ifelse(newMinT, t, tmax)
            besti = ifelse(newMinT, i, besti)
        end
    end    

    return tmax, besti
end

findSceneIntersectionNotSIMDBranched(ray, scene, T(1e-4), T(Inf))
@code_llvm debuginfo=:none findSceneIntersectionNotSIMDBranched(ray, scene, T(1e-4), T(Inf))
@benchmark findSceneIntersectionNotSIMDBranched($ray, $scene, $(T(1e-4)), $(T(Inf)))

tmp = Point[Point(1, 1, 1) * v for v in range(-100, 100, N)]
test = StructArray(tmp) # want index to be Int32, check typeof(test)

function findSceneIntersection(ray, hittable_list, tmin::T, tmax::T, indices)
    besti::Int32 = 0

    @turbo for i in indices
        ocx = ray.origin.x - hittable_list.Sphere.centre.x[i]
        ocy = ray.origin.y - hittable_list.Sphere.centre.y[i]
        ocz = ray.origin.z - hittable_list.Sphere.centre.z[i]

        half_b = ray.direction.x * ocx + ray.direction.y * ocy + ray.direction.z * ocz
        c = ocx^2 + ocy^2 + ocz^2 - hittable_list.Sphere.radius[i]^2

        quarter_discriminant = half_b^2 - c
        sqrtd = sqrt(quarter_discriminant) # When using fastmath, negative values just give 0

        root = -half_b - sqrtd
        root2 = -half_b + sqrtd

        t = ifelse(quarter_discriminant < 0, T(Inf), 
                ifelse(tmin < root < tmax, root, 
                    ifelse(tmin < root2 < tmax, root2, T(Inf))))

        newMinT = t < tmax
        tmax = ifelse(newMinT, t, tmax)
        besti = ifelse(newMinT, i, besti)
    end    

    return tmax, besti
end

findSceneIntersection(ray, scene, T(1e-4), T(Inf), Base.OneTo{Int32}(length(scene.Sphere)))
@benchmark findSceneIntersection($ray, $scene, $(T(1e-4)), $(T(Inf)), $(Base.OneTo{Int32}(length(scene.Sphere))))
@benchmark findSceneIntersection($ray, $scene, $(T(1e-4)), $(T(Inf)), $(Base.OneTo{Int64}(length(scene.Sphere))))
# StructArray still has index type Int64, so it seems Int64 are still sometimes used

# turn off @turbo if you want something sane
@code_typed debuginfo=:none findSceneIntersection(ray, scene, T(1e-4), T(Inf), Int32(1):Int32(length(scene.Sphere)))
@code_llvm debuginfo=:none findSceneIntersection(ray, scene, T(1e-4), T(Inf), Int32(1):Int32(length(scene.Sphere)))

function findSceneIntersection(ray, hittable_list, tmin, tmax, b, cs)
    @turbo for i in eachindex(hittable_list.Sphere)
        cox = hittable_list.Sphere.centre.x[i] - ray.origin.x
        coy = hittable_list.Sphere.centre.y[i] - ray.origin.y 
        coz = hittable_list.Sphere.centre.z[i] - ray.origin.z

        neg_half_b = ray.direction.x * cox + ray.direction.y * coy + ray.direction.z * coz
        c = cox^2 + coy^2 + coz^2 - hittable_list.Sphere.radius[i]^2

        b[i] = neg_half_b
        cs[i] = c
    end

    besti = 0

    @fastmath @inbounds for i in eachindex(b)
        neg_half_b = b[i]
        c = cs[i]

        quarter_discriminant = neg_half_b^2 - c

        if quarter_discriminant > 0
            @fastmath sqrtd = sqrt(quarter_discriminant) # When using fastmath, negative values just give 0

            root = neg_half_b - sqrtd
            root2 = neg_half_b + sqrtd

            t = ifelse(root > tmin, root, root2)

            newMinT = tmin < t < tmax
            tmax = ifelse(newMinT, t, tmax)
            besti = ifelse(newMinT, i, besti)
        end
    end
    
    return tmax, besti
end

b = zeros(T, 300)
cs = zeros(T, 300)

findSceneIntersection(ray, scene, T(1e-4), T(Inf), b, cs)
@benchmark findSceneIntersection($ray, $scene, $(T(1e-4)), $(T(Inf)), $b, $cs)
@code_warntype debuginfo=:none findSceneIntersection(ray, scene, T(1e-4), T(Inf), b, cs)
@code_llvm debuginfo=:none findSceneIntersection(ray, scene, T(1e-4), T(Inf), b, cs)

using JET

@report_opt findSceneIntersection(ray, scene, T(1e-4), T(Inf), b, cs)