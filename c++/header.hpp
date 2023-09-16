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

#ifdef _WIN32
#include <windows.h>
#else
#include <unistd.h>
#endif

// Usings

using std::pow, std::sqrt, std::pair, std::bit_cast, std::max, std::min, std::clamp;

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
    return degrees * pi / 180;
}

class RNG {
public:
    uint32_t seed;

    RNG(uint32_t seed) : seed(seed) {}
    RNG() = delete; // prevent it being default initialised
};

uint32_t pcg_hash(uint32_t seed)
{
    uint32_t state = seed * 747796405u + 2891336453u;
    uint32_t word = ((state >> (((state >> 28u) + 4u))) ^ state) * 277803737u;
    return (word >> 22u) ^ word;
}

uint32_t random_uint32(RNG& rng) {
    rng.seed = pcg_hash(rng.seed);
    return rng.seed;
}

// Returns a random real in [0,1).
inline float random_float32(RNG& rng) {
    return bit_cast<float>((random_uint32(rng) & 0x007FFFFF) | 0x3f800000) - 1;
}

// random float in [-1, 1)
float random_float32_minustoplus(RNG& rng) {
    return bit_cast<float>((random_uint32(rng) & 0x007FFFFF) | 0x40000000) - 3;
}

// Common Headers

#include "ray.hpp"
#include "vec3.hpp"