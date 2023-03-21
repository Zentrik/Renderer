#include <benchmark/benchmark.h>

#include "header.hpp"
#include "colour.hpp"
#include "hittable_list.hpp"
#include "sphere.hpp"
#include "camera.hpp"
#include "material.hpp"

hittable_list random_scene() {
    hittable_list world;
    random_series Series{609824};
    // random_series Series{609824, 32479};

    world.add(sphere(point3(0, -1000, 0), 1000, new lambertian(colour(0.5, 0.5, 0.5))));

    for (int a = -11; a < 11; a++) {
        for (int b = -11; b < 11; b++) {
            auto choose_mat = random_float(Series);
            point3 center(a + 0.9 * random_float(Series), 0.2, b + 0.9 * random_float(Series));

            if (length(center - point3(4, 0.2, 0)) > 0.9) {
                if (choose_mat < 0.8) {
                    // diffuse
                    auto albedo = colour::random(Series) * colour::random(Series);
                    world.add(sphere(center, 0.2, new lambertian(albedo)));
                }
                else if (choose_mat < 0.95) {
                    // metal
                    auto albedo = colour::random(Series, 0.5, 1);
                    auto fuzz = random_float(Series, 0, 0.5);
                    world.add(sphere(center, 0.2, new metal(albedo, fuzz)));
                }
                else {
                    // glass
                    world.add(sphere(center, 0.2, new dielectric(1.5)));
                }
            }
        }
    }

    world.add(sphere(point3(0, 1, 0), 1.0, new dielectric(1.5)));

    world.add(sphere(point3(-4, 1, 0), 1.0, new lambertian(colour(0.4, 0.2, 0.1))));

    world.add(sphere(point3(4, 1, 0), 1.0, new metal(colour(0.7, 0.6, 0.5), 0.0)));

    return world;
}

struct data {
    hittable_list scene;
    hit_record rec;
    ray r;

    data(hittable_list scene, hit_record rec, ray r) : scene(scene), rec(rec), r(r) {};
};

template <class ...Args>
static void runbench(benchmark::State& state, Args&&... args) {
    auto args_tuple = std::make_tuple(std::move(args)...);

    data d = std::get<0>(args_tuple);

    hittable_list scene = d.scene;
    hit_record rec = d.rec;
    ray r = d.r;

    for (auto _ : state) {
        scene.hit(r, 1e-4, infinity, rec);
    }

    for (long unsigned int i = 0; i < scene.mat_ptr.size(); i++) {
        delete scene.mat_ptr[i];
    }

    // std::cout << rec.t << "\n";
}

data setup() {
    hittable_list scene = random_scene();

    ray r = ray(vec3(0, 0, 0), vec3(0, 1, 0));

    hit_record rec;

    return data(scene, rec, r);
}

// int main() {
//     data d = setup();
//     d.scene.hit(d.r, 1e-4, infinity, d.rec);
//     std::cout << d.rec.t << "\n";

//     return 0;
// }

BENCHMARK_CAPTURE(runbench, scene interesction cover scene, setup());
BENCHMARK_MAIN();

// g++ simdBenchmarking.cpp -std=c++20 -lbenchmark -pthread -o simdBenchmarking