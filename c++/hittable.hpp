#pragma once

#include "ray.hpp"
#include "header.hpp"

class material;

struct hit_record {
    point3 p;
    vec3 normal;
    shared_ptr<material> mat_ptr;
    float t;
};

class hittable {
    public:
        virtual bool hit(const ray& r, float t_min, float t_max, hit_record& rec) const = 0;
};