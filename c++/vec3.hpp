#pragma once

#include <cmath>
#include <iostream>

double random_double();
double random_double(double min, double max);

using std::sqrt;

class vec3{
    public:
        double v[3];

        vec3(): v{0, 0, 0} {}
        vec3(double v0, double v1, double v2): v{v0, v1, v2} {}

        inline double x() const {return v[0];}
        inline double y() const {return v[1];}
        inline double z() const {return v[2];}

        double operator [](int i) const {return v[i];}
        double& operator [](int i) {return v[i];}

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

        inline vec3& operator *=(const double t) {
            v[0] *= t;
            v[1] *= t;
            v[2] *= t;

            return *this;
        }

        inline vec3& operator /=(const double t) {
            return *this *= 1/t;
        }

        inline vec3& operator *=(const vec3& o) {
            v[0] *= o[0];
            v[1] *= o[1];
            v[2] *= o[2];

            return *this;
        }

        inline static vec3 random() {
            return vec3(random_double(), random_double(), random_double());
        }

        inline static vec3 random(double min, double max) {
            return vec3(random_double(min, max), random_double(min, max), random_double(min, max));
        }

        inline bool approx_zero() const {
            const auto absolute_tolerance = 1e-8;
            return (fabs(v[0]) < absolute_tolerance) && (fabs(v[1]) < absolute_tolerance) && (fabs(v[2]) < absolute_tolerance);
        }
};

// Type aliases for vec3
using point3 = vec3;   // 3D point
using colour = vec3;    // RGB colour

// inline vec3 operator +(const vec3 &v, const vec3 &o) {
//     return vec3(v[0] + o[0], v[1] + o[1], v[2] + o[2]);
// }

// inline vec3 operator -(const vec3 &v, const vec3 &o) {
//     return v + -o;
// }

// inline vec3 operator *(double t, const vec3 &v) {
//     return vec3(t * v[0], t * v[1], t * v[2]);
// }


inline vec3 operator +(vec3 v, const vec3 &o) {
    return v += o;
}

inline vec3 operator -(vec3 v, const vec3 &o) {
    return v -= o;
}

inline vec3 operator *(double t, vec3 v) {
    return v *= t;
}

inline vec3 operator *(const vec3& v, const vec3& o) {
    return vec3(v[0] * o[0], v[1] * o[1], v[2] * o[2]);
}

inline vec3 operator *(const vec3 &v, double t) {
    return t * v;
}

inline vec3 operator /(vec3 v, double t) {
    return (1/t) * v;
}

inline vec3 operator -(const vec3 &v)  {
    return -1 * v;
}

inline double dot(const vec3& v, const vec3& o) {
    return v[0] * o[0] + v[1] * o[1] + v[2] * o[2];
}

inline double length_squared(const vec3& v) {return dot(v, v);}

inline double length(const vec3& v) {return sqrt(length_squared(v));}

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

vec3 uniform_random_in_unit_sphere() {
    while (true) {
        vec3 p = vec3::random(-1, 1);
        if (length_squared(p) < 1) return p;
    }
}

vec3 uniform_random_unit_vector() {
    return normalised(uniform_random_in_unit_sphere());
}

vec3 uniform_random_in_unit_disk() {
    while (true) {
        vec3 p(random_double(-1, 1), random_double(-1, 1), 0);
        if (length_squared(p) < 1) return p;
    }
}