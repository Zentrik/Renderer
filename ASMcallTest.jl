using VectorizationBase, SIMDTypes

@eval @generated function fcmp_ogt(x::SIMDTypes._Vec{N, T}, y::SIMDTypes._Vec{N, T}) where {N, T}
    s = """
    %res = fcmp fast ogt <$(N) x float> %0, %1
    %resb = sext <$(N) x i1> %res to <$(N) x i32>
    %resc = bitcast <$(N) x i32> %resb to <$(N) x float>
    ret <$(N) x float> %resc
    """
    return :(
        $(Expr(:meta, :inline));
        Base.llvmcall($s, SIMDTypes._Vec{N, Float32}, Tuple{SIMDTypes._Vec{N, T}, SIMDTypes._Vec{N, T}}, x, y)
    )
end

function horizontal_or(x)
    return ccall("llvm.x86.avx.vtestz.ps.256", llvmcall, Int32, (SIMDTypes._Vec{8, Float32}, SIMDTypes._Vec{8, Float32}), x, x) == 0
end

test(x, y) = horizontal_or(fcmp_ogt(x, y))

x = VectorizationBase.data(VectorizationBase.Vec{8, Float32}(0))
y = VectorizationBase.data(VectorizationBase.Vec{8, Float32}(-1))
test(x, y)
@code_llvm debuginfo=:none test(x, y)
@code_native debuginfo=:none test(x, y)

using BenchmarkTools
@benchmark test($x, $y)

using LoopVectorization
function test(x, y)
    z = false
    @turbo for i in eachindex(x)
        z |= x[i] > y[i]
    end
    z
end
x = ones(4)
y = zeros(4)
test(x, y)

using LLVM
using LLVM.Interop
f() = @asmcall("cmp \$1, \$2; setl \$0", "=r,r,r", Bool, Tuple{Int64, Int64}, 8, 2)
f()

f1(a, b) = a > b
@code_native f1(8, 2)

open("f1.s", "w") do io
    code_llvm(io, debuginfo=:none, f1, (8, 2) |> typeof)
end

g(x, y) = @asmcall("nop", "=r,r,r", Bool, Tuple{SIMDTypes._Vec{8, Float32}, SIMDTypes._Vec{8, Float32}}, x, y)
g(x, y)

f1(a, b) = a > b
@code_native f1(8, 2)

# f1(a, b) = @asmcall("""
# pushq   %rbp
# .cfi_def_cfa_offset 16
# .cfi_offset %rbp, -16
# movq    %rsp, %rbp
# .cfi_def_cfa_register %rbp
# vmovaps (%rdx), %ymm0
# vcmpltps        (%rcx), %ymm0, %ymm0
# vtestps %ymm0, %ymm0
# setne   %al
# popq    %rbp
# vzeroupper
# retq
# """, "=r,r,r", false, Bool, Tuple{SIMDTypes._Vec{8, Float32}, SIMDTypes._Vec{8, Float32}}, a, b)

# x = VectorizationBase.data(VectorizationBase.Vec{8, Float32}(0))
# y = VectorizationBase.data(VectorizationBase.Vec{8, Float32}(-1))
# f1(x, y)

using SIMD

function h(x, y)
    c = SIMD.vload(SIMD.Vec{8, Float32}, pointer(x))
    d = SIMD.vload(SIMD.Vec{8, Float32}, pointer(y))

    SIMD.any(c > d)
end

x = ones(Float32, 8)
y = zeros(Float32, 8)

h(x, y)

@code_native h(x, y)
@code_native debuginfo=:none h(x, y)

h1(a, b) = @asmcall("""
vmovups (\$2), %ymm0
vcmpltps        (\$1), %ymm0, %ymm0
vextractf128    \$\$1, %ymm0, %xmm1
vpackssdw       %xmm1, %xmm0, %xmm0
vpacksswb       %xmm0, %xmm0, %xmm0
vpand   (\$1), %xmm0, %xmm0
vpshufd \$\$85, %xmm0, %xmm1               # xmm1 = xmm0[1,1,1,1]
vpor    %xmm1, %xmm0, %xmm0
vpsrld  \$\$16, %xmm0, %xmm1
vpor    %xmm1, %xmm0, %xmm0
vpsrlw  \$\$8, %xmm0, %xmm1
vpor    %xmm1, %xmm0, %xmm0
vmovd   %xmm0, %eax
popq    %rbp
vzeroupper
retq
""", "=r,r,r", false, Bool, Tuple{Ptr{Float32}, Ptr{Float32}}, a, b)

x = ones(Float32, 8)
y = zeros(Float32, 8)
h1(pointer(x), pointer(y))
@benchmark h1($(pointer(x)), $(pointer(y)))
z = Float32[0, 1, 0, 0, 0, 0, 0, 0]

h2(a, b) = @asmcall("""
vmovups (\$1), %ymm0
vmovups (\$2), %ymm1
vcmpltps        %ymm0, %ymm1, %ymm2
vtestps         %ymm2, %ymm2
setne \$0
""", "=r,r,r", false, Bool, Tuple{Ptr{Float32}, Ptr{Float32}}, a, b)

using BenchmarkTools
@benchmark h2($(pointer(x)), $(pointer(y)))

a = VectorizationBase.Vec{8, Float32}(0)
b = VectorizationBase.Vec{8, Float32}(-1)

f3(a, b) = VectorizationBase.vany(a > b)
@code_native f3(a, b)
f3(a, b)
@benchmark f3($a, $b)

h3(a, b) = @asmcall("""
vmovups (\$1), %ymm0
vmovups (\$2), %ymm1
vcmpltps        %ymm0, %ymm1, %ymm2
vmovmskps %ymm2, %eax
testl %eax, %eax
setne \$0
""", "=r,r,r", false, Bool, Tuple{Ptr{Float32}, Ptr{Float32}}, a, b)

@benchmark h3($(pointer(x)), $(pointer(y)))



using SIMD, StaticArrays, Base.Cartesian, LinearAlgebra
@generated function genkernel!(D::MMatrix{M,P,Float64},
                A::MMatrix{M,N,Float64},
                X::MMatrix{N,P,Float64}) where {M,N,P}
    quote
    pD, pA = pointer(D), pointer(A)
    V = SIMD.Vec{$M,Float64}
    vA = SIMD.vload(V, pA)
    @inbounds begin
        @nexprs $P p -> Dx_p = vA * V(X[1,p])
        # for n ∈ 1:N-1
        @nexprs $(N-1) n -> begin # Not better than a for loop!!!
            vA = SIMD.vload(V, pA + 64n) # 8 bytes/element * 8 elements/column
            @nexprs $P p -> Dx_p = SIMD.fma(vA, V(X[n+1,p]), Dx_p)
        end
    end
    @nexprs $P p -> SIMD.vstore(Dx_p, pD + 64p-64)
    D
    end
end


jmullib = "/mnt/h/Code/Renderer/libjmulkernel.so"
function jmul!(D::MMatrix{8,6,Float64},A::MMatrix{8,16,Float64},X::MMatrix{16,6,Float64})
    ccall((:jmulkernel, jmullib), Cvoid, (Ptr{Float64},Ptr{Float64},Ptr{Float64}), D, A, X)
    D
end

D = @MMatrix randn(8,6);
A = @MMatrix randn(8,16);
X = @MMatrix randn(16,6);
genkernel!(D, A, X)
jmul!(D, A, X)


function test(D, A, X)
    D .= A*X
end

test(D, A, X)

open("test.s", "w") do io
    code_native(io, debuginfo=:none, test, (D, A, X) |> typeof)
end
genlib = "/mnt/h/Code/Renderer/libtest.so"
function nativemul!(D::MMatrix{8,6,Float64},A::MMatrix{8,16,Float64},X::MMatrix{16,6,Float64})
    ccall((:japi1_test_458, genlib), Cvoid, (Ptr{Float64},Ptr{Float64},Ptr{Float64}), D, A, X)
    D
end
nativemul!(D, A, X)
