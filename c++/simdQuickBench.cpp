#include <vector>

#include <benchmark/benchmark.h>

#include <cmath>
#include <iostream>
#include <limits>
#include <cstdlib>

// Constants

const double infinity = std::numeric_limits<double>::infinity();
const double pi = 3.1415926535897932385;

inline double degrees_to_radians(double degrees) {
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

class ray{
    public:
        point3 orig;
        vec3 dir;

        ray() {}
        ray(const point3& origin, const vec3& direction): orig(origin), dir(direction) {}

        point3 origin() const {return orig;}
        vec3 direction() const {return dir;}

        point3 at(double t) const {
            return orig + t * dir;
        }
};

struct hit_record {
    point3 p;
    vec3 normal;
    double t;
};

class sphere {
    public: 
        point3 centre;
        double radius;

        sphere() {}
        sphere(point3 centre, double radius): centre(centre), radius(radius) {};

        inline bool hit(const ray& r, double t_min, double t_max, hit_record& rec) const {
            vec3 oc = r.origin() - centre;
            auto a = length_squared(r.direction());
            auto half_b = dot(oc, r.direction());
            auto c = length_squared(oc) - radius*radius;

            auto discriminant = half_b*half_b - a*c;

            if (discriminant < 0) return false;
            
            auto sqrtd = sqrt(discriminant);

            auto root = (-half_b - sqrtd) / a;
            if (root < t_min || t_max < root) {
                root += 2 * sqrtd / a;
                if (root < t_min || t_max < root) {
                    return false;
                }
            }

            rec.t = root;
            rec.p = r.at(rec.t);
            rec.normal = (rec.p - centre) / radius;

            return true;
        }

        bool hit_simd(const ray& r, double t_min, double t_max, hit_record& rec) {
            vec3 oc = r.origin() - centre;
            auto a = length_squared(r.direction());
            auto half_b = dot(oc, r.direction());
            auto c = length_squared(oc) - radius*radius;

            auto discriminant = half_b*half_b - a*c;

            if (discriminant < 0) return false;
            
            auto sqrtd = sqrt(discriminant);

            auto root = (-half_b - sqrtd) / a;
            if (root < t_min || t_max < root) {
                root += 2 * sqrtd / a;
                if (root < t_min || t_max < root) {
                    return false;
                }
            }

            rec.t = root;
            rec.p = r.at(rec.t);
            rec.normal = (rec.p - centre) / radius;

            return true;
        }
};


void scene_intersection(std::vector<sphere> spheres, int N, hit_record& rec, const ray& r) {
    hit_record temp_rec;
    double closest_so_far = INFINITY;

    for (const auto& sphere : spheres) {
        if (sphere.hit(r, 1e-4, closest_so_far, temp_rec)) {
            closest_so_far = temp_rec.t;
            rec = temp_rec;
        }
    }
}

struct data {
    std::vector<sphere> spheres;
    int N;
    hit_record rec;
    ray r;

    data(std::vector<sphere> spheres, int N, hit_record rec, ray r) : spheres(spheres), N(N), rec(rec), r(r) {};
};

template <class ...Args>
static void runbench(benchmark::State& state, Args&&... args) {
    auto args_tuple = std::make_tuple(std::move(args)...);

    data d = std::get<0>(args_tuple);

    std::vector<sphere> spheres = d.spheres;
    int N = d.N;
    hit_record rec = d.rec;
    ray r = d.r;

    for (auto _ : state) {
        scene_intersection(spheres, N, rec, r);
    }
}

data setup() {
    std::vector<sphere> spheres; 

    int N = 300;

    for (int i = 0; i < N; i++) {
        double x = -100 + i * (100 - - 100) / ((double)N - 1.);
        double r = 5 + i * (50 - 5) / ((double)N - 1.);

        spheres.push_back(sphere(vec3(x, x, x), r));
    }

    ray r = ray(vec3(0, 0, 0), vec3(0, 1, 0));

    hit_record rec;

    return data(spheres, N, rec, r);
}

BENCHMARK_CAPTURE(runbench, scene_intersection, setup());