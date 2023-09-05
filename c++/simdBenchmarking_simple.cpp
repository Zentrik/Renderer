#include <benchmark/benchmark.h>
#include <vector>

#include "version2/vectorclass.h"

constexpr const float infinity = (std::numeric_limits<float>::max)(); // idk how well infinity plays with fast math

class hittable_list {
    public:
        std::vector<Vec8f> radius;

        hittable_list() {}

        void add(float r)
        {
            if (radius.empty() || radius.back()[Vec8f::size() - 1] != 0) {
                radius.push_back(Vec8f(r, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f));
            } else {
                int i = horizontal_find_first(radius.back() == Vec8f(0.0f));

                radius.back().insert(i, r);
            }
        }

        float hit(float t_max) const
        {
            Vec8f hitT(t_max);

            for (int i = 0; i < (int)radius.size(); i++)
            {
                Vec8f quarter_discriminant = radius[i] - radius[i] * radius[i];
                Vec8fb isDiscriminantPositive = quarter_discriminant > Vec8f(0.0f);

                if (horizontal_or(isDiscriminantPositive))
                {
                    Vec8f t = sqrt(sqrt(quarter_discriminant));
                    t = select(sqrt(t) > 0, t, sqrt(t));
                    Vec8fb msk = isDiscriminantPositive & (t < hitT);

                    hitT = select(msk, t, hitT);
                }
            }

            return horizontal_min(hitT);;
        }
};

hittable_list setup() {
    hittable_list scene; 

    int N = 296;

    for (int i = 0; i < N; i++) {
        float r = 0 + i * (2 - 0) / ((float)N - 1.);
        scene.add(r);
    }

    return scene;
}

// int main() {
//     data d = setup();
//     std::cout << d.scene.hit(d.r, 1e-4, infinity); << "\n";

//     return 0;
// }

template <class ...Args>
static void runbench(benchmark::State& state, Args&&... args) {
    auto args_tuple = std::make_tuple(std::move(args)...);
    hittable_list scene = std::get<0>(args_tuple);

    for (auto _ : state) {
        scene.hit(infinity);
    }
}

BENCHMARK_CAPTURE(runbench, scene interesction, setup());
BENCHMARK_MAIN();