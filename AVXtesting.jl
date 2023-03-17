using StructArrays, LoopVectorization, StaticArrays, Parameters, LinearAlgebra, JET, Strided, BenchmarkTools, VectorizedReduction, Tullio

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
spheres = Spheres(T.(collect(range(-100, 100, N))), T.(collect(range(-100, 100, N))), T.(collect(range(-100, 100, N))), T.(collect(range(5, 50, N))))
ray = Ray()

roots = similar(spheres.radius) # Matrix{T}(undef, 2, length(spheres.radius))

@inline @fastmath function intersect(ray, centre_x, centre_y, centre_z, radius, tmin, tmax)
    ocx = ray.origin.x - centre_x
    ocy = ray.origin.y - centre_y
    ocz = ray.origin.z - centre_z

    half_b = ray.direction.x * ocx + ray.direction.y * ocy + ray.direction.z * ocz
    c = ocx^2 + ocy^2 + ocz^2 - radius^2

    quarter_discriminant = half_b^2 - c
    sqrtd = sqrt(quarter_discriminant)

    root = -half_b - sqrtd
    root2 = -half_b + sqrtd

    t = ifelse(quarter_discriminant < 0, T(Inf), ifelse(tmin < root < tmax, root, ifelse(tmin < root2 < tmax, root2, T(Inf))))
    return t
end

intersect(ray, spheres.centre_x[1], spheres.centre_y[1], spheres.centre_z[1], spheres.radius[1], T(0.), T(Inf))
i = 178; intersect(ray, spheres.centre_x[i], spheres.centre_y[i], spheres.centre_z[i], spheres.radius[i], T(0.), T(Inf))
@report_opt intersect(ray, spheres.centre_x[1], spheres.centre_y[1], spheres.centre_z[1], spheres.radius[1], T(0.), T(Inf))
@report_call intersect(ray, spheres.centre_x[1], spheres.centre_y[1], spheres.centre_z[1], spheres.radius[1], T(0.), T(Inf))

vfindmin(i -> intersect(ray, spheres.centre_x[i], spheres.centre_y[i], spheres.centre_z[i], spheres.radius[i], T(0.), T(Inf)), collect(eachindex(spheres.radius)))

vfindmin1(i -> intersect(ray, spheres.centre_x[i], spheres.centre_y[i], spheres.centre_z[i], spheres.radius[i], T(0.), T(Inf)), collect(eachindex(spheres.radius)), dims=1)

function testAVXIntersect(ray, spheres, tmin, tmax, roots)
    # @tullio threads=false roots[i] = intersect(ray, spheres.centre_x[i], spheres.centre_y[i], spheres.centre_z[i], spheres.radius[i], tmin, tmax)
    for i in eachindex(spheres.radius)
        roots[i] = intersect(ray, spheres.centre_x[i], spheres.centre_y[i], spheres.centre_z[i], spheres.radius[i], tmin, tmax)
    end

    min, index = vfindmin(roots)
    if min < tmax
        return min, index
    else
        return tmax, 0
    end
end

testAVXIntersect(ray, spheres, T(0.), T(Inf), roots)
@report_opt testAVXIntersect(ray, spheres, T(0.), T(Inf), roots)
@report_call testAVXIntersect(ray, spheres, T(0.), T(Inf), roots)
@benchmark testAVXIntersect($ray, $spheres, $0.0f0, $Inf32, $roots)
@code_llvm debuginfo=:none testAVXIntersect(ray, spheres, T(0.), T(Inf), roots)

function testAVX(ray, spheres, tmin, tmax, roots)
    @turbo for i in eachindex(spheres.radius)
        ocx = ray.origin.x - spheres.centre_x[i]
        ocy = ray.origin.y - spheres.centre_y[i]
        ocz = ray.origin.z - spheres.centre_z[i]

        half_b = ray.direction.x * ocx + ray.direction.y * ocy + ray.direction.z * ocz
        c = ocx^2 + ocy^2 + ocz^2 - spheres.radius[i]^2

        # half_b = ray.direction ⋅ ray.origin - (ray.direction.x * centre_x + ray.direction.y * centre_y + ray.direction.z * centre_z)
        # c = ray.origin ⋅ ray.origin + (centre_x^2 + centre_y^2 + centre_z^2) - 2 * (ray.origin.x * centre_x + ray.origin.y * centre_y + ray.origin.z * centre_z) - radius^2
        quarter_discriminant = half_b^2 - c
        # values[i] = quarter_discriminant
        # values2[i] = -half_b
        # sqrtd = (quarter_discriminant >= T(0)) * sqrt(quarter_discriminant)
        sqrtd = sqrt(quarter_discriminant) # When using fastmath, negative values just give 0
        # values[i] = sqrtd
        # values2[i] = sqrtd
        root = -half_b - sqrtd
        root2 = -half_b + sqrtd
        # values2[i] = -sqrtd
        # values2[i] = (tmin < root < tmax) * root + (quarter_discriminant < T(0)) * T(-Inf)
        t = ifelse(quarter_discriminant < 0, T(Inf), ifelse(tmin < root < tmax, root, ifelse(tmin < root2 < tmax, root2, T(Inf))))

        roots[i] = t
    end

    min, index = vfindmin(roots)
    if min < tmax
        return min, index
    else
        return tmax, 0
    end
end

testAVX(ray, spheres, T(0.), T(Inf), roots)
@report_opt testAVX(ray, spheres, T(0.), T(Inf), roots)
@benchmark testAVX($ray, $spheres, $0.0f0, $Inf32, $roots)
@code_llvm debuginfo=:none testAVX(ray, spheres, T(0.), T(Inf), roots)

function testAVXNoVector(ray, spheres, tmin, tmax)
    hitIndex = 0
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

        t = ifelse(quarter_discriminant < 0, T(Inf), ifelse(tmin < root < tmax, root, ifelse(tmin < root2 < tmax, root2, T(Inf))))

        newMinT = t < tmax
        tmax = ifelse(newMinT, t, tmax)
        hitIndex = ifelse(newMinT, i, hitIndex)
    end

   return tmax, hitIndex
end

testAVXNoVector(ray, spheres, T(0.), T(Inf))
@report_opt testAVXNoVector(ray, spheres, T(0.), T(Inf))
@benchmark testAVXNoVector($ray, $spheres, $0.0f0, $Inf32)
@code_llvm debuginfo=:none testAVXNoVector(ray, spheres, T(0.), T(Inf))

# f(x) = @turbo findmin(x)
# f(roots)
# @code_llvm debuginfo=:none f(roots)
@code_llvm vfindmin(roots)
@code_typed vfindmin(roots)
# @macroexpand vfindmin(roots)
@code_lowered VectorizedReduction.vfindminmax(identity, <, typemax, roots, :)

@generated function vfindminmax(f::F, op::OP, init::I, A::AbstractVector{T}, ::Colon) where {F, OP, I, T}
    opsym = OP.instance
    initsym = I.instance
    quote
        m = $initsym(Base.promote_op(f, $T))
        j = 1
        for i ∈ eachindex(A)
            newm = $opsym(f(A[i]), m)
            m = ifelse(newm, f(A[i]), m)
            j = ifelse(newm, i, j)
        end
        return m, j
    end
end
@code_lowered vfindminmax(identity, <, typemax, roots, :)


function vfindminTest(x)
    min = typemax(eltype(x))
    minIndex = 1
    @turbo for i in eachindex(x)
        newMin = x[i] < min
        min = ifelse(newMin, x[i], min)
        minIndex = ifelse(newMin, i, minIndex)
    end
    return min, minIndex
end

function findminBroken(x)
    min = typemax(eltype(x))
    minIndex = 1
    @turbo for i in eachindex(x)
        minIndex = ifelse(x[i] < min, i, minIndex)
        # min = min(x[i], min) # this will be bad if reordered maybe?
        min = ifelse(x[i] < min, x[i], min)
    end
    return min, minIndex
end

function squareTest(spheres)
    a = similar(spheres.radius)
    @turbo for i in eachindex(spheres.radius)
        a[i] = spheres.centre_x[i]^2 + spheres.centre_y[i]^2 + spheres.centre_z[i]
    end
    return a
end
squareTest(spheres)
@report_opt squareTest(spheres)

struct SphereNoAVX
    centre::Point
    radius::T
    # record::HitRecord
end

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

    # sqrtd = sqrt(quarter_discriminant) # When using fastmath, negative values just give 0
    # root = -half_b - sqrtd
    # root2 = -half_b + sqrtd
    # return ifelse(quarter_discriminant < 0, T(-1), ifelse(tmin < root < tmax, root, ifelse(tmin < root2 < tmax, root2, T(-1))))
end

@inline @fastmath function intersect(ray, sphere::SphereNoAVX, tmin, tmax)::T # Relies on norm(ray.direction) == 1 # @inline together gives 4x speedup for render. @fastmath gives 2% speedup?
    origin_to_centre = ray.origin - sphere.centre
    half_b = ray.direction ⋅ origin_to_centre
    c = origin_to_centre ⋅ origin_to_centre - sphere.radius^2
    quarter_discriminant = half_b^2 - c

    sqrtd = sqrt(quarter_discriminant) # When using fastmath, negative values just give 0
    root = -half_b - sqrtd
    root2 = -half_b + sqrtd
    return ifelse(quarter_discriminant < 0, T(Inf), ifelse(tmin < root < tmax, root, ifelse(tmin < root2 < tmax, root2, T(Inf))))
end


vfindmin(sphere -> intersect(ray, sphere, 0.0f0, Inf32), test)
@benchmark vfindmin(sphere -> intersect(ray, sphere, 0.0f0, Inf32), test)

function test2(ray, spheres, tmin, tmax)
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

spheres = SphereNoAVX.([Point(1, 1, 1) * v for v in  range(-100, 100, N)], range(5, 50, N))

test2(ray, spheres, T(0.), T(Inf))
@benchmark test2($ray, $spheres, $0.0f0, $Inf32)

# N = 2
# spheres = Spheres(collect(range(-100, 100, N)), collect(range(-100, 100, N)), collect(range(-100, 100, N)), collect(range(5, 50, N)))
# function squareTest!(x, a)
#     for i in eachindex(x)
#         a[i] = ifelse(x[i] >= T(0), T(1), T(-1))
#     end
# end

# a = similar(spheres.radius)
# squareTest!(spheres.radius, a)
# @report_opt squareTest!(spheres.radius, a)
# @code_llvm debuginfo=:none squareTest!(spheres.radius, a)

function StructArrays.staticschema(::Type{Point})
    # Define the desired names and eltypes of the "fields"
    return NamedTuple{(:x, :y, :z), fieldtypes(Point)...}
end

StructArrays.component(m::Point, key::Symbol) = getproperty(m, key)
StructArrays.createinstance(::Type{Point}, args...) = Point(args)

test = StructArray(spheres, unwrap = T -> !(T<:Real))

@benchmark test2($ray, $test, $0.0f0, $Inf32)

function testSOA(ray, spheres, tmin, tmax)
    besti = 0
    @inbounds @fastmath for i in eachindex(spheres)
        ocx = ray.origin.x - spheres.centre.x[i] # have to index like this can't do spheres[i].centre.x?
        ocy = ray.origin.y - spheres.centre.y[i]
        ocz = ray.origin.z - spheres.centre.z[i]

        half_b = ray.direction.x * ocx + ray.direction.y * ocy + ray.direction.z * ocz
        c = ocx^2 + ocy^2 + ocz^2 - spheres.radius[i]^2

        quarter_discriminant = half_b^2 - c

        if quarter_discriminant >= 0
            sqrtd = sqrt(quarter_discriminant);
    
            # Find the nearest root that lies in the acceptable range.
            root = -half_b - sqrtd
            if tmin < root < tmax
                tmax = root
                besti = i
            elseif tmin < root + sqrtd * 2 < tmax
                tmax = root + sqrtd * 2
                besti = i
            end
        end
    end

    return tmax, besti
end

testSOA(ray, test, T(0.), T(Inf))
@report_opt testSOA(ray, test, T(0.), T(Inf))
@benchmark testSOA($ray, $test, $0.0f0, $Inf32)
@code_llvm debuginfo=:none testSOA(ray, test, T(0.), T(Inf))

function test3(ray, spheres, tmin, tmax)
    besti = 0
    @inbounds @fastmath for i in eachindex(spheres)
        ocx = ray.origin.x - spheres[i].centre.x # have to index like this can't do spheres[i].centre.x?
        ocy = ray.origin.y - spheres[i].centre.y
        ocz = ray.origin.z - spheres[i].centre.z

        half_b = ray.direction.x * ocx + ray.direction.y * ocy + ray.direction.z * ocz
        c = ocx^2 + ocy^2 + ocz^2 - spheres[i].radius^2

        quarter_discriminant = half_b^2 - c

        if quarter_discriminant >= 0
            sqrtd = sqrt(quarter_discriminant);
    
            # Find the nearest root that lies in the acceptable range.
            root = -half_b - sqrtd
            if tmin < root < tmax
                tmax = root
                besti = i
            elseif tmin < root + sqrtd * 2 < tmax
                tmax = root + sqrtd * 2
                besti = i
            end
        end
    end

    return tmax, besti
end

test3(ray, spheres, T(0.), T(Inf))
@benchmark test3($ray, $spheres, $0.0f0, $Inf32)

# Runs just as fast as Spheres with custom struct for SOA
function testAVXSOA(ray, spheres, tmin, tmax, roots)
    @turbo for i in eachindex(spheres)
        ocx = ray.origin.x - spheres.centre.x[i] # have to index like this can't do spheres[i].centre.x?
        ocy = ray.origin.y - spheres.centre.y[i]
        ocz = ray.origin.z - spheres.centre.z[i]

        half_b = ray.direction.x * ocx + ray.direction.y * ocy + ray.direction.z * ocz
        c = ocx^2 + ocy^2 + ocz^2 - spheres.radius[i]^2

        # half_b = ray.direction ⋅ ray.origin - (ray.direction.x * centre_x + ray.direction.y * centre_y + ray.direction.z * centre_z)
        # c = ray.origin ⋅ ray.origin + (centre_x^2 + centre_y^2 + centre_z^2) - 2 * (ray.origin.x * centre_x + ray.origin.y * centre_y + ray.origin.z * centre_z) - radius^2
        quarter_discriminant = half_b^2 - c
        # values[i] = quarter_discriminant
        # values2[i] = -half_b
        # sqrtd = (quarter_discriminant >= T(0)) * sqrt(quarter_discriminant)
        sqrtd = sqrt(quarter_discriminant) # When using fastmath, negative values just give 0
        # values[i] = sqrtd
        # values2[i] = sqrtd
        root = -half_b - sqrtd
        root2 = -half_b + sqrtd
        # values2[i] = -sqrtd
        # values2[i] = (tmin < root < tmax) * root + (quarter_discriminant < T(0)) * T(-Inf)
        t = ifelse(quarter_discriminant < 0, T(Inf), ifelse(tmin < root < tmax, root, ifelse(tmin < root2 < tmax, root2, T(Inf))))

        roots[i] = t
    end

    min, index = vfindmin(roots)
    if min < tmax
        return min, index
    else
        return tmax, 0
    end
end

testAVXSOA(ray, test, T(0.), T(Inf), roots)
@report_opt testAVXSOA(ray, test, T(0.), T(Inf), roots)
@benchmark testAVXSOA($ray, $test, $0.0f0, $Inf32, $roots)
@code_llvm debuginfo=:none testAVXSOA(ray, test, T(0.), T(Inf), roots)

@inline @fastmath function intersect(ray, centre_x, centre_y, centre_z, radius, tmin, tmax)::T # Relies on norm(ray.direction) == 1 # @inline together gives 4x speedup for render. @fastmath gives 2% speedup?
    ocx = ray.origin.x - centre_x
    ocy = ray.origin.y - centre_y
    ocz = ray.origin.z - centre_z

    half_b = ray.direction.x * ocx + ray.direction.y * ocy + ray.direction.z * ocz
    c = ocx^2 + ocy^2 + ocz^2 - radius^2

    quarter_discriminant = half_b^2 - c

    sqrtd = sqrt(quarter_discriminant) # When using fastmath, negative values just give 0
    root = -half_b - sqrtd
    root2 = -half_b + sqrtd
    return ifelse(quarter_discriminant < 0, T(Inf), ifelse(tmin < root < tmax, root, ifelse(tmin < root2 < tmax, root2, T(Inf))))
end

a = 1.0f0
vfindmin((centre_x, centre_y, centre_z, radius) -> a - centre_x, test.centre.x, test.centre.y, test.centre.z, test.radius)

@inline function test6(ray)
    vfindmin((centre_x, centre_y, centre_z, radius) -> intersect(ray, centre_x, centre_y, centre_z, radius, 0.0f0, Inf32), test.centre.x, test.centre.y, test.centre.z, test.radius)
end

test6(ray)
@benchmark test6(ray)

function test5()
    a = 1.0
    x = rand(10)

    vfindmin(t -> a - t, x)
end

LoopVectorization.vfindminmax(min, X)
LoopVectorization.vmapreduce((centre_x, centre_y, centre_z, radius) -> intersect(ray, centre_x, centre_y, centre_z, radius, 0.0f0, Inf32), findmin, test.centre.x, test.centre.y, test.centre.z, test.radius)