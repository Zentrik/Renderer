using Profile, PProf 

include("RayTracingInOneWeekend.jl") 

ray = Ray(); sphere = Sphere();
# intersect(ray, sphere, 0, Inf)

HittableList = scene_random_spheres()

# Profile.Allocs.clear()

# @time Profile.Allocs.@profile sample_rate=0.5 render(imagesize(10, 16/9)..., Camera(imagesize(10, 16/9)..., [13, -3, 2], [0, 0, 0], [0, 0, 1], 20, 0.05, 10), false);

# PProf.Allocs.pprof(from_c=false, webport=8080)

spectrum_img, rgb_img = render(imagesize(50, 16/9)..., Camera(imagesize(50, 16/9)..., [13, -3, 2], [0, 0, 0], [0, 0, 1], 20, 0.05, 10), false);
Profile.Allocs.clear(); @time Profile.Allocs.@profile sample_rate=0.5 spectrum_img, rgb_img = render(imagesize(50, 16/9)..., Camera(imagesize(50, 16/9)..., [13, -3, 2], [0, 0, 0], [0, 0, 1], 20, 0.05, 10), false); PProf.Allocs.pprof(from_c=false, webport=8080)

reset_timer!(to)
reset_timer!(tf)

# rayColour(ray, HittableList, 10)
render(imagesize(10, 16/9)..., Camera(imagesize(10, 16/9)..., [13, -3, 2], [0, 0, 0], [0, 0, 1], 20, 0.05, 10), false);
# intersect(ray, sphere, 0, Inf)

show(tf)
show(to)
