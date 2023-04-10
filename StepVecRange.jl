using SIMD

struct LoopVecRange{N} <: AbstractUnitRange{Int}
    start::Int
    stop::Int

    function LoopVecRange{N}(start::Int, stop::Int) where N
        @inline
        N <= 0 && throw(ArgumentError("Width cannot be less than 1"))

        @boundscheck (abs(stop - start) + 1) % N != 0 && throw(ArgumentError("Length of range, has to be a multiple of the width"))

        @boundscheck stop < start && throw(ArgumentError("Stop cannot be less than start"))

        return new{N}(start, stop)
    end
end

Base.@propagate_inbounds LoopVecRange{N}(r::Base.OneTo) where N = LoopVecRange{N}(1, r.stop)
Base.@propagate_inbounds LoopVecRange{N}(r::UnitRange) where N = LoopVecRange{N}(r.start, r.stop)
Base.@propagate_inbounds LoopVecRange{N}(x::AbstractVector) where N = LoopVecRange{N}(eachindex(x))

Base.isempty(r::LoopVecRange) = r.start == r.stop

Base.step(r::LoopVecRange{N}) where N = N
Base.has_offset_axes(::LoopVecRange) = false

Base.first(r::LoopVecRange{N}) where N = VecRange{N}(r.start)
Base.last(r::LoopVecRange{N}) where N = VecRange{N}(r.stop - N + 1)

Base.iterate(r::LoopVecRange) = isempty(r) ? nothing : (first(r), first(r))

function Base.iterate(r::LoopVecRange, i::VecRange)
    @inline
    i == last(r) && return nothing
    next = i + step(r)
    (next, next)
end

Base.length(r::LoopVecRange{N}) where N = (r.stop - r.start + 1) ÷ N
Base.eltype(::Type{LoopVecRange{N}}) where N = VecRange{N}

Base.show(io::IO, r::LoopVecRange) = print(io, repr(first(r)), ':', repr(last(r)))


x = rand(16)
for lane in LoopVecRange{8}(1, length(x))
    println(x[lane])
end

function test(x)
    for lane in LoopVecRange{8}(1, length(x))
        println(x[lane])
    end
end

test(x)
@code_llvm test(x)

using BenchmarkTools

x = rand(Float32, 800);

function test2(x)
    c = Vec{8, Float32}(0)

    for lane in LoopVecRange{8}(length(x), 1)
        c += x[lane]
    end

    return sum(c)
end

test2(x)
@benchmark test2($x)
@code_llvm debuginfo=:none test2(x)

function test3(x)
    N = 8

    c = Vec{N, Float32}(0)
    lane = VecRange{N}(0)

    i = 1

    while i ≤ length(x)
        c += x[lane + i]
        i += N
    end
    
    return sum(c)
end

test3(x)
@benchmark test3($x)
@code_llvm debuginfo=:none test3(x)

function test4(x)
    N = 8

    c = Vec{N, Float32}(0)
    lane = VecRange{N}(0)

    i = 1

    @inbounds while i ≤ length(x)
        c += x[lane + i]
        i += N
    end
    
    return sum(c)
end

test4(x)
@benchmark test4($x)
@code_llvm debuginfo=:none test4(x)