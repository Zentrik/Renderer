using Random
import Random: SamplerType, SamplerUnion, SamplerTrivial

import Random: rng_native_52, seed, seed!
import Base: rand, copy, copy!, ==

## Xorshift64

"""
    Xorshift64(seed)
    Xorshift64()

Xorshift64 is a fast pseudorandom number generator 

Apart from the high speed, Xorshift64 has a small memory footprint, making it suitable for
applications where many different random states need to be held for long time.

# Examples
```jldoctest
julia> using Random

julia> rng = Xorshift64(1234);

julia> x1 = rand(rng, 2)
2-element Vector{Float64}:
 0.32597672886359486
 0.5490511363155669

julia> rng = Xorshift64(1234);

julia> x2 = rand(rng, 2)
2-element Vector{Float64}:
 0.32597672886359486
 0.5490511363155669

julia> x1 == x2
true
```
"""
mutable struct Xorshift64 <: AbstractRNG
    s::UInt64

    Xorshift64(s::Integer) = new(s)
    Xorshift64(seed=nothing) = seed!(new(), seed)
end

function setstate!(x::Xorshift64, s::UInt64)
    x.s = s
    x
end

copy(rng::Xorshift64) = Xorshift64(rng.s0, rng.s1, rng.s2, rng.s3)

function copy!(dst::Xorshift64, src::Xorshift64)
    dst.s = src.s
    dst
end

function ==(a::Xorshift64, b::Xorshift64)
    a.s == b.s
end

rng_native_52(::Xorshift64) = UInt64

@inline function rand(rng::Xorshift64, ::SamplerType{UInt64})
    s = rng.s
    
    s ⊻= s << 13 
    s ⊻= s >> 7
    s ⊻= s << 17

    rng.s = s
    s
end

## Task local RNG

"""
    TaskLocalXorshift64

The `TaskLocalXorshift64` has state that is local to its task, not its thread.
It is seeded upon task creation, from the state of its parent task.
Therefore, task creation is an event that changes the parent's RNG state.

As an upside, the `TaskLocalXorshift64` is pretty fast, and permits reproducible
multithreaded simulations (barring race conditions), independent of scheduler
decisions. As long as the number of threads is not used to make decisions on
task creation, simulation results are also independent of the number of available
threads / CPUs. The random stream should not depend on hardware specifics, up to
endianness and possibly word size.

Using or seeding the RNG of any other task than the one returned by `current_task()`
is undefined behavior: it will work most of the time, and may sometimes fail silently.
"""
struct TaskLocalXorshift64 <: AbstractRNG end
TaskLocalXorshift64(::Nothing) = TaskLocalXorshift64()
rng_native_52(::TaskLocalXorshift64) = UInt64

function setstate!(
    x::TaskLocalXorshift64,
    s::UInt64, # TaskLocalXorshift64 state
)
    t = current_task()
    t.rngState = s
    x
end

@inline function rand(::TaskLocalXorshift64, ::SamplerType{UInt64})
    task = current_task()
    s = task.rngState

    s ⊻= s << 13 
    s ⊻= s >> 7
    s ⊻= s << 17

    task.rngState = s
    s
end

# Shared implementation between Xorshift64 and TaskLocalXorshift64 -- seeding

function seed!(rng::Union{TaskLocalXorshift64, Xorshift64})
    # as we get good randomness from RandomDevice, we can skip hashing
    rd = RandomDevice()
    setstate!(rng, rand(rd, UInt64))
end

seed!(rng::Union{TaskLocalXorshift64, Xorshift64}, seed::Integer) = seed!(rng, make_seed(seed))

@inline function rand(rng::TaskLocalXorshift64, ::SamplerType{UInt128})
    first = rand(rng, UInt64)
    second = rand(rng, UInt64)
    second + UInt128(first) << 64
end

@inline rand(rng::TaskLocalXorshift64, ::SamplerType{Int128}) = rand(rng, UInt128) % Int128

@inline function rand(rng::TaskLocalXorshift64,
                      T::SamplerUnion(Bool, Int8, UInt8, Int16, UInt16, Int32, UInt32, Int64))
    S = T[]
    # use upper bits
    (rand(rng, UInt64) >>> (64 - 8*sizeof(S))) % S
end

function copy(rng::TaskLocalXorshift64)
    t = current_task()
    Xorshift64(t.rngState)
end

function copy!(dst::TaskLocalXorshift64, src::Xorshift64)
    t = current_task()
    setstate!(dst, src.s)
    return dst
end

function copy!(dst::Xorshift64, src::TaskLocalXorshift64)
    t = current_task()
    setstate!(dst, t.rngState)
    return dst
end

function ==(a::Xorshift64, b::TaskLocalXorshift64)
    t = current_task()
    a.s == t.rngState
end

==(a::TaskLocalXorshift64, b::Xorshift64) = b == a