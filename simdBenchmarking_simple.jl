using BenchmarkTools, LoopVectorization

const T = Float32

function findSceneIntersection(radius, tmax::T)
    @turbo for i in eachindex(radius)
        quarter_discriminant = radius[i] - radius[i] * radius[i]
        t = ifelse(quarter_discriminant > 0, sqrt(sqrt(quarter_discriminant)), tmax)
        t = ifelse(sqrt(t) > 0, t, sqrt(t))
        tmax =  ifelse(t < tmax, t, tmax)
    end    

    return tmax
end

N = 296
radius = T.(LinRange(0, 2, N))

findSceneIntersection(radius, T(Inf))
@benchmark findSceneIntersection($radius, $(T(Inf)))

@code_llvm debuginfo=:none findSceneIntersection(radius, T(Inf))
@code_native debuginfo=:none syntax=:intel findSceneIntersection(radius, T(Inf))


using VectorizationBase

@inline function maybecompute(
  quarter_discriminant::Vec{W,T},
  tmax::Vec{W,T}
) where {W,T}
  m = quarter_discriminant > 0
  !VectorizationBase.vany(m) && return tmax
  t = ifelse(quarter_discriminant > 0, sqrt(sqrt(quarter_discriminant)), tmax)
  t = ifelse(sqrt(t) > 0, t, sqrt(t))
  return t
end
@inline function maybecompute(x::VecUnroll, y::VecUnroll)
  VecUnroll(
    VectorizationBase.fmap(
      maybecompute,
      VectorizationBase.data(x),
      VectorizationBase.data(y)
    )
  )
end
function findSceneIntersection_maybecompute(radius, tmax::T)
  @turbo for i in eachindex(radius)
    quarter_discriminant = radius[i] - radius[i] * radius[i]
    t = maybecompute(quarter_discriminant, tmax)
    tmax = ifelse(t < tmax, t, tmax)
  end
  return tmax
end

findSceneIntersection_maybecompute(radius, T(Inf))
@benchmark findSceneIntersection_maybecompute($radius, $(T(Inf)))
@code_llvm debuginfo=:none findSceneIntersection_maybecompute(radius, T(Inf))
@code_native debuginfo=:none syntax=:intel findSceneIntersection_maybecompute(radius, T(Inf))