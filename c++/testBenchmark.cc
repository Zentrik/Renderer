// Alternatively, can add libraries using linker options.

#include <benchmark/benchmark.h>
#include <iostream>

static void BM_StringCreation(benchmark::State& state) {
  for (auto _ : state)
    std::string empty_string;
}
// Register the function as a benchmark
BENCHMARK(BM_StringCreation);

// Define another benchmark
static void BM_StringCopy(benchmark::State& state) {
  std::string x = "hello";
  for (auto _ : state)
    std::string copy(x);
}
BENCHMARK(BM_StringCopy);

// void BM_empty(benchmark::State& state) {
//   for (auto _ : state) {
//     for (int i = 0; i < 10000; i++) {
//       std:: cout << i << "\n";
//     }
//   }
// }
// BENCHMARK(BM_empty);

BENCHMARK_MAIN();

// g++ testBenchmark.cc -std=c++11 -lshlwapi -lbenchmark -pthread -o testBenchmark