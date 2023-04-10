using VectorizationBase, SIMDTypes

@inline f(x, y) = VectorizationBase.vany(x > y)
x = VectorizationBase.Vec{8, Float32}(0)
y = VectorizationBase.Vec{8, Float32}(-1)
f(x, y)

function test(r, x, y)
    @inbounds for i in eachindex(x)
        r[i] = VectorizationBase.vany(x[i] > y[i])
    end
end

using BenchmarkTools
x = [VectorizationBase.Vec(rand(Float32, 8)...) for _ in 1:1000]
y = [VectorizationBase.Vec(rand(Float32, 8)...) for _ in 1:1000]
z = zeros(Bool, 1000)

test(z, x, y)
@code_native debuginfo=:none test(z, x, y)
@benchmark test($z, $x, $y)



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
    a = VectorizationBase.vconvert(VectorizationBase.Vec{8, Int32}, x)
    b = VectorizationBase.vreinterpret(VectorizationBase.Vec{8, Float32}, a)
    c = VectorizationBase.data(b)

    # println(c)
    return ccall("llvm.x86.avx.vtestz.ps.256", llvmcall, Int32, (SIMDTypes._Vec{8, Float32}, SIMDTypes._Vec{8, Float32}), c, c) == 0
end

function test2(r, x, y)
    @inbounds for i in eachindex(x)
        r[i] = horizontal_or(fcmp_ogt_vec(x[i], y[i]))
    end
end

test2(z, x, y)
@code_native debuginfo=:none test2(z, x, y)
@benchmark test2($z, $x, $y) 