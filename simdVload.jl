using BenchmarkTools, SIMD

x = rand(Float32, 800)

function test(x)
    N = 8

    c = Vec{N, Float32}(0)
    lane = VecRange{N}(0)

    @assert length(x) % N == 0

    @inbounds @fastmath for i in 1:N:length(x)
        c += x[lane + i]
    end
    return sum(c)
end

function test2(x)
    N = 8

    c = Vec{N, Float32}(0)

    @inbounds @fastmath for i in eachindex(x)
        c += x[i]
    end
    return sum(c)
end

function test4(x)
    N = 8

    c = Vec{N, Float32}(0)
    lane = VecRange{N}(0)

    i = 1

    @inbounds @fastmath while i ≤ length(x)
        c += x[lane + i]
        i += N
    end
    
    return sum(c)
end

function test5(x)
    N = 8

    c = Vec{N, Float32}(0)
    lane = VecRange{N}(0)

    @inbounds @fastmath for i in range(1, length(x), step=8)
        c += x[lane + i]
    end
    
    return sum(c)
end

function test10(x)
    N = 8

    c = Vec{N, Float32}(0)
    lane = VecRange{N}(0)

    @inbounds @fastmath for i in 1:N:800
        c += x[lane + i]
    end
    return sum(c)
end

test(x)
@benchmark test($x)
@code_llvm debuginfo=:none test(x)
@code_native debuginfo=:none syntax=:intel test(x)

open("a.txt", "w") do io
    code_llvm(io, test7, (x,) |> typeof)
end

test4(x)
@benchmark test4($x)
@code_llvm debuginfo=:none test4(x)
@code_native debuginfo=:none syntax=:intel test4(x)

test10(x)
@benchmark test10($x)
@code_llvm debuginfo=:none test10(x)

test5(x)
@benchmark test5($x)
@code_llvm debuginfo=:none test5(x)

test2([vload(Vec{8, Float32}, x, i) for i in 1:8:length(x)])
@benchmark test2($([vload(Vec{8, Float32}, x, i) for i in 1:8:length(x)]))
@code_llvm debuginfo=:none test2(x)
@code_native debuginfo=:none syntax=:intel test2([vload(Vec{8, Float32}, x, i) for i in 1:8:length(x)])

using LoopVectorization

function test3(x)
    c = Float32(0)

    @turbo unroll=-1 for i in eachindex(x)
        c += x[i]
    end
    return c
end

test3(x)
@benchmark test3($x)
@code_llvm debuginfo=:none test3(x)
@code_native debuginfo=:none syntax=:intel test3(x)


function test6(x)
    c = zero(eltype(x))

    for i in 1:8:length(x)
        c += x[i]
    end

    return c
end

function test7(x)
    c = 0

    i = 1

    while i ≤ length(x)
        @inbounds c += x[i]

        i += 1
    end

    return c
end

function test8(x)
    c = 0

    for i in eachindex(x)
        c += x[i]
    end

    return c
end

test6(x)
@benchmark test6($x)
@code_llvm debuginfo=:none test6(x)

test7(x)
@benchmark test7($x)
@code_llvm test7(x)

test8(x)
@benchmark test8($x)
@code_llvm debuginfo=:none test8(x)

using BenchmarkTools

x = rand(Float32, 800);

function test9(x)
    c = zero(eltype(x))

    for i in 1:8:length(x)
        c += x[i]
    end

    return c
end

test9(x)
@benchmark test9($x)
@code_llvm debuginfo=:none test9(x)

struct StepRangeTest{T,S} <: OrdinalRange{T,S}
    start::T
    step::S
    stop::T

    @inline function StepRangeTest{T,S}(start, step, stop) where {T,S}
        start = convert(T, start)
        step = convert(S, step)
        stop = convert(T, stop)
        return new(start, step, steprange_last(start, step, stop))
    end
end

# to make StepRange constructor inlineable, so optimizer can see `step` value
@inline function steprange_last(start, step, stop)::typeof(stop)
    if isa(start, AbstractFloat) || isa(step, AbstractFloat)
        throw(ArgumentError("StepRange should not be used with floating point"))
    end
    if isa(start, Integer) && !isinteger(start + step)
        throw(ArgumentError("StepRange{<:Integer} cannot have non-integer step"))
    end
    z = zero(step)
    step == z && throw(ArgumentError("step cannot be zero"))

    if stop == start
        last = stop
    else
        if (step > z) != (stop > start)
            last = steprange_last_empty(start, step, stop)
        else
            # Compute absolute value of difference between `start` and `stop`
            # (to simplify handling both signed and unsigned T and checking for signed overflow):
            absdiff, absstep = stop > start ? (stop - start, step) : (start - stop, -step)

            # Compute remainder as a nonnegative number:
            if absdiff isa Signed && absdiff < zero(absdiff)
                # unlikely, but handle the signed overflow case with unsigned rem
                remain = convert(typeof(absdiff), unsigned(absdiff) % absstep)
            else
                remain = convert(typeof(absdiff), absdiff % absstep)
            end
            # Move `stop` closer to `start` if there is a remainder:
            last = stop > start ? stop - remain : stop + remain
        end
    end
    return last
end

function steprange_last_empty(start::Integer, step, stop)::typeof(stop)
    # empty range has a special representation where stop = start-1,
    # which simplifies arithmetic for Signed numbers
    if step > zero(step)
        last = start - oneunit(step)
    else
        last = start + oneunit(step)
    end
    return last
end
# For types where x+oneunit(x) may not be well-defined use the user-given value for stop
steprange_last_empty(start, step, stop) = stop

@inline StepRangeTest{T}(start, step::S, stop) where {T,S} = StepRangeTest{T,S}(start, step, stop)
@inline StepRangeTest(start::T, step::S, stop::T) where {T,S} = StepRangeTest{T,S}(start, step, stop)

Base.isempty(r::StepRangeTest) =
    # steprange_last(r.start, r.step, r.stop) == r.stop
    (r.start != r.stop) & ((r.step > zero(r.step)) != (r.stop > r.start))

Base.step(r::StepRangeTest) = r.step
Base.has_offset_axes(::StepRangeTest) = false

function test10(x)
    c = zero(eltype(x))

    for i in StepRangeTest(1,8,length(x))
        c += x[i]
    end

    return c
end

test10(x)
@benchmark test10($x)
@code_llvm debuginfo=:none test10(x)

function test11(x)
    c = zero(eltype(x))

    i = 1

    while i ≤ length(x)
        c += x[i]
        i += 8
    end

    return c
end

test11(x)
@benchmark test11($x)
@code_llvm debuginfo=:none test11(x)

function test12(x)
    N = 8

    c = Vec{N, Float32}(0)
    lane = VecRange{N}(0)

    @inbounds @fastmath for i in StepRangeTest(1,N,length(x))
        c += x[lane + i]
    end
    return sum(c)
end

test12(x)
@benchmark test12($x)
@code_llvm debuginfo=:none test12(x)

function test13(x)
    c = zero(eltype(x))

    for i in @inline (1:8:length(x))
        c += x[i]
    end

    return c
end

test13(x)
@benchmark test13($x)
@code_llvm debuginfo=:none test13(x)

function test14(x)
    c = zero(eltype(x))

    for i in @inline StepRange(1, 8, length(x))
        c += x[i]
    end

    return c
end

test14(x)
@benchmark test14($x)
@code_llvm debuginfo=:none test14(x)


using BenchmarkTools

x = rand(Float32, 80)
a = rand(round(Int, length(x) / 2):length(x), 10^6)

function test20(x, a)
    c = zero(Float32)

    for j in a
        for i in 1:8:j
            c += x[i]
        end
    end

    return c
end

test20(x, a)
@benchmark test20($x, $a)
@code_llvm debuginfo=:none test20(x, a)

function test21(x, a)
    c = zero(Float32)

    for j in a
        i = 1
        while i ≤ j
            c += x[i]
            i += 8
        end
    end

    return c
end

test21(x, a)
@benchmark test21($x, $a)
@code_llvm debuginfo=:none test21(x, a)