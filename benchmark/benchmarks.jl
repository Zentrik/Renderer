using BenchmarkTools
using Renderer

const SUITE = BenchmarkGroup()

SUITE["RayTracingInOneWeekend"] = BenchmarkGroup(["test"])

SUITE["RayTracingInOneWeekend"]["render"] = @benchmarkable Renderer.render!(x..., samples_per_pixel=5, parallel=false) setup=(x=Renderer.setup(1920/2))