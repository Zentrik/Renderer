#define NOVIRTUAL
#define NOSHAREDPTR
#define NOTEMP_REC

// #define SOA
// #define AOSOA
#define SIMD

// #define OMPSIMD
// #define BRANCHLESS
#define DontCalculateNormalsEveryHit

// need to install tbb for this if using for_each, otherwise need to install OpenMP
#define MULTITHREAD // Broken on Visual Studio
// tbb broken on windows?

#define CLAFORTE