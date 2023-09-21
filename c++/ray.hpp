#pragma once

#include "header.hpp"

class Ray{
public:
    vec3 origin;
    vec3 direction;

    __host__ __device__ Ray(const vec3 origin, const vec3 direction): origin(origin), direction(direction) {}

    __host__ __device__ vec3 at(f32 t) const {
        return origin + t * direction;
    }
};