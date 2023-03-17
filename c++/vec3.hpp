#pragma once

#include <cmath>
#include <iostream>

#ifndef _MSC_VER
#include <boost/stacktrace.hpp>
#endif

float random_float(random_series &Series);
float random_float(random_series &Series, float min, float max);

using std::sqrt;

#if 0
class vec3{
    public:
        float v[3];

        vec3(): v{0, 0, 0} {}
        vec3(float v0, float v1, float v2): v{v0, v1, v2} {}

        inline float x() const {return v[0];}
        inline float y() const {return v[1];}
        inline float z() const {return v[2];}

        float operator [](int i) const {return v[i];}
        float& operator [](int i) {return v[i];}

        inline vec3& operator +=(const vec3& o) {
            v[0] += o[0];
            v[1] += o[1];
            v[2] += o[2];

            return *this;
        }

        inline vec3& operator -=(const vec3& o) {
            v[0] -= o[0];
            v[1] -= o[1];
            v[2] -= o[2];

            return *this;
        }

        inline vec3& operator *=(const float t) {
            v[0] *= t;
            v[1] *= t;
            v[2] *= t;

            return *this;
        }

        inline vec3& operator /=(const float t) {
            return *this *= 1/t;
        }

        inline vec3& operator *=(const vec3& o) {
            v[0] *= o[0];
            v[1] *= o[1];
            v[2] *= o[2];

            return *this;
        }

        inline static vec3 random() {
            return vec3(random_float(), random_float(), random_float());
        }

        inline static vec3 random(float min, float max) {
            return vec3(random_float(min, max), random_float(min, max), random_float(min, max));
        }

        inline bool approx_zero() const {
            const auto absolute_tolerance = 1e-8;
            return (fabs(v[0]) < absolute_tolerance) && (fabs(v[1]) < absolute_tolerance) && (fabs(v[2]) < absolute_tolerance);
        }
};
#else
class vec3{
    public:
#if 0
        float v[3];

        vec3() : v{ 0, 0, 0 } {}
        vec3(float v0, float v1, float v2) : v{ v0, v1, v2 } {}

        inline float x() const { return v[0]; }
        inline float y() const { return v[1]; }
        inline float z() const { return v[2]; }

        float operator [](int i) const { return v[i]; }
        float& operator [](int i) { return v[i]; }
#else
        float a, b, c;

        constexpr vec3(): a(0), b(0), c(0) {}
        constexpr vec3(float v0, float v1, float v2): a(v0), b(v1), c(v2) {}

        constexpr inline float x() const { return a; }
        constexpr inline float y() const { return b; }
        constexpr inline float z() const { return c; }

        constexpr inline float operator [](int i) const {
            switch (i) {
                case 0:
                    return a;
                case 1:
                    return b;
                case 2:
                    return c;
                default:
                    std::cerr << "Cannot index into vec3 with " << i << "\n";
                    throw (i);
            }
        }

        constexpr inline float& operator [](int i) {
            switch (i) {
                case 0:
                    return a;
                case 1:
                    return b;
                case 2:
                    return c;
                default:
                    std::cerr << "Cannot index into vec3 with " << i << "\n";
                    throw (i);
            }
        }
#endif
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

        inline static vec3 random(random_series &Series) {
            return vec3(random_float(Series), random_float(Series), random_float(Series));
        }

        inline static vec3 random(random_series &Series, float min, float max) {
            return vec3(random_float(Series, min, max), random_float(Series, min, max), random_float(Series, min, max));
        }

        inline bool approx_zero() const {
            const auto absolute_tolerance = 1e-8;
            return (fabs((*this)[0]) < absolute_tolerance) && (fabs((*this)[1]) < absolute_tolerance) && (fabs((*this)[2]) < absolute_tolerance);
        }
};
#endif

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
    return vec3(v.y() * o.z() - v.z() * o.y(),
                v.z() * o.x() - v.x() * o.z(),
                v.x() * o.y() - v.y() * o.x());
}

inline vec3 normalise(vec3& v) {
    return v /= length(v);
}

inline vec3 normalised(vec3 v) {
    return normalise(v);
}

vec3 uniform_random_in_unit_sphere(random_series &Series) {
    for (int i = 0; i < 500; i++) {
        vec3 p = vec3::random(Series, -1, 1);
        if (length_squared(p) < 1) return p;
    }

#ifndef _MSC_VER
    std::cout << boost::stacktrace::stacktrace();
#endif
    std::throw_with_nested("uniform_random_in_unit_sphere took more than 500 iterations to generate a random number!!!");
}

vec3 uniform_random_unit_vector(random_series &Series) {
    return normalised(uniform_random_in_unit_sphere(Series));
}

vec3 uniform_random_in_unit_disk(random_series &Series) {
    for (int i = 0; i < 500; i++) {
        vec3 p(random_float(Series, -1, 1), random_float(Series, -1, 1), 0);
        if (length_squared(p) < 1) return p;
    }

#ifndef _MSC_VER
    std::cout << boost::stacktrace::stacktrace();
#endif
    std::throw_with_nested(std::range_error("uniform_random_in_unit_disk took more than 500 iterations to generate a random number!!!"));
}