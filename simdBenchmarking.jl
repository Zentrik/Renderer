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

N = 296
spheres = Sphere.([Point(1, 1, 1) * v for v in range(-100, 100, N)], range(5, 50, N))
scene = Scene(StructArray(spheres, unwrap = T -> !(T<:Real)));
# scene = Scene(spheres);
ray = Ray()

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

        t = ifelse(quarter_discriminant < T(0), tmax, 
                ifelse(tmin < root < tmax, root, 
                    ifelse(tmin < root2 < tmax, root2, tmax)))

        newMinT = t < tmax
        tmax = ifelse(newMinT, t, tmax)
        besti = ifelse(newMinT, i, besti)
    end    

    return tmax, besti
end

findSceneIntersection(ray, scene, T(1e-4), T(Inf))
# Very important tmin, tmax are of type T
# I just specified this in the function so fine now
@benchmark findSceneIntersection($ray, $scene, $(T(1e-4)), $(T(Inf)))
@code_llvm debuginfo=:none findSceneIntersection(ray, scene, T(1e-4), T(Inf))
@code_native debuginfo=:none syntax=:intel findSceneIntersection(ray, scene, T(1e-4), T(Inf))

using VectorizationBase, SIMDTypes

@eval @generated function fcmp_ogt(x::VectorizationBase.Vec{N, Float32}, y::VectorizationBase.Vec{N, Float32}) where {N}
    s = """
    %res = fcmp fast ogt <$(N) x float> %0, %1
    %resb = sext <$(N) x i1> %res to <$(N) x i8>
    ret <$(N) x i8> %resb
    """
    return :(
        $(Expr(:meta, :inline));
        Base.llvmcall($s, SIMDTypes._Vec{N, Int8}, Tuple{SIMDTypes._Vec{N, Float32}, SIMDTypes._Vec{N, Float32}}, VectorizationBase.data(x), VectorizationBase.data(y))
    )
end

fcmp_ogt_vec(x, y) =  VectorizationBase.Vec(fcmp_ogt(x, y))

function horizontal_or(x)
    a = VectorizationBase.vconvert(VectorizationBase.Vec{8, Float32}, x)
    b = VectorizationBase.data(a)
    return ccall("llvm.x86.avx.vtestz.ps.256", llvmcall, Int32, (SIMDTypes._Vec{8, Float32}, SIMDTypes._Vec{8, Float32}), b, b) == 0
end

function horizontal_or_int(x)
    a = VectorizationBase.vconvert(VectorizationBase.Vec{8, Int32}, x)
    # VectorizationBase.bitreverse(a)
    b = VectorizationBase.vreinterpret(VectorizationBase.Vec{4, Int64}, a)
    # println(a)
    # println(b)
    c = VectorizationBase.data(b)
    return ccall("llvm.x86.avx.ptestz.256", llvmcall, Int32, (SIMDTypes._Vec{4, Int64}, SIMDTypes._Vec{4, Int64}), c, c) == 0
    # return ccall("llvm.x86.avx.vtestz.ps.256", llvmcall, Int32, (SIMDTypes._Vec{8, Float32}, SIMDTypes._Vec{8, Float32}), b, b) == 0
end

test(a, b) = VectorizationBase.vany(a > b)
a= VectorizationBase.Vec{8, Float32}(0)
@code_native debuginfo=:none syntax=:intel test(a, a)

function test3(a, b)
    # a = VectorizationBase.Vec{8, Float32}(rand())
    # b = VectorizationBase.Vec{8, Float32}(rand())

    # a = VectorizationBase.Vec{8, Float32}(0, 1, 0, 1, 1, 0, 0, 0)
    # b = VectorizationBase.Vec{8, Float32}(1, 1, 0, 0, 1, 0, 0, 0)

    # println(a)
    # println(b)

    c = a > b

    # println(c)

    # VectorizationBase.vany(c)
    horizontal_or_int(c)
end

function test4(a, b)
    c = VectorizationBase.Vec(fcmp_ogt(a, b))
    d = VectorizationBase.vconvert(VectorizationBase.Vec{8, Int32}, c)
    e = VectorizationBase.vreinterpret(VectorizationBase.Vec{8, Float32}, d)

    # println(c)

    horizontal_or(e)
end

@code_native debuginfo=:none syntax=:intel test4(a, a)

# LoopVectorization.can_turbo(::typeof(fcmp_ogt_vec), ::Val{2}) = true

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

    @macroexpand @turbo for i in eachindex(hittable_list.Sphere)
        cox = hittable_list.Sphere.centre.x[i] - ray.origin.x
        coy = hittable_list.Sphere.centre.y[i] - ray.origin.y 
        coz = hittable_list.Sphere.centre.z[i] - ray.origin.z

        neg_half_b = ray.direction.x * cox + ray.direction.y * coy + ray.direction.z * coz
        c = cox^2 + coy^2 + coz^2 - hittable_list.Sphere.radius[i]^2

        quarter_discriminant = neg_half_b^2 - c
        t = maybecompute(neg_half_b, quarter_discriminant, tmax, x)

        # tmax = min(t, tmax)
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

function findSceneIntersection_maybecompute(ray, centrex, centrey, centrez, radius, tmin::T, tmax::T)
    besti::Int32 = 0
    x = VectorizationBase.Vec{8,T}(tmin)

    @turbo for i in eachindex(radius)
        cox = centrex[i] - ray.origin.x
        coy = centrey[i] - ray.origin.y 
        coz = centrez[i] - ray.origin.z

        neg_half_b = ray.direction.x * cox + ray.direction.y * coy + ray.direction.z * coz
        c = cox^2 + coy^2 + coz^2 - radius[i]^2

        quarter_discriminant = neg_half_b^2 - c
        t = maybecompute(neg_half_b, quarter_discriminant, tmax, x)

        newMinT = t < tmax
        tmax = ifelse(newMinT, t, tmax)
        besti = ifelse(newMinT, i, besti)
    end    

    return tmax, besti
end

findSceneIntersection_maybecompute(ray, scene.Sphere.centre.x, scene.Sphere.centre.y, scene.Sphere.centre.z, scene.Sphere.radius, T(1e-4), T(Inf))

centrex = scene.Sphere.centre.x
@benchmark findSceneIntersection_maybecompute($ray, $centrex, $scene.Sphere.centre.y, $scene.Sphere.centre.z, $scene.Sphere.radius, $(T(1e-4)), $(T(Inf)))
@code_native debuginfo=:none syntax=:intel findSceneIntersection_maybecompute(ray, scene, T(1e-4), T(Inf))

using SIMD

scene = Scene(StructArray(vcat(spheres, Sphere.(zeros(Point, 4), zeros(T, 4))), unwrap = T -> !(T<:Real)));

SIMD.Intrinsics.add(x::NTuple{8, VecElement{Int32}}, y::NTuple{8, VecElement{Int32}}, ::SIMD.Intrinsics.FastMathFlags{128}) = SIMD.Intrinsics.add(x, y)

@eval @generated function fcmp_ogt(x::SIMD.LVec{N, T}, y::SIMD.LVec{N, T}, ::F=nothing) where {N, T <: SIMD.FloatingTypes, F<:SIMD.Intrinsics.FPFlags}
    fpflags = SIMD.Intrinsics.fp_str(F)
    fflag = $(QuoteNode(:ogt))
    s = """
    %res = fcmp $(fpflags) $(fflag) <$(N) x $(SIMD.Intrinsics.d[T])> %0, %1
    %resb = sext <$(N) x i1> %res to <$(N) x i8>
    ret <$(N) x i8> %resb
    """
    return :(
        $(Expr(:meta, :inline));
        Base.llvmcall($s, SIMD.LVec{N, Bool}, Tuple{SIMD.LVec{N, T}, SIMD.LVec{N, T}}, x, y)
    )
end

function horizontal_or(x)
    b = SIMD.Intrinsics.bitcast(SIMD.LVec{8, Float32}, convert(SIMD.Vec{8, Int32}, x).data)
    return ccall("llvm.x86.avx.vtestz.ps.256", llvmcall, Int32, (SIMD.LVec{8, Float32}, SIMD.LVec{8, Float32}), b, b) == 0
end

function findSceneIntersectionIntrinsics(ray, hittable_list, tmin, tmax)
    width = 8
    lane = VecRange{width}(1)

    laneIndices = SIMD.Vec{width, Int32}(Int32.((1, 2, 3, 4, 5, 6, 7, 8)))
    minIndex = SIMD.Vec{width, Int32}(0)

    rayOrigX = SIMD.Vec{width, T}(ray.origin.x)
    rayOrigY = SIMD.Vec{width, T}(ray.origin.y)
    rayOrigZ = SIMD.Vec{width, T}(ray.origin.z)
    rayDirX = SIMD.Vec{width, T}(ray.direction.x)
    rayDirY = SIMD.Vec{width, T}(ray.direction.y)
    rayDirZ = SIMD.Vec{width, T}(ray.direction.z)

    tmaxVec = SIMD.Vec{width, T}(tmax)
    tminVec = SIMD.Vec{width, T}(tmin)

    @inbounds @fastmath for i in 0:width:length(hittable_list.Sphere)
        cox = hittable_list.Sphere.centre.x[lane + i] - rayOrigX
        coy = hittable_list.Sphere.centre.y[lane + i] - rayOrigY
        coz = hittable_list.Sphere.centre.z[lane + i] - rayOrigZ

        neg_half_b = rayDirX * cox + rayDirY * coy + rayDirZ * coz
        c = cox*cox + coy*coy + coz*coz - hittable_list.Sphere.radius[lane + i] * hittable_list.Sphere.radius[lane + i]

        quarter_discriminant = neg_half_b^2 - c
        isDiscriminantPositive = SIMD.Vec(fcmp_ogt(quarter_discriminant.data, SIMD.Vec{width, T}(0).data))

        if horizontal_or(isDiscriminantPositive)
            sqrtd = sqrt(quarter_discriminant) # When using fastmath, negative values just give 0
    
            root = neg_half_b - sqrtd
            root2 = neg_half_b + sqrtd

            t = vifelse(root > tminVec, root, root2)

            newMinT = isDiscriminantPositive & (tminVec < t) & (t < tmaxVec)
            tmaxVec = vifelse(newMinT, t, tmaxVec)
            minIndex = vifelse(newMinT, laneIndices, minIndex)
        end

        laneIndices += SIMD.Vec{width, Int32}(Int32(8))
    end    

    thit = minimum(tmaxVec)
    return thit, minIndex
end

findSceneIntersectionIntrinsics(ray, scene, T(1e-4), T(Inf))
@benchmark findSceneIntersectionIntrinsics($ray, $scene, T(1e-4), T(Inf))
# @profview map(_ -> findSceneIntersectionIntrinsics(ray, scene, T(1e-4), T(Inf)), 1:10000)
# @profview findSceneIntersectionIntrinsics(ray, scene, T(1e-4), T(Inf))
@code_warntype findSceneIntersectionIntrinsics(ray, scene, T(1e-4), T(Inf))
@code_llvm debuginfo=:none findSceneIntersectionIntrinsics(ray, scene, T(1e-4), T(Inf))
@code_native debuginfo=:none syntax=:intel findSceneIntersectionIntrinsics(ray, scene, T(1e-4), T(Inf))

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












__m128i = NTuple{2, VecElement{Int64}};
__m128i = SIMD.Vec{2, Int64}

aesdec(a, roundkey) = ccall("llvm.x86.aesni.aesdec", llvmcall, __m128i, (__m128i, __m128i), a, roundkey);

aesdec(__m128i((213132, 13131)), __m128i((31231, 43213)))