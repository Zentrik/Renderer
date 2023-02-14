using LoopVectorization, LinearAlgebra, StructArrays, BenchmarkTools, Test

BLAS.set_num_threads(1); @show BLAS.vendor()

const MatrixFInt64 = Union{Matrix{Float64}, Matrix{Int}}

function mul_avx!(C::MatrixFInt64, A::MatrixFInt64, B::MatrixFInt64)
    @turbo for m ∈ 1:size(A,1), n ∈ 1:size(B,2)
        Cmn = zero(eltype(C))
        for k ∈ 1:size(A,2)
            Cmn += A[m,k] * B[k,n]
        end
        C[m,n] = Cmn
    end
end

function mul_add_avx!(C::MatrixFInt64, A::MatrixFInt64, B::MatrixFInt64, factor=1)
    @turbo for m ∈ 1:size(A,1), n ∈ 1:size(B,2)
        ΔCmn = zero(eltype(C))
        for k ∈ 1:size(A,2)
            ΔCmn += A[m,k] * B[k,n]
        end
        C[m,n] += factor * ΔCmn
    end
end

const StructMatrixComplexFInt64 = Union{StructArray{ComplexF64,2}, StructArray{Complex{Int},2}}

function mul_avx!(C:: StructMatrixComplexFInt64, A::StructMatrixComplexFInt64, B::StructMatrixComplexFInt64)
    mul_avx!(    C.re, A.re, B.re)     # C.re = A.re * B.re
    mul_add_avx!(C.re, A.im, B.im, -1) # C.re = C.re - A.im * B.im
    mul_avx!(    C.im, A.re, B.im)     # C.im = A.re * B.im
    mul_add_avx!(C.im, A.im, B.re)     # C.im = C.im + A.im * B.re
end

M, K, N = 56, 57, 58
A  = StructArray(randn(ComplexF64, M, K));
B  = StructArray(randn(ComplexF64, K, N));
C1 = StructArray(Matrix{ComplexF64}(undef, M, N));
C2 = collect(similar(C1));

@btime mul_avx!($C1, $A, $B)
@btime mul!(    $C2, $(collect(A)), $(collect(B))); # collect turns the StructArray into a regular Array
@test C1 ≈ C2


a = rand(1000000)
result = 0.
@turbo for i in eachindex(a)
    result += a[i]^2
end

f(x, y) = x^y
t = 2
@time @turbo for i in eachindex(a)
    result += f(a[i], t)
end

result = 0.
@time for i in eachindex(a)
    result += f(a[i], t)
end