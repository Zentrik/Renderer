# https://gist.github.com/cscherrer/df2fd33b7dbda3b3aba82a28e3a8a54e

# Origin:
# https://julialang.zulipchat.com/#narrow/stream/274208-helpdesk-.28published.29/topic/Constraining.20method.20signatures/near/262358928

struct MethodWrapper{F, T <: Tuple, R}
    f::F
end

MethodWrapper(f::F, Ts)  where {F}           = MethodWrapper{F, toTuple(Ts), Any}(f)
MethodWrapper(f::F, (Ts, R)::Pair) where {F} = MethodWrapper{F, toTuple(Ts),   R}(f)
toTuple(::Type{T}) where {T} = Tuple{T}
toTuple(Ts::Tuple) = Tuple{Ts...}

(M::MethodWrapper{F, Ts, R})(  args...) where {F, Ts, R} = invoke(M.f, Ts, args...)::R
(M::MethodWrapper{F, Ts, Any})(args...) where {F, Ts}    = invoke(M.f, Ts, args...)

function Base.show(io::IO, M::MethodWrapper{F, T, R}) where {F, T <: Tuple, R}
    Ts = collect(T.parameters)
    print(io, string(M.f), "(::$(Ts[1])", (", ::$(Ts[i])" for i in 2:length(Ts))..., ")::$R")
end

macro method(ex::Expr)
    @assert ex.head ∈ (:call, :(::))
    if ex.head == :call
        R = Any
    else
        R  = ex.args[2]
        ex = ex.args[1]
    end
    f = ex.args[1]
    Ts = map(ex.args[2:end]) do arg::Expr
        @assert arg.head == :(::)
        arg.args[length(arg.args)]
    end
    esc(:(MethodWrapper($f, ($(Tuple(Ts)...),) => $R)))
end