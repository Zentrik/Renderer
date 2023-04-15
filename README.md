# Renderer

My implementation of https://raytracing.github.io/books/RayTracingInOneWeekend.html in Julia.

[RayTracingInOneWeekend.jl](./RayTracingInOneWeekend.jl) tries to have similar code to the book whilst [Fast.jl](Fast.jl) just aims to be as fast as it can.

Install by cloning this package and install my fork of SIMD.jl by
```julia
] add https://github.com/Zentrik/SIMD.jl
```

# Benchmarks

clang++ PROFVIEW

singlethreaded 2300ms multithreaded 300ms

julia - adding teardown=(sleep(0.5)) makes @benchmark give quicker results (presumably more accurate) and matches @time result

production()

single 2.5s multi 300ms using @time / 370ms using @benchmark median

Expronicon #e946f5f

single multi 280ms / 342 using @benchmark median

Virtual.jl - Look at Virtual.jl branch using teardown benchmark()

single multi 285ms

Virtual.jl - with attenuation stored in sphere instead of in material - (no improvement when also returning sphere and hitrecord to avoid acessesing sphere.material in findSceneIntersection) #5c7108a using teardown benchmark()

single multi 275ms - skeptical this is different to Expronicon

ON BATTERY POWER Virtual.jl using teardown benchmark()

single 2.374s multi 295ms

Virtual.jl - with attenuation stored in sphere instead of in material - (no improvement when also returning sphere and hitrecord to avoid acessesing sphere.material in findSceneIntersection) using teardown benchmark()

single 2.361s multi 292ms