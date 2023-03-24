#include <immintrin.h>
#include <iostream>
#include "c++/version2/vectorclass.h"

// int main() {
//     __m256 a = _mm256_set1_ps(1);
//     __m256 b = _mm256_cmp_ps(_mm256_set1_ps(0), a, 1);
//     // b = _mm256_cmp_ps(_mm256_set1_ps(4), a, 1);
//     std::cout << Vec8f(b)[0] << "\n";
//     int c = _mm256_testz_ps(b, b);
//     std::cout << c << "\n";;
// };

int main() {
    __m256 a = _mm256_set1_ps(-1);
    int c = _mm256_testz_ps(a, a);
    std::cout << c << "\n";;
};