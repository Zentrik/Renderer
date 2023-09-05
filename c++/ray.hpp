#pragma once

#include "vec3.hpp"

class ray{
    public:
        point3 orig;
        vec3 dir;

        ray() {}
        ray(const point3& origin, const vec3& direction): orig(origin), dir(normalised(direction)) {}

        point3 origin() const {return orig;}
        vec3 direction() const {return dir;}

        point3 at(float t) const {
            return orig + t * dir;
        }
};