using BenchmarkTools
using Renderer, CUDA

const SUITE = BenchmarkGroup()

SUITE["RayTracingInOneWeekend"] = BenchmarkGroup(["test"])

SUITE["RayTracingInOneWeekend"]["GPU: 1920/4p with 10 samples per pixel and max depth of 16"] = begin
    scene, spectrum_img, camera = Renderer.setup(:GPU)
    Renderer.test(:GPU)
    @benchmarkable CUDA.@sync(invokelatest($(Renderer.render!), spectrum_img, scene, camera; samples_per_pixel=10, parallel=:GPU)) seconds=25
end

SUITE["RayTracingInOneWeekend"]["GPU: 1920p with 100 samples per pixel and max depth of 16, requires multiple buffers"] = begin
    scene, spectrum_img, camera = Renderer.setup(:GPU, 1920)
    Renderer.test(:GPU)
    @benchmarkable CUDA.@sync(invokelatest($(Renderer.render!), spectrum_img, scene, camera; samples_per_pixel=100, parallel=:GPU)) seconds=150
end