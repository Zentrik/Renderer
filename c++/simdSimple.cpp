#include <benchmark/benchmark.h>
#include <vector>
#include <iostream>

#include "version2/vectorclass.h"

#include "header.hpp"

float test(std::vector<Vec8f> x) {
    Vec8f t = Vec8f(0.0);

    for (int i = 0; i < x.size(); i++) {
        t += select(x[i] > Vec8f(0.0), sqrt(x[i]), Vec8f(0.0));
    }

    return horizontal_add(t);
}

template <class ...Args>
static void runbench(benchmark::State& state, Args&&... args) {
    auto args_tuple = std::make_tuple(std::move(args)...);

    auto x = std::get<0>(args_tuple);

    float t;

    for (auto _ : state) {
        benchmark::DoNotOptimize(t = test(x));
    }

    // std::cout << t << "\n";
}

std::vector<Vec8f> setup() {
    std::vector<Vec8f> x;

    int N = 296;

    float dt = (5 - - 5) / ((float)N - 1.);
    float a;
    
    for (int i = 0; i < N / 8; i++) {
        a = -5 + i * 8 * dt;
        x.push_back(Vec8f(a, a+dt, a+2*dt, a+3*dt, a+4*dt, a+5*dt, a+6*dt, a+7*dt));
    }

    return x;
}

// int main() {
//     auto x = setup();
//     return (int)test(x);
// }

BENCHMARK_CAPTURE(runbench, scene interesction, setup());
BENCHMARK_MAIN();