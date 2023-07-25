using BenchmarkTools
macro smart_assert(ex, msg=nothing)
    return :($(esc(ex)))
end
const ASSERTIONS_DISABLED = true
include("../src/RayTracingInOneWeekend.jl")

const SUITE = BenchmarkGroup()

SUITE["RayTracingInOneWeekend"] = BenchmarkGroup(["test"])

SUITE["RayTracingInOneWeekend"]["GPU: 1920/4p with 10 samples per pixel and max depth of 16"] = begin
    scene, spectrum_img, camera = setup(:GPU)
    test(:GPU)
    @benchmarkable CUDA.@sync(invokelatest($(render!), spectrum_img, scene, camera; samples_per_pixel=10, parallel=:GPU)) seconds=25 samples=50_000
end

SUITE["RayTracingInOneWeekend"]["GPU: 1920p with 100 samples per pixel and max depth of 16, requires multiple buffers"] = begin
    scene, spectrum_img, camera = setup(:GPU, 1920)
    test(:GPU)
    @benchmarkable CUDA.@sync(invokelatest($(render!), spectrum_img, scene, camera; samples_per_pixel=100, parallel=:GPU)) seconds=150
end