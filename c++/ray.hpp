#pragma once

#include "vec3.hpp"

class ray{
public:
    point3 origin;
    vec3 direction;

    ray() {}
    ray(const point3 origin, const vec3 direction): origin(origin), direction(direction) {}

    point3 at(float t) const {
        return origin + t * direction;
    }
};