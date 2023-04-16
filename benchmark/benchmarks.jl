using BenchmarkTools
using Renderer

const SUITE = BenchmarkGroup()

SUITE["RayTracingInOneWeekend"] = BenchmarkGroup(["test"])

SUITE["RayTracingInOneWeekend"]["1920/2p with 5 samples per pixel and max depth of 16"] = @benchmarkable Renderer.render!(x[2], x[1], x[3], samples_per_pixel=5, parallel=false) setup=(x = Renderer.setup(1920/2))