#pragma once

#include "header.hpp"
#include "material.hpp"

class Sphere {
public:
    vec3 centre;
    f32 radius;
    Material material;

    Sphere(vec3 centre, f32 radius, Material material) : centre(centre), radius(radius), material(material) {};
};

__device__ vec3 sphere_normal(vec3 centre, f32 radius, vec3 position) {return (position - centre) / radius;}