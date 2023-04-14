clang++
PROFVIEW - This includes writing to a file though

singlethreaded 2300ms
multithreaded 300ms


julia - adding teardown=(sleep(0.5)) makes @benchmark give quicker results (presumably more accurate)
production()

single 2.5s 
multi  300ms using @time / 370ms using @benchmark median

Expronicon

single
multi 280ms / 342 using @benchmark median