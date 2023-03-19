#include <benchmark/benchmark.h>

#include "header.hpp"
#include "hittable_list.hpp"
#include "vec3.hpp"
#include "ray.hpp"
#include "sphere.hpp"

struct data {
    // std::vector<sphere> spheres;
    hittable_list& scene;
    hit_record rec;
    ray r;

    data(hittable_list& scene, hit_record rec, ray r) : scene(scene), rec(rec), r(r) {};
};

template <class ...Args>
static void runbench(benchmark::State& state, Args&&... args) {
    auto args_tuple = std::make_tuple(std::move(args)...);

    data d = std::get<0>(args_tuple);

    hittable_list& scene = d.scene;
    hit_record rec = d.rec;
    ray r = d.r;

    for (auto _ : state) {
        scene.hit(r, 1e-4, infinity, rec);
    }
    
    // std::cout << rec.t << "\n";
}

data setup() {
    // std::vector<sphere> spheres;
    hittable_list scene; 

    int N = 300;

    for (int i = 0; i < N; i++) {
        float x = -100 + i * (100 - - 100) / ((float)N - 1.);
        float r = 5 + i * (50 - 5) / ((float)N - 1.);

        scene.add(sphere(vec3(x, x, x), r, nullptr));
    }

    ray r = ray(vec3(0, 0, 0), vec3(0, 1, 0));

    hit_record rec;

    return data(scene, rec, r);
}

// int main() {
//     data d = setup();
//     d.scene.hit(d.r, 1e-4, infinity, d.rec);
//     std::cout << d.rec.t << "\n";

//     // std::cout << d.spheres[177].centre.x() << " " << d.spheres[177].centre.y() << " " << d.spheres[177].centre.z() << "   " << d.spheres[177].radius << "\n";
//     // d.spheres[177].hit(d.r, 1e-4, INFINITY, d.rec);
//     // std::cout << d.rec.t << "\n";

//     return 0;
// }

// BENCHMARK_CAPTURE(runbench, testes, data(std::vector<sphere> spheres(sphere()), 1, hit_record(), ray()) );
BENCHMARK_CAPTURE(runbench, scene interesction, setup());
BENCHMARK_MAIN();

// g++ simdBenchmarking.cpp -std=c++20 -lbenchmark -pthread -o simdBenchmarking