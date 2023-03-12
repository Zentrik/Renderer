#include <vector>

#include <benchmark/benchmark.h>

#include "hittable.hpp"
#include "vec3.hpp"
#include "ray.hpp"

class sphere {
    public: 
        point3 centre;
        double radius;

        sphere() {}
        sphere(point3 centre, double radius): centre(centre), radius(radius) {};

        inline double hit(const ray& r, double t_min, double t_max) const {
            vec3 oc = r.origin() - centre;

            auto a = length_squared(r.direction());
            auto half_b = dot(oc, r.direction());
            auto c = length_squared(oc) - radius*radius;

            auto discriminant = half_b*half_b - a*c;

            if (discriminant < 0) return -1;
            
            auto sqrtd = sqrt(discriminant);

            auto root = (-half_b - sqrtd) / a;
            if (root < t_min || t_max < root) {
                root += 2 * sqrtd / a;
                if (root < t_min || t_max < root) {
                    return -1;
                }
            }

            return root;
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


void scene_intersection(std::vector<sphere> spheres, hit_record& rec, const ray& r) {
    double t;
    double closest_so_far = INFINITY;

    for (const auto& sphere : spheres) {
        t = sphere.hit(r, 1e-4, closest_so_far);
        if (t >= 0) {
            closest_so_far = t;
        }
    }

    benchmark::DoNotOptimize(rec.t = closest_so_far);
    // std::cout << rec.t << "\n";
}

struct data {
    std::vector<sphere> spheres;
    hit_record rec;
    ray r;

    data(std::vector<sphere> spheres, hit_record rec, ray r) : spheres(spheres), rec(rec), r(r) {};
};

template <class ...Args>
static void runbench(benchmark::State& state, Args&&... args) {
    auto args_tuple = std::make_tuple(std::move(args)...);

    data d = std::get<0>(args_tuple);

    std::vector<sphere> spheres = d.spheres;
    hit_record rec = d.rec;
    ray r = d.r;

    for (auto _ : state) {
        scene_intersection(spheres, rec, r);
        // rec.t *= 1.1;
    }

    // std::cout << rec.t << "\n";
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

    return data(spheres, rec, r);
}

// int main() {
//     data d = setup();
//     scene_intersection(d.spheres, d.N, d.rec, d.r);
//     std::cout << d.rec.t << "\n";

//     // std::cout << d.spheres[177].centre.x() << " " << d.spheres[177].centre.y() << " " << d.spheres[177].centre.z() << "   " << d.spheres[177].radius << "\n";
//     // d.spheres[177].hit(d.r, 1e-4, INFINITY, d.rec);
//     // std::cout << d.rec.t << "\n";

//     return 0;
// }

// BENCHMARK_CAPTURE(runbench, testes, data(std::vector<sphere> spheres(sphere()), 1, hit_record(), ray()) );
BENCHMARK_CAPTURE(runbench, scene_intersection, setup());
BENCHMARK_MAIN();

// g++ simdBenchmarking.cpp -std=c++20 -lbenchmark -pthread -o simdBenchmarking