#pragma once

#include <limits>
#include <cstdlib>
#include <fstream>
#include <chrono>
#include <algorithm>
// #include <cuda_runtime.h>
#include "helper_cuda.h"
#include "helper_math.h"
#include <tuple>
#include <bit>

#ifdef _WIN32
#include <windows.h>
#else
#include <unistd.h>
#endif

// Usings

using std::pow, std::sqrt, std::pair, std::max, std::min;

using Clock = std::chrono::steady_clock;
using std::chrono::time_point;
using std::chrono::duration_cast;
using std::chrono::milliseconds;
using namespace std::literals::chrono_literals;
// using std::this_thread::sleep_for;

// Type Aliases

using i32 = int32_t;
using u32 = uint32_t;
using f32 = float;

// Constants

// constexpr const f32 infinity = std::numeric_limits<f32>::infinity();
constexpr const f32 infinity = (std::numeric_limits<f32>::max)(); // idk how well infinity plays with fast math
// max() is defined in Windows.h so we need to wrap entire this in parentheses to prevent that from being used.
constexpr const f32 pi = 3.1415926535897932385;

// Utility Functions

constexpr inline f32 degrees_to_radians(f32 degrees) {
    return degrees * pi / 180;
}

using vec3 = float3;
using colour = vec3;    // RGB colour

__device__ f32 length_squared(vec3 v) {return dot(v, v);}

__device__ bool approx_zero(vec3 v) {
    return (abs(v.x) + abs(v.y) + abs(v.z)) < 1e-2f;
}

// https://www.reedbeta.com/blog/hash-functions-for-gpu-rendering/
__host__ __device__ u32 pcg_hash(u32 seed)
{
    u32 state = seed * 747796405u + 2891336453u;
    u32 word = ((state >> (((state >> 28u) + 4u))) ^ state) * 277803737u;
    return (word >> 22u) ^ word;
}

class RNG {
public:
    u32 seed;

    __host__ __device__ RNG(u32 seed) : seed(seed) {}
    __host__ __device__ RNG() = delete; // prevent it being default initialised

    __host__ __device__ u32 u32() {
        seed = pcg_hash(seed);
        return seed;
    }

    // Returns a random real in [0,1).
    __device__ f32 f32() {
        return __uint_as_float((u32() & 0x007FFFFF) | 0x3f800000) - 1;
    }

    __host__ float f32() {
        return std::bit_cast<float>((u32() & 0x007FFFFF) | 0x3f800000) - 1;
    }

    // random f32 in [-1, 1)
    __host__ float f32_minustoplus() {
        return std::bit_cast<float>((u32() & 0x007FFFFF) | 0x40000000) - 3;
    }

    __device__ float f32_minustoplus() {
        return __uint_as_float((u32() & 0x007FFFFF) | 0x40000000) - 3;
    }

    __host__ __device__ vec3 colour() {
        return {f32(), f32(), f32()};
    }

    __host__ __device__ vec3 uniform_random_unit_vector() {
        float z = f32_minustoplus();
        float r = sqrt(std::max(0.f, 1 - z*z));
        float phi = 2 * pi * f32();
        float sinphi, cosphi;
        sincosf(phi, &sinphi, &cosphi);
        return {r * cosphi, r * sinphi, z};
    }

    __host__ __device__ vec3 uniform_random_in_unit_sphere() {
        return uniform_random_unit_vector() * cbrtf(f32());
    }

    __host__ __device__ float2 uniform_random_in_unit_disk() {
        while (true) {
            float2 p(f32_minustoplus(), f32_minustoplus());
            if (dot(p, p) < 1) return p;
        }
    }
};

// Common Headers

#include "ray.hpp"