#pragma once

#include <cmath>
#include <limits>
#include <memory>
#include <cstdlib>
#include <fstream>
#include <chrono>

#ifdef _WIN32
#include <windows.h>
#else
#include <unistd.h>
#endif

// Usings

using std::shared_ptr;
using std::make_shared;
using std::sqrt;

using Clock = std::chrono::steady_clock;
using std::chrono::time_point;
using std::chrono::duration_cast;
using std::chrono::milliseconds;
using namespace std::literals::chrono_literals;
// using std::this_thread::sleep_for;

// Constants

// constexpr const double infinity = std::numeric_limits<double>::infinity();
constexpr const double infinity = (std::numeric_limits<double>::max)(); // idk how well infinity plays with fast math
// max() is defined in Windows.h so we need to wrap entire this in parentheses to prevent that from being used.
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