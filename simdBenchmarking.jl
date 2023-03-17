using StaticArrays, Parameters, LinearAlgebra, BenchmarkTools, StructArrays, LoopVectorization

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

@with_kw struct Scene{T}
    Sphere::T = []
end

function StructArrays.staticschema(::Type{Point})
    # Define the desired names and eltypes of the "fields"
    return NamedTuple{(:x, :y, :z), fieldtypes(Point)...}
end

StructArrays.component(m::Point, key::Symbol) = getproperty(m, key)
StructArrays.createinstance(::Type{Point}, args...) = Point(args)

# very important everything is same width so vectorization is good
function findSceneIntersection(ray, hittable_list, tmin::T, tmax::T)
    besti::Int32 = 0

    @turbo for i in eachindex(hittable_list.Sphere)
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

        # is there any difference between these two?
        # t = ifelse(quarter_discriminant < 0, tmax, 
        #         ifelse(tmin < root < tmax, root, 
        #             ifelse(tmin < root2 < tmax, root2, tmax)))

        # doesn't work
        # besti = ifelse(t < tmax, i, besti)
        # tmax = min(t, tmax)

        newMinT = t < tmax
        tmax = ifelse(newMinT, t, tmax)
        besti = ifelse(newMinT, i, besti)



        # t = ifelse(root > tmin, root, root2)

        # mask = (quarter_discriminant > 0) & (tmin < t < tmax)
        # besti = ifelse(mask, i, besti)
        # tmax = ifelse(mask, t, tmax)
    end    

    return tmax, besti
end

N = 300
spheres = Sphere.([Point(1, 1, 1) * v for v in range(-100, 100, N)], range(5, 50, N))
scene = Scene(StructArray(spheres, unwrap = T -> !(T<:Real)));
ray = Ray()

findSceneIntersection(ray, scene, T(1e-4), T(Inf))
# Very important tmin, tmax are of type T
# I just specified this in the function so fine now
@benchmark findSceneIntersection($ray, $scene, $(T(1e-4)), $(T(Inf)))
@code_llvm debuginfo=:none findSceneIntersection(ray, scene, T(1e-4), T(Inf))

function findSceneIntersectionNotSIMD(ray, hittable_list, tmin::T, tmax::T)
    besti::Int32 = 0

    @fastmath for i in eachindex(hittable_list.Sphere)
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

        # is there any difference between these two?
        # t = ifelse(quarter_discriminant < 0, tmax, 
        #         ifelse(tmin < root < tmax, root, 
        #             ifelse(tmin < root2 < tmax, root2, tmax)))

        # doesn't work
        # besti = ifelse(t < tmax, i, besti)
        # tmax = min(t, tmax)

        newMinT = t < tmax
        tmax = ifelse(newMinT, t, tmax)
        besti = ifelse(newMinT, i, besti)



        # t = ifelse(root > tmin, root, root2)

        # mask = (quarter_discriminant > 0) & (tmin < t < tmax)
        # besti = ifelse(mask, i, besti)
        # tmax = ifelse(mask, t, tmax)
    end    

    return tmax, besti
end

@code_warntype debuginfo=:none findSceneIntersectionNotSIMD(ray, scene, T(1e-4), T(Inf))


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

        # is there any difference between these two?
        # t = ifelse(quarter_discriminant < 0, tmax, 
        #         ifelse(tmin < root < tmax, root, 
        #             ifelse(tmin < root2 < tmax, root2, tmax)))

        # doesn't work
        # besti = ifelse(t < tmax, i, besti)
        # tmax = min(t, tmax)

        newMinT = t < tmax
        tmax = ifelse(newMinT, t, tmax)
        besti = ifelse(newMinT, i, besti)



        # t = ifelse(root > tmin, root, root2)

        # mask = (quarter_discriminant > 0) & (tmin < t < tmax)
        # besti = ifelse(mask, i, besti)
        # tmax = ifelse(mask, t, tmax)
    end    

    return tmax, besti
end

findSceneIntersection(ray, scene, T(1e-4), T(Inf), Base.OneTo{Int32}(length(scene.Sphere)))
@benchmark findSceneIntersection($ray, $scene, $(T(1e-4)), $(T(Inf)), $(Base.OneTo{Int32}(length(scene.Sphere))))
@benchmark findSceneIntersection($ray, $scene, $(T(1e-4)), $(T(Inf)), $(Base.OneTo{Int64}(length(scene.Sphere))))
# StructArray still has index type Int64, so it seems Int64 are still sometimes used

# turn of @turbo if you want something sane
@code_typed debuginfo=:none findSceneIntersection(ray, scene, T(1e-4), T(Inf), Int32(1):Int32(length(scene.Sphere)))
@code_llvm debuginfo=:none findSceneIntersection(ray, scene, T(1e-4), T(Inf), Int32(1):Int32(length(scene.Sphere)))

struct Spheres{F}
    centre_x::F
    centre_y::F
    centre_z::F
    radius::F
end


function findSceneIntersection(ray, spheres::Spheres, tmin::T, tmax::T)
    besti = 0

    @turbo for i in eachindex(spheres.radius)
        ocx = ray.origin.x - spheres.centre_x[i]
        ocy = ray.origin.y - spheres.centre_y[i]
        ocz = ray.origin.z - spheres.centre_z[i]

        half_b = ray.direction.x * ocx + ray.direction.y * ocy + ray.direction.z * ocz
        c = ocx^2 + ocy^2 + ocz^2 - spheres.radius[i]^2

        quarter_discriminant = half_b^2 - c
        sqrtd = sqrt(quarter_discriminant) # When using fastmath, negative values just give 0

        root = -half_b - sqrtd
        root2 = -half_b + sqrtd

        t = ifelse(quarter_discriminant < 0, T(Inf), 
                ifelse(tmin < root < tmax, root, 
                    ifelse(tmin < root2 < tmax, root2, T(Inf))))

        # is there any difference between these two?
        # t = ifelse(quarter_discriminant < 0, tmax, 
        #         ifelse(tmin < root < tmax, root, 
        #             ifelse(tmin < root2 < tmax, root2, tmax)))

        # doesn't work
        # besti = ifelse(t < tmax, i, besti)
        # tmax = min(t, tmax)

        newMinT = t < tmax
        tmax = ifelse(newMinT, t, tmax)
        besti = ifelse(newMinT, i, besti)



        # t = ifelse(root > tmin, root, root2)

        # mask = (quarter_discriminant > 0) & (tmin < t) & (t < tmax)
        # besti = ifelse(mask, i, besti)
        # tmax = ifelse(mask, t, tmax)
    end    

    return tmax, besti
end

N = 300
spheres = Spheres(T.(collect(range(-100, 100, N))), T.(collect(range(-100, 100, N))), T.(collect(range(-100, 100, N))), T.(collect(range(5, 50, N))))
ray = Ray()

findSceneIntersection(ray, spheres, T(0.), T(Inf))
@benchmark findSceneIntersection($ray, $spheres, $(T(1e-4)), $(T(Inf)))