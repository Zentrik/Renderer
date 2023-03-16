#pragma once

#include <cmath>
#include <limits>
#include <memory>
#include <cstdlib>
#include <fstream>
#include <chrono>
#include <algorithm>
#include <execution>
#include <exception>
#include <boost/stacktrace.hpp>

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

// constexpr const float infinity = std::numeric_limits<float>::infinity();
constexpr const float infinity = (std::numeric_limits<float>::max)(); // idk how well infinity plays with fast math
// max() is defined in Windows.h so we need to wrap entire this in parentheses to prevent that from being used.
constexpr const float pi = 3.1415926535897932385;

// Utility Functions

constexpr inline float degrees_to_radians(float degrees) {
    return degrees * pi / 180.0;
}

struct random_series {
    uint32_t State;

    random_series() = delete; // prevent it being initialised with 0
};

uint32_t XOrShift32(random_series &Series) {
    uint32_t x = Series.State;

    x ^= x << 13;
    x ^= x >> 17;
    x ^= x << 5;

    Series.State = x;
    return x;
}
inline float random_float(random_series &Series) {
    // Returns a random real in [0,1).

    float result = (float) XOrShift32(Series) / (float) ((uint32_t) - 1);
    return result;
}

inline float random_float(random_series &Series, float min, float max) {
    // Returns a random real in [min,max).

    return min + (max-min)*random_float(Series);
}

inline float clamp(float x, float min, float max) {
    if (x < min) return min;
    if (x > max) return max;
    return x;
}

// Common Headers

#include "ray.hpp"
#include "vec3.hpp"