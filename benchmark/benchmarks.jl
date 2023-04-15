using BenchmarkTools
using Renderer

const SUITE = BenchmarkGroup()

SUITE["RayTracingInOneWeekend"] = BenchmarkGroup(["test"])

SUITE["RayTracingInOneWeekend"]["claforte"] = @benchmarkable Renderer.Slow.render!(x..., samples_per_pixel=5, parallel=false) setup=(x=Renderer.Slow.setup(1920/2))

SUITE["RayTracingInOneWeekend"]["claforte_fast"] = @benchmarkable Renderer.Fast.render!(x..., samples_per_pixel=5, parallel=false) setup=(x=Renderer.Slow.setup(1920/2))