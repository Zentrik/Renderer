#pragma once

#include <cmath>
#include <limits>
#include <memory>
#include <cstdlib>
#include <fstream>

#ifdef _WIN32
#include <windows.h>
#else
#include <unistd.h>
#endif

// Usings

using std::shared_ptr;
using std::make_shared;
using std::sqrt;

// Constants

// constexpr const double infinity = std::numeric_limits<double>::infinity();
constexpr const double infinity = std::numeric_limits<double>::max(); // idk how well infinity plays with fast math
constexpr const double pi = 3.1415926535897932385;

// Utility Functions

constexpr inline double degrees_to_radians(double degrees) {
    return degrees * pi / 180.0;
}

inline double random_double() {
    // Returns a random real in [0,1).
    return rand() / (RAND_MAX + 1.0);
}

inline double random_double(double min, double max) {
    // Returns a random real in [min,max).
    return min + (max-min)*random_double();
}

inline double clamp(double x, double min, double max) {
    if (x < min) return min;
    if (x > max) return max;
    return x;
}

// Common Headers

#include "ray.hpp"
#include "vec3.hpp"