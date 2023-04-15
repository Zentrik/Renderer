clang++
PROFVIEW

singlethreaded 2300ms
multithreaded 300ms


julia - adding teardown=(sleep(0.5)) makes @benchmark give quicker results (presumably more accurate)
production()

single 2.5s 
multi  300ms using @time / 370ms using @benchmark median

Expronicon

single
multi 280ms / 342 using @benchmark median

Virtual.jl
using teardown benchmark()

single 2.374s
multi 295ms

Virtual.jl - with attenuation stored in sphere instead of in material - (no improvement when also returning sphere and hitrecord to avoid acessesing sphere.material in findSceneIntersection)
using teardown benchmark()

single 2.361s
multi 292ms