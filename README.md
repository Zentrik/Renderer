# Renderer

My implementation of https://raytracing.github.io/books/RayTracingInOneWeekend.html in Julia.

GPU only Version is currently here https://github.com/Zentrik/Renderer/tree/GPU-WaveFront 

Install by cloning this repo, activating the package environment (i.e. `cd` to the root directory, open `julia` and `] activate .`) and then instantiate (`] instantiate`).
Then open [RayTracingInOneWeekend.jl](src/RayTracingInOneWeekend.jl) and run.

Delete the definition of `SIMD.any()` if your computer does not support avx (this may also give a speedup if you have avx512)

To run a bit faster change `const Fast = false` to `true`.

![image](https://github.com/Zentrik/Renderer/assets/19725290/d842e937-5b3a-4ef6-894f-efcc04415692)

# Benchmarks

Using Claforte's benchmark: 1080p; 1000 samples per pixel; max depth is 16

Claforte's code runs in 1663s.

[RayTracingInOneWeekend.jl](src/RayTracingInOneWeekend.jl) runs in 202s

On my laptop which has better avx2 support I get 140s, slightly slower than my c++ code giving 135s.


## IGNORE - Other Benchmarks

Polyester, ThreadsX and tullio are all slower than using @spawn

clang++ PROFVIEW

singlethreaded 2300ms 
multithreaded 300ms

RayTracingInOneWeekend.jl
julia 1.9.0 rc2 - adding teardown=(sleep(0.5)) makes @benchmark give quicker results (presumably more accurate) and matches @time result

production()

single 2.5s 
multi 300ms using @time / 370ms using @benchmark median

Expronicon #e946f5f

single 
multi 280ms / 342 using @benchmark median

Virtual.jl - Look at Virtual.jl branch using teardown benchmark()

single 
multi 285ms

Virtual.jl - with attenuation stored in sphere instead of in material - (no improvement when also returning sphere and hitrecord to avoid acessesing sphere.material in findSceneIntersection) #5c7108a using teardown benchmark()

single 
multi 275ms - skeptical this is different to Expronicon

ON BATTERY POWER Virtual.jl using teardown benchmark()

single 2.374s
multi 295ms

Virtual.jl - with attenuation stored in sphere instead of in material - (no improvement when also returning sphere and hitrecord to avoid acessesing sphere.material in findSceneIntersection) using teardown benchmark()

single 2.361s 
multi 292ms
