# Renderer

My implementation of https://raytracing.github.io/books/RayTracingInOneWeekend.html in Julia.

Install by cloning this repo, activating the package environment (i.e. `cd` to the root directory, open `julia` and `] activate .`) and then instantiate (`] instantiate`).
Then open [RayTracingInOneWeekend.jl](src/RayTracingInOneWeekend.jl) and run.

![image](https://github.com/Zentrik/Renderer/assets/19725290/bc838167-db3a-4502-95e7-a94e960f41e0)

# Benchmarks

Using Claforte's benchmark: 1080p; 1000 samples per pixel; max depth is 16

Claforte's code runs in 1663s on the CPU.

[RayTracingInOneWeekend.jl](src/RayTracingInOneWeekend.jl) and [main.cu](c++/main.cu) run in 14s on a gtx 1070.

On my laptop I get 140s on the CPU.
