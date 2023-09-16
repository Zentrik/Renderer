#pragma once

#include <cmath>
#include <iostream>

class RNG;
float random_float32(RNG& rng);
float random_float32_minustoplus(RNG& rng);

using std::sqrt;

class vec3 {
public:
    union {
        float v[3];
        struct {
            float a, b, c;
        };
        struct {
            float x, y, z;
        };
    };

    constexpr vec3(): a(0), b(0), c(0) {}
    constexpr vec3(float x): a(x), b(x), c(x) {}
    constexpr vec3(float v0, float v1, float v2): a(v0), b(v1), c(v2) {}

    constexpr inline float operator [](int i) const { return v[i];}

    constexpr inline float& operator [](int i) { return v[i];}

    inline vec3& operator +=(const vec3& o) {
        (*this)[0] += o[0];
        (*this)[1] += o[1];
        (*this)[2] += o[2];

        return *this;
    }

    inline vec3& operator -=(const vec3& o) {
        (*this)[0] -= o[0];
        (*this)[1] -= o[1];
        (*this)[2] -= o[2];

        return *this;
    }

    inline vec3& operator *=(const float t) {
        (*this)[0] *= t;
        (*this)[1] *= t;
        (*this)[2] *= t;

        return *this;
    }

    inline vec3& operator /=(const float t) {
        return *this *= 1 / t;
    }

    inline vec3& operator *=(const vec3& o) {
        (*this)[0] *= o[0];
        (*this)[1] *= o[1];
        (*this)[2] *= o[2];

        return *this;
    }

    inline static vec3 random(RNG& rng) {
        return {random_float32(rng), random_float32(rng), random_float32(rng)};
    }

    inline static vec3 random_minustoplus(RNG& rng) {
        return {random_float32_minustoplus(rng), random_float32_minustoplus(rng), random_float32_minustoplus(rng)};
    }

    inline bool approx_zero() const {
        return (abs(x) + abs(y) + abs(z)) < 1e-2f;
    }
};

// Type aliases for vec3
using point3 = vec3;   // 3D point
using colour = vec3;    // RGB colour

inline vec3 operator +(const vec3 &v, const vec3 &o) {
     return vec3(v[0] + o[0], v[1] + o[1], v[2] + o[2]);
}

inline vec3 operator -(const vec3 &v, const vec3 &o) {
     return vec3(v[0] - o[0], v[1] - o[1], v[2] - o[2]);
}

inline vec3 operator *(float t, const vec3 &v) {
    return vec3(t * v[0], t * v[1], t * v[2]);
}

/*
inline vec3 operator +(const vec3& v, const vec3 &o) {
    return v += o;
}

inline vec3 operator -(const vec3& v, const vec3 &o) {
    v -= o;
    //return vec3(v[0] - o[0], v[1] - o[1], v[2] - o[2]);
}

inline vec3 operator *(float t, vec3 v) {
    return v *= t;
}
*/

inline vec3 operator *(const vec3& v, const vec3& o) {
    return vec3(v[0] * o[0], v[1] * o[1], v[2] * o[2]);
}

inline vec3 operator *(const vec3 &v, float t) {
    return t * v;
}

inline vec3 operator /(vec3 v, float t) {
    return (1/t) * v;
}

inline vec3 operator -(const vec3 &v)  {
    return -1 * v;
}

inline float dot(const vec3& v, const vec3& o) {
    return v[0] * o[0] + v[1] * o[1] + v[2] * o[2];
}

inline float length_squared(const vec3& v) {return dot(v, v);}

inline float length(const vec3& v) {return sqrt(length_squared(v));}

inline vec3 cross(const vec3& v, const vec3& o) {
    return vec3(v.y * o.z - v.z * o.y,
                v.z * o.x - v.x * o.z,
                v.x * o.y - v.y * o.x);
}

inline vec3 normalise(vec3& v) {
    return v /= length(v);
}

inline vec3 normalised(vec3 v) {
    return normalise(v);
}

vec3 uniform_random_unit_vector(RNG& rng) {
    float z = random_float32_minustoplus(rng);
    float r = sqrt(std::max(0.f, 1 - z*z));
    float phi = 2 * pi * random_float32(rng);
    float sinphi, cosphi;
    sincosf32(phi, &sinphi, &cosphi);
    return vec3(r * cosphi, r * sinphi, z);
}

vec3 uniform_random_in_unit_sphere(RNG& rng) {
    return uniform_random_unit_vector(rng) * cbrtf32(random_float32(rng));
}

vec3 uniform_random_in_unit_disk(RNG& rng) {
    while (true) {
        vec3 p(random_float32_minustoplus(rng), random_float32_minustoplus(rng), 0);
        if (length_squared(p) < 1) return p;
    }
}

std::ostream& operator<<(std::ostream& os, const vec3& v) {
    return os << "[" << v.x << ", " << v.y << ", " << v.z << "]";
}