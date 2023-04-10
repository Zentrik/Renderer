using StaticArrays, Parameters, BenchmarkTools, StructArrays, LoopVectorization, SIMD, VectorizationBase

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

N = 296
spheres = Sphere.([Point(1, 1, 1) * v for v in LinRange(-100, 100, N)], LinRange(5, 50, N))
scene = Scene(StructArray(spheres, unwrap = T -> !(T<:Real)));
ray = Ray()

@generated function getBits(mask::SIMD.Vec{N, Bool}) where N #This reverses the bits
    s = """
    %mask = trunc <$N x i8> %0 to <$N x i1>
    %res = bitcast <$N x i1> %mask to i$N
    ret i$N %res
    """
    return :(
        $(Expr(:meta, :inline));
        Base.llvmcall($s, UInt8, Tuple{SIMD.LVec{N, Bool}}, mask.data)
    )
end

function hor_min(x::SIMD.Vec{8, T}) where T
    @fastmath a = shufflevector(x, Val((4, 5, 6, 7, :undef, :undef, :undef, :undef))) # high half
    @fastmath b = min(a, x)
    @fastmath a = shufflevector(b, Val((2, 3, :undef, :undef, :undef, :undef, :undef, :undef)))
    @fastmath b = min(a, b)
    @fastmath a = shufflevector(b, Val((1, :undef, :undef, :undef, :undef, :undef, :undef, :undef)))
    @fastmath b = min(a, b)
    return b[1]
end

let 
    # array = zeros(Int8, typemax(UInt8) - typemin(UInt8) + 1)
    # for x in typemin(UInt8):typemax(UInt8)
    #     if !isnothing(findfirst("1", bitstring(x)))
    #         array[x + typemin(UInt8) + 1] = findfirst("1", reverse(bitstring(x)))[1]
    #     end
    # end

    # array = UInt8[0 1 2 1 3 1 2 1 4 1 2 1 3 1 2 1 5 1 2 1 3 1 2 1 4 1 2 1 3 1 2 1 6 1 2 1 3 1 2 1 4 1 2 1 3 1 2 1 5 1 2 1 3 1 2 1 4 1 2 1 3 1 2 1 7 1 2 1 3 1 2 1 4 1 2 1 3 1 2 1 5 1 2 1 3 1 2 1 4 1 2 1 3 1 2 1 6 1 2 1 3 1 2 1 4 1 2 1 3 1 2 1 5 1 2 1 3 1 2 1 4 1 2 1 3 1 2 1 8 1 2 1 3 1 2 1 4 1 2 1 3 1 2 1 5 1 2 1 3 1 2 1 4 1 2 1 3 1 2 1 6 1 2 1 3 1 2 1 4 1 2 1 3 1 2 1 5 1 2 1 3 1 2 1 4 1 2 1 3 1 2 1 7 1 2 1 3 1 2 1 4 1 2 1 3 1 2 1 5 1 2 1 3 1 2 1 4 1 2 1 3 1 2 1 6 1 2 1 3 1 2 1 4 1 2 1 3 1 2 1 5 1 2 1 3 1 2 1 4 1 2 1 3 1 2 1] |> vec
    
    global function findSceneIntersectionIntrinsics(ray, hittable_list, tmin, tmax)
        width = 8
    
        hitT = SIMD.Vec{width, T}(tmax)
        laneIndices = SIMD.Vec{width, Int32}(Int32.((1, 2, 3, 4, 5, 6, 7, 8)))
        minIndex = SIMD.Vec{width, Int32}(0)
    
        @inbounds @fastmath for lane in LoopVecRange{width}(hittable_list.Sphere)
            cox = hittable_list.Sphere.centre.x[lane] - ray.origin.x
            coy = hittable_list.Sphere.centre.y[lane] - ray.origin.y
            coz = hittable_list.Sphere.centre.z[lane] - ray.origin.z
    
            neg_half_b = ray.direction.x * cox + ray.direction.y * coy 
            neg_half_b += ray.direction.z * coz
    
            c = cox*cox + coy*coy + coz*coz 
            c -= hittable_list.Sphere.radius[lane] * hittable_list.Sphere.radius[lane]
    
            quarter_discriminant = neg_half_b^2 - c
            isDiscriminantPositive = quarter_discriminant > 0
    
            if any(isDiscriminantPositive)
                sqrtd = sqrt(quarter_discriminant) # When using fastmath, negative values just give 0
        
                root = neg_half_b - sqrtd
                root2 = neg_half_b + sqrtd
    
                t = vifelse(root > tmin, root, root2)
    
                newMinT = isDiscriminantPositive & (tmin < t) & (t < hitT)
                hitT = vifelse(newMinT, t, hitT)
                minIndex = vifelse(newMinT, laneIndices, minIndex)
            end
    
            laneIndices += SIMD.Vec{width, Int32}(Int32(8))
        end    
    
        # minHitT = minimum(hitT)
        minHitT = hor_min(hitT)

        return @inbounds minHitT, minIndex[trailing_zeros(getBits(hitT == minHitT)) + 1]
        # return @inbounds minHitT, minIndex[array[getBits(hitT == minHitT) + typemin(UInt8) + 1]]
    end
end

findSceneIntersectionIntrinsics(ray, scene, T(1e-4), T(Inf))
@benchmark findSceneIntersectionIntrinsics($ray, $scene, $(T(1e-4)), $(T(Inf)))
@code_llvm debuginfo=:none findSceneIntersectionIntrinsics(ray, scene, T(1e-4), T(Inf))
@code_native debuginfo=:none syntax=:intel findSceneIntersectionIntrinsics(ray, scene, T(1e-4), T(Inf))

@inline function maybecompute(
    neg_half_b::VectorizationBase.Vec{W,T},
    quarter_discriminant::VectorizationBase.Vec{W,T},
    tmax::VectorizationBase.Vec{W,T},
    tmin::VectorizationBase.Vec{W,T}
) where {W,T}
    m = quarter_discriminant > 0
    !VectorizationBase.vany(m) && return tmax

    sqrtd = sqrt(quarter_discriminant) # When using fastmath, negative values just give NaN

    root = neg_half_b - sqrtd
    root2 = neg_half_b + sqrtd

    t = ifelse(root > tmin, root, root2)
    t = ifelse(m & (tmin < t), t, tmax)

    return t
end

@inline function maybecompute(x::VecUnroll, y::VecUnroll, z::VecUnroll, tmin::VectorizationBase.Vec{W,T}) where {W, T}
  VecUnroll(
    VectorizationBase.fmap(
      maybecompute,
      VectorizationBase.data(x),
      VectorizationBase.data(y),
      VectorizationBase.data(z),
      tmin,
    )
  )
end

function findSceneIntersection_maybecompute(ray, hittable_list, tmin::T, tmax::T)
    besti::Int32 = 0
    x = VectorizationBase.Vec{8,T}(tmin)

    @turbo for i in eachindex(hittable_list.Sphere)
        cox = hittable_list.Sphere.centre.x[i] - ray.origin.x
        coy = hittable_list.Sphere.centre.y[i] - ray.origin.y 
        coz = hittable_list.Sphere.centre.z[i] - ray.origin.z

        neg_half_b = ray.direction.x * cox + ray.direction.y * coy + ray.direction.z * coz
        c = cox^2 + coy^2 + coz^2 - hittable_list.Sphere.radius[i]^2

        quarter_discriminant = neg_half_b^2 - c
        t = maybecompute(neg_half_b, quarter_discriminant, tmax, x)
        
        newMinT = t < tmax
        tmax = ifelse(newMinT, t, tmax)
        besti = ifelse(newMinT, i, besti)
    end    

    return tmax, besti
end

findSceneIntersection_maybecompute(ray, scene, T(1e-4), T(Inf))
@benchmark findSceneIntersection_maybecompute($ray, $scene, $(T(1e-4)), $(T(Inf)))
@code_llvm debuginfo=:none findSceneIntersection_maybecompute(ray, scene, T(1e-4), T(Inf))
@code_native debuginfo=:none syntax=:intel findSceneIntersection_maybecompute(ray, scene, T(1e-4), T(Inf))