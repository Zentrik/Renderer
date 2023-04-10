#include <benchmark/benchmark.h>

#include "header.hpp"
#include "vec3.hpp"
#include "ray.hpp"
#include "sphere.hpp"

#include "version2/vectorclass.h"

#include <vector>
#include <iostream>

class hittable_list
{
public:
    std::vector<Vec8f> centreX;
    std::vector<Vec8f> centreY;
    std::vector<Vec8f> centreZ;

    std::vector<Vec8f> radius;

    std::vector<material*> mat_ptr;

    hittable_list() {}
    hittable_list(const sphere &object) { add(object); }

    void add(const sphere &object)
    {
        mat_ptr.push_back(object.mat_ptr);

        if (radius.empty() || radius.back()[Vec8f::size() - 1] != 0)
        {
            centreX.push_back(Vec8f(object.centre.x(), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f));
            centreY.push_back(Vec8f(object.centre.y(), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f));
            centreZ.push_back(Vec8f(object.centre.z(), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f));
            radius.push_back(Vec8f(object.radius, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f));
        }
        else
        {
            int i = horizontal_find_first(radius.back() == Vec8f(0.0f));

            centreX.back().insert(i, object.centre.x());
            centreY.back().insert(i, object.centre.y());
            centreZ.back().insert(i, object.centre.z());
            radius.back().insert(i, object.radius);
        }
    }

    virtual float hit(const ray &r, float t_min, float t_max, hit_record &rec) const
    {
        bool hit_anything = false;
#if _MSC_VER // For some reason speeds up msvc
        hit_record temp_rec;
        rec = temp_rec;
#endif
        Vec8f hitT(0);
        Vec8ui id;

        Vec8f rOrigX(r.origin().x());
        Vec8f rOrigY(r.origin().y());
        Vec8f rOrigZ(r.origin().z());
        Vec8f rDirX(r.direction().x());
        Vec8f rDirY(r.direction().y());
        Vec8f rDirZ(r.direction().z());

        Vec8f tMinVec(t_min);
        Vec8ui curId(0, 1, 2, 3, 4, 5, 6, 7);

        for (int i = 0; i < (int)radius.size(); i++)
        {
            // load data for n spheres
            Vec8f coX = centreX[i] - rOrigX;
            Vec8f coY = centreY[i] - rOrigY;
            Vec8f coZ = centreZ[i] - rOrigZ;

            Vec8f neg_half_b = coX * rDirX + coY * rDirY + coZ * rDirZ;
            Vec8f c = coX * coX + coY * coY + coZ * coZ - radius[i] * radius[i];
            Vec8f quarter_discriminant = neg_half_b * neg_half_b - c;

            // hitT += quarter_discriminant;
            hitT += select(quarter_discriminant > Vec8f(0.0f), sqrt(quarter_discriminant), Vec8f(0.0f));
        }

        return horizontal_add(hitT);
    }
};

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

    float t;

    for (auto _ : state) {
        benchmark::DoNotOptimize(t = scene.hit(r, 1e-4, infinity, rec));
    }

    // std::cout << t << "\n";

    for (long unsigned int i = 0; i < scene.mat_ptr.size(); i++) {
        delete scene.mat_ptr[i];
    }

}

data setup() {
    hittable_list scene; 

    int N = 296;

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

//     return 0;
// }

BENCHMARK_CAPTURE(runbench, scene interesction, setup());
BENCHMARK_MAIN();