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
spheres = Sphere.([Point(1, 1, 1) * v for v in LinRange(-100, 100, N)], LinRange(5, 50, N))
scene = Scene(StructArray(spheres, unwrap = T -> !(T<:Real)));
# scene = Scene(spheres);
ray = Ray()

function findSceneIntersection(ray, hittable_list, tmin::T, tmax::T)
    t = T(0)
    @turbo unroll=-1 for i in eachindex(hittable_list.Sphere)
        cox = hittable_list.Sphere.centre.x[i] - ray.origin.x
        coy = hittable_list.Sphere.centre.y[i] - ray.origin.y
        coz = hittable_list.Sphere.centre.z[i] - ray.origin.z

        neg_half_b = ray.direction.x * cox + ray.direction.y * coy + ray.direction.z * coz
        c = cox^2 + coy^2 + coz^2 - hittable_list.Sphere.radius[i]^2

        quarter_discriminant = neg_half_b^2 - c

        # t += quarter_discriminant
        t += ifelse(quarter_discriminant > 0, quarter_discriminant, 0)
    end    

    return t
end

findSceneIntersection(ray, scene, T(1e-4), T(Inf))
@benchmark findSceneIntersection($ray, $scene, (T(1e-4)), (T(Inf)))
@bprofile findSceneIntersection($ray, $scene, (T(1e-4)), (T(Inf)))
@code_llvm debuginfo=:none findSceneIntersection(ray, scene, (T(1e-4)), (T(Inf)))
@code_native debuginfo=:none syntax=:intel findSceneIntersection(ray, scene, (T(1e-4)), (T(Inf)))

open("a.txt", "w") do io
    code_llvm(io, debuginfo=:none, findSceneIntersection, (ray, scene, (T(1e-4)), (T(Inf))) |> typeof)
end

using SIMD

function findSceneIntersectionIntrinsics(ray, hittable_list, tmin, tmax)
    width = 8
    lane = VecRange{width}(1)

    t = Vec{width, T}(0)

    @inbounds @fastmath for i in 0:width:length(hittable_list.Sphere)
        cox = hittable_list.Sphere.centre.x[lane + i] - ray.origin.x
        coy = hittable_list.Sphere.centre.y[lane + i] - ray.origin.y
        coz = hittable_list.Sphere.centre.z[lane + i] - ray.origin.z

        neg_half_b = ray.direction.x * cox + ray.direction.y * coy + ray.direction.z * coz
        c = cox*cox + coy*coy + coz*coz - hittable_list.Sphere.radius[lane + i] * hittable_list.Sphere.radius[lane + i]

        quarter_discriminant = neg_half_b^2 - c

        t += vifelse(quarter_discriminant > 0, sqrt(quarter_discriminant), T(0))
    end    

    return sum(t)
end

findSceneIntersectionIntrinsics(ray, scene, T(1e-4), T(Inf))
@benchmark findSceneIntersectionIntrinsics($ray, $scene, (T(1e-4)), (T(Inf)))
@code_llvm debuginfo=:none findSceneIntersectionIntrinsics(ray, scene, (T(1e-4)), (T(Inf)))
@code_native debuginfo=:none syntax=:intel findSceneIntersectionIntrinsics(ray, scene, (T(1e-4)), (T(Inf)))

SIMD.Intrinsics.add(x::T, y::T, ::F) where {T<:SIMD.Intrinsics.LT{<:SIMD.IntegerTypes}, F<:SIMD.Intrinsics.FPFlags} = SIMD.Intrinsics.add(x, y)

for f in [:fadd]
    @eval @generated function SIMD.Intrinsics.$f(x::T, y::T, ::F=nothing) where {T<:SIMD.Intrinsics.LT{<:SIMD.Intrinsics.FloatingTypes}, F<:SIMD.Intrinsics.FPFlags}
        # fpflags = fp_str(F)
        fpflags = :fast
        ff = $(QuoteNode(f))
        s = """
        %3 = $ff $fpflags $(SIMD.Intrinsics.llvm_type(T)) %0, %1
        ret $(SIMD.Intrinsics.llvm_type(T)) %3
        """
        return :(
            $(Expr(:meta, :inline));
            Base.llvmcall($s, T, Tuple{T, T}, x, y)
        )
    end
end

# @eval @generated function SIMD.Intrinsics.fcmp_ogt(x::SIMD.LVec{N, T}, y::SIMD.LVec{N, T}, ::F=nothing) where {N, T <: SIMD.FloatingTypes, F<:SIMD.Intrinsics.FPFlags}
#     fpflags = SIMD.Intrinsics.fp_str(F)
#     # fpflags = :fast
#     fflag = $(QuoteNode(:ogt))
#     s = """
#     %res = fcmp $(fpflags) $(fflag) <$(N) x $(SIMD.Intrinsics.d[T])> %0, %1
#     %resb = sext <$(N) x i1> %res to <$(N) x i8>
#     ret <$(N) x i8> %resb
#     """
#     return :(
#         $(Expr(:meta, :inline));
#         Base.llvmcall($s, SIMD.LVec{N, Bool}, Tuple{SIMD.LVec{N, T}, SIMD.LVec{N, T}}, x, y)
#     )
# end

@generated function sext(::Type{T}, x::SIMD.Vec{N, Bool}) where {N,T}
    t = SIMD.Intrinsics.llvm_type(T)
    s = """
    %2 = trunc <$N x i8> %0 to <$N x i1>
    %3 = sext  <$N x i1> %2 to <$N x $t>
    ret <$N x $t> %3
    """
    return :( $(Expr(:meta,:inline)); Vec(Base.llvmcall($s, SIMD.LVec{$N,$T}, Tuple{SIMD.LVec{$N,Bool}}, x.data)) )
end

function horizontal_or(x::SIMD.Vec{8, Bool})
    y = SIMD.Intrinsics.bitcast(SIMD.LVec{8, Float32}, sext(Int32, x).data)
    return ccall("llvm.x86.avx.vtestz.ps.256", llvmcall, Int32, (SIMD.LVec{8, Float32}, SIMD.LVec{8, Float32}), y, y) == 0
end

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

function findSceneIntersectionIntrinsics(ray, centrex, centrey, centrez, radius, tmin, tmax)
    width = 8

    hitT = Vec{width, T}(tmax)
    laneIndices = SIMD.Vec{width, Int32}(Int32.((1, 2, 3, 4, 5, 6, 7, 8)))
    minIndex = SIMD.Vec{width, Int32}(0)

    @inbounds @fastmath for i in eachindex(radius)
        cox = centrex[i] - ray.origin.x
        coy = centrey[i] - ray.origin.y
        coz = centrez[i] - ray.origin.z

        neg_half_b = ray.direction.x * cox + ray.direction.y * coy + ray.direction.z * coz
        c = cox*cox + coy*coy + coz*coz - radius[i] * radius[i]

        quarter_discriminant = neg_half_b^2 - c
        isDiscriminantPositive = quarter_discriminant > 0

        # if any(isDiscriminantPositive)

        if horizontal_or(isDiscriminantPositive)
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

    array = zeros(Int8, typemax(UInt8) - typemin(UInt8) + 1)
    for x in typemin(UInt8):typemax(UInt8)
        if !isnothing(findfirst("1", bitstring(x)))
            array[x + typemin(UInt8) + 1] = findfirst("1", reverse(bitstring(x)))[1]
        end
    end

    return minimum(hitT), minIndex[array[getBits(hitT == minimum(hitT)) + typemin(UInt8) + 1]]
end

findSceneIntersectionIntrinsics(ray, [vload(Vec{8, T}, scene.Sphere.centre.x, i) for i in 1:8:length(scene.Sphere.radius)], [vload(Vec{8, T}, scene.Sphere.centre.y, i) for i in 1:8:length(scene.Sphere.radius)], [vload(Vec{8, T}, scene.Sphere.centre.z, i) for i in 1:8:length(scene.Sphere.radius)], [vload(Vec{8, T}, scene.Sphere.radius, i) for i in 1:8:length(scene.Sphere.radius)], T(1e-4), T(Inf))
@benchmark findSceneIntersectionIntrinsics($ray, $[vload(Vec{8, T}, scene.Sphere.centre.x, i) for i in 1:8:length(scene.Sphere.radius)], $[vload(Vec{8, T}, scene.Sphere.centre.y, i) for i in 1:8:length(scene.Sphere.radius)], $[vload(Vec{8, T}, scene.Sphere.centre.z, i) for i in 1:8:length(scene.Sphere.radius)], $[vload(Vec{8, T}, scene.Sphere.radius, i) for i in 1:8:length(scene.Sphere.radius)], T(1e-4), T(Inf))
@code_llvm debuginfo=:none findSceneIntersectionIntrinsics(ray, [vload(Vec{8, T}, scene.Sphere.centre.x, i) for i in 1:8:length(scene.Sphere.radius)], [vload(Vec{8, T}, scene.Sphere.centre.y, i) for i in 1:8:length(scene.Sphere.radius)], [vload(Vec{8, T}, scene.Sphere.centre.z, i) for i in 1:8:length(scene.Sphere.radius)], [vload(Vec{8, T}, scene.Sphere.radius, i) for i in 1:8:length(scene.Sphere.radius)], T(1e-4), T(Inf))
@code_native debuginfo=:none syntax=:intel findSceneIntersectionIntrinsics(ray, [vload(Vec{8, T}, scene.Sphere.centre.x, i) for i in 1:8:length(scene.Sphere.radius)], [vload(Vec{8, T}, scene.Sphere.centre.y, i) for i in 1:8:length(scene.Sphere.radius)], [vload(Vec{8, T}, scene.Sphere.centre.z, i) for i in 1:8:length(scene.Sphere.radius)], [vload(Vec{8, T}, scene.Sphere.radius, i) for i in 1:8:length(scene.Sphere.radius)], T(1e-4), T(Inf))

open("a.txt", "w") do io
    code_llvm(io, debuginfo=:none, findSceneIntersectionIntrinsics, (ray, [vload(Vec{8, T}, scene.Sphere.centre.x, i) for i in 1:8:length(scene.Sphere.radius)], [vload(Vec{8, T}, scene.Sphere.centre.y, i) for i in 1:8:length(scene.Sphere.radius)], [vload(Vec{8, T}, scene.Sphere.centre.z, i) for i in 1:8:length(scene.Sphere.radius)], [vload(Vec{8, T}, scene.Sphere.radius, i) for i in 1:8:length(scene.Sphere.radius)], T(1e-4), T(Inf)) |> typeof)
end

function test5(x, y, z) 
    @fastmath @inbounds for i in eachindex(x)
        return x[i] + y[i] + z[i]
    end
end

a = [Vec{8, Float32}(0)]
test5(a, a, a)
@code_llvm debuginfo=:none test5(a, a, a)

function test6(x, y) 
   any(x > y)
end

a = Vec{8, Float32}(0)
test6(a, a)
@benchmark test6($a, $a)
@code_native debuginfo=:none syntax=:intel test6(a, a)

function test7(x, y) 
    horizontal_or(SIMD.Vec(fcmp_ogt(x.data, y.data)))
end
 
test7(a, a)
@benchmark test7($a, $a)
@code_native debuginfo=:none syntax=:intel test7(a, a)

function findSceneIntersectionIntrinsics(ray, hittable_list, tmin, tmax)
    width = 8

    lane = VecRange{width}(1)

    hitT = Vec{width, T}(tmax)
    laneIndices = SIMD.Vec{width, Int32}(Int32.((1, 2, 3, 4, 5, 6, 7, 8)))
    minIndex = SIMD.Vec{width, Int32}(0)

    @inbounds @fastmath for i in 0:width:length(hittable_list.Sphere)
        cox = hittable_list.Sphere.centre.x[lane + i] - ray.origin.x
        coy = hittable_list.Sphere.centre.y[lane + i] - ray.origin.y
        coz = hittable_list.Sphere.centre.z[lane + i] - ray.origin.z

        neg_half_b = ray.direction.x * cox + ray.direction.y * coy + ray.direction.z * coz
        c = cox*cox + coy*coy + coz*coz - hittable_list.Sphere.radius[lane + i] * hittable_list.Sphere.radius[lane + i]

        quarter_discriminant = neg_half_b^2 - c
        # isDiscriminantPositive = quarter_discriminant > 0

        # if any(isDiscriminantPositive)

        isDiscriminantPositive = quarter_discriminant > 0

        if horizontal_or(isDiscriminantPositive)
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

    return minimum(hitT), minIndex
end

findSceneIntersectionIntrinsics(ray, scene, T(1e-4), T(Inf))
@code_warntype findSceneIntersectionIntrinsics(ray, scene, T(1e-4), T(Inf))
@benchmark findSceneIntersectionIntrinsics($ray, $scene, T(1e-4), T(Inf))
@code_native debuginfo=:none syntax=:intel findSceneIntersectionIntrinsics(ray, scene, T(1e-4), T(Inf))
open("b.txt", "w") do io
    code_llvm(io, debuginfo=:none, findSceneIntersectionIntrinsics, (ray, scene, T(1e-4), T(Inf)) |> typeof)
end

function findSceneIntersectionIntrinsics(ray, centrex, centrey, centrez, radius, tmin, tmax)
    width = 8

    lane = VecRange{width}(1)

    hitT = Vec{width, T}(tmax)
    laneIndices = SIMD.Vec{width, Int32}(Int32.((1, 2, 3, 4, 5, 6, 7, 8)))
    minIndex = SIMD.Vec{width, Int32}(0)

    @inbounds @fastmath for i in 0:width:length(radius)
        cox = centrex[lane + i] - ray.origin.x
        coy = centrey[lane + i] - ray.origin.y
        coz = centrez[lane + i] - ray.origin.z

        neg_half_b = ray.direction.x * cox + ray.direction.y * coy + ray.direction.z * coz
        c = cox*cox + coy*coy + coz*coz - radius[lane + i] * radius[lane + i]

        quarter_discriminant = neg_half_b^2 - c
        # isDiscriminantPositive = quarter_discriminant > 0

        # if any(isDiscriminantPositive)

        isDiscriminantPositive = quarter_discriminant > 0

        if horizontal_or(isDiscriminantPositive)
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

    return minimum(hitT), minIndex
end

findSceneIntersectionIntrinsics(ray, scene.Sphere.centre.x, scene.Sphere.centre.y, scene.Sphere.centre.z, scene.Sphere.radius, T(1e-4), T(Inf))
@code_warntype findSceneIntersectionIntrinsics(ray, scene.Sphere.centre.x, scene.Sphere.centre.y, scene.Sphere.centre.z, scene.Sphere.radius, T(1e-4), T(Inf))
@benchmark findSceneIntersectionIntrinsics($ray, $(scene.Sphere.centre.x), $(scene.Sphere.centre.y), $(scene.Sphere.centre.z), $(scene.Sphere.radius), T(1e-4), T(Inf))
@code_native debuginfo=:none syntax=:intel findSceneIntersectionIntrinsics(ray, scene, T(1e-4), T(Inf))

function findSceneIntersection(ray, centrex, radius, tmin::T, tmax::T)
    t = T(0)
    @turbo for i in eachindex(radius)
        cox = centrex[i] - ray.origin.x
        coy = - ray.origin.y
        coz = centrex[i] - ray.origin.z

        neg_half_b = ray.direction.x * cox + ray.direction.y * coy + ray.direction.z * coz
        c = cox^2 + coy^2 + coz^2 - radius[i]^2

        quarter_discriminant = neg_half_b^2 - c

        t += quarter_discriminant
    end    

    return t
end

centrex = collect(T, range(-100, 100, N))
radius = collect(T, range(5, 50, N))

findSceneIntersection(ray, centrex, radius, T(1e-4), T(Inf))
@benchmark findSceneIntersection($ray, $centrex, $radius, (T(1e-4)), (T(Inf)))


open("a.txt", "w") do io
    code_llvm(io, debuginfo=:none, findSceneIntersection, (ray, scene, (T(1e-4)), (T(Inf))) |> typeof)
end

function test(x)
    t = T(0)
    @turbo for i in eachindex(x)
        t += ifelse(x[i] > T(0), sqrt(x[i]), T(0))
    end    
    return t
end

x = collect(T, LinRange(-5, 5, N))

test(x)
@code_warntype test(x)
@benchmark test(x)