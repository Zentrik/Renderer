using BenchmarkTools
using Renderer

const SUITE = BenchmarkGroup()

SUITE["RayTracingInOneWeekend"] = BenchmarkGroup(["test"])

SUITE["RayTracingInOneWeekend"]["claforte"] = @benchmarkable Renderer.Slow.render!(x..., samples_per_pixel=10, parallel=false) setup=(x=Renderer.Slow.setup())