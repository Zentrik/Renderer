#pragma once

#include "hittable.hpp"
#include "vec3.hpp"
    
class sphere {
    public:
        point3 centre;
        float radius;
        material* mat_ptr;

        sphere(point3 centre, float radius, material* m) : centre(centre), radius(radius), mat_ptr(m) {};
};