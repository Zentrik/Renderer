#pragma once

#include "vec3.hpp"
#include "material.hpp"

class Sphere {
public:
    point3 centre;
    float radius;
    Material mat;

    Sphere(point3 centre, float radius, Material mat) : centre(centre), radius(radius), mat(mat) {};
};