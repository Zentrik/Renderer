// clang++-15 -std=c++20 c++/main.cpp -o c++/main -Wall -Wextra -Ofast -ffast-math -fdenormal-fp-math=positive-zero -march=native -flto=full -ltbb // -Wdouble-promotion -Wimplicit-int-float-conversion
// clang++-17 -std=c++20 main.cu -o main --cuda-gpu-arch=sm_61 -Wall -Wextra -Ofast -ffast-math -fcuda-flush-denormals-to-zero -flto=full -lcudart_static -ldl -lrt -pthread -Xcuda-ptxas -v // -Wdouble-promotion -Wimplicit-int-float-conversion

// cuda-gdb build
// clang++-17 -std=c++20 main.cu -o main --cuda-gpu-arch=sm_61 -Wall -Wextra -lcudart_static -g

// to get ptx
// clang++-17 -std=c++20 main.cu --cuda-gpu-arch=sm_61 -Wall -Wextra -Ofast -ffast-math -fcuda-flush-denormals-to-zero -flto=full -emit-llvm -S
// llc-17 -mcpu=sm_61 -mattr=+ptx80 -march=nvptx64 main-cuda-nvptx64-nvidia-cuda-sm_61.bc -o main.ptx

#include "settings.hpp"

#include "header.hpp"
#include "sphere.hpp"
#include "material.hpp"
#include "ppm.hpp"
#include "camera.hpp"

const int kSphereCount = 22 * 22 + 1 + 3;
__device__ __constant__ float4 centre_radius[kSphereCount];
__device__ __constant__ Material::MaterialType material_type[kSphereCount];
__device__ __constant__ float4 material_data[kSphereCount];
__device__ __constant__ i32 spheres_count;

#include "hittable_list.hpp"

struct BufferData {
    Ray ray;
    colour attenuation;
    u32 pixel_index;
    u32 depth;
};

class BufferDataVec {
    __device__ BufferDataVec(Ray* ray, float4* attenuation_and_pixel_index, u32* depth) : ray(ray), attenuation_and_pixel_index(attenuation_and_pixel_index), depth(depth) {}
public:
    Ray* ray;
    float4* attenuation_and_pixel_index;
    u32* depth;

    BufferDataVec(i32 state_size) {
        checkCudaErrors(cudaMalloc(&ray, state_size * sizeof(Ray)));
        checkCudaErrors(cudaMalloc(&attenuation_and_pixel_index, state_size * sizeof(float4)));
        checkCudaErrors(cudaMalloc(&depth, state_size * sizeof(u32)));
    }
    void free () {
        // clean up
        checkCudaErrors(cudaGetLastError());
        checkCudaErrors(cudaFree(ray));
        checkCudaErrors(cudaFree(attenuation_and_pixel_index));
        checkCudaErrors(cudaFree(depth));
    }

    __device__ BufferData operator[](i32 i) const {
        float4 a_p = attenuation_and_pixel_index[i];
        colour attenuation(a_p.x, a_p.y, a_p.z);
        u32 pixel_index = __float_as_uint(a_p.w);

        return BufferData(ray[i], attenuation, pixel_index, depth[i]);
    }

    __device__ BufferDataVec operator[](i32 i) {
        return BufferDataVec(&ray[i], &attenuation_and_pixel_index[i], &depth[i]);
    }

    __device__ BufferDataVec& operator=(BufferData x) {
        *ray = x.ray;
        *attenuation_and_pixel_index = make_float4(x.attenuation, __uint_as_float(x.pixel_index));
        *depth = x.depth;
        return *this;
    }
};

__device__ colour world_colour(Ray ray) {
    f32 t = (ray.direction.z + 1) / 2.f;
    return (1.f - t) * colour(1, 1, 1) + t * colour(0.5, 0.7, 1);
}

HittableList random_scene() {
    HittableList spheres;
    RNG rng{0};

    spheres.emplace_back(vec3(0, 0, -1000), 1000, Material::Lambertian(colour(0.5f, 0.5f, 0.5f)));

    for (f32 a = -11; a < 11; a++) {
        for (f32 b = -11; b < 11; b++) {
            f32 choose_mat = rng.f32();
            vec3 center(a + 0.9f * rng.f32(), -(b + 0.9f * rng.f32()), 0.2f);

            if (length(center - vec3(4, 0, 0.2f)) > 0.9f) {
                if (choose_mat < 0.8f) {
                    // diffuse
                    colour albedo = rng.colour()* rng.colour();
                    spheres.emplace_back(center, 0.2f, Material::Lambertian(albedo));
                }
                else if (choose_mat < 0.95f) {
                    // metal
                    colour albedo = rng.colour() / 2 + colour(.5f, .5f, .5f);
                    f32 fuzz = rng.f32() / 2;
                    spheres.emplace_back(center, 0.2f, Material::Metal(albedo, fuzz));
                }
                else {
                    // glass
                    spheres.emplace_back(center, 0.2f, Material::Dielectric());
                }
            }
        }
    }

    spheres.emplace_back(vec3(0, 0, 1), 1.0, Material::Dielectric());

    spheres.emplace_back(vec3(-4, 0, 1), 1.0, Material::Lambertian({0.4f, 0.2f, 0.1f}));

    spheres.emplace_back(vec3(4, 0, 1), 1.0, Material::Metal({0.7f, 0.6f, 0.5f}, 0));

    return spheres;
}

__global__ void generate_rays(BufferDataVec current_state, Camera camera, u32 column_size, i32 current_state_size, u32 offset, u32 samples_per_pixel, i32 index_offset) {
    i32 index = blockIdx.x * blockDim.x + threadIdx.x;

    for (i32 i = index; i < current_state_size; i += gridDim.x * blockDim.x) {
        u32 img_linear_index = u32((i + offset) / samples_per_pixel);

        u32 y = img_linear_index / column_size;
        u32 x = img_linear_index % column_size;

        RNG rng((1u+img_linear_index) * ((1u+i) + offset));
        Ray ray = camera.get_ray((f32)x, (f32)y, rng);

        current_state.ray[i + index_offset] = ray;
        current_state.attenuation_and_pixel_index[i + index_offset] = make_float4(1, 1, 1, __uint_as_float(img_linear_index));
        current_state.depth[i + index_offset] = 1u;
    }
}

__device__ void scatter(colour* img, BufferDataVec next_state, BufferData current_state, i32* next_state_index, RNG& rng, HitRecord hit_record, u32 max_depth) {
    u32 pixel_index = current_state.pixel_index;
    Ray r = current_state.ray;

    if (!hit(hit_record)) { // nothing hit
        colour new_attenuation = current_state.attenuation * world_colour(r);
        // printf("%f [%f, %f, %f] \n", r.direction.z, new_attenuation.x, new_attenuation.y, new_attenuation.z);
        // printf("%u \n", pixel_index);
        // new_attenuation.x = 10.f;
        atomicAdd(&(img[pixel_index].x), new_attenuation.x);
        atomicAdd(&(img[pixel_index].y), new_attenuation.y);
        atomicAdd(&(img[pixel_index].z), new_attenuation.z);
    } else {
        vec3 position = r.at(hit_record.t);

        float4 c_r = centre_radius[hit_record.sphere_index];
        vec3 centre(c_r.x, c_r.y, c_r.z);
        float radius = c_r.w;

        vec3 normal = sphere_normal(centre, radius, position);

        Material material(material_data[hit_record.sphere_index], material_type[hit_record.sphere_index]);

        auto tmp = material.scatter(r, normal, rng); // structured binding doesn't work well with gdb
        vec3 direction = std::get<0>(tmp);
        colour attenuation = std::get<1>(tmp);
        bool scatter_again = std::get<2>(tmp);

        if (scatter_again) {
            colour new_attenuation = current_state.attenuation * attenuation;

            if (current_state.depth == max_depth) {
                atomicAdd(&(img[pixel_index].x), new_attenuation.x);
                atomicAdd(&(img[pixel_index].y), new_attenuation.y);
                atomicAdd(&(img[pixel_index].z), new_attenuation.z);
            } else {
                i32 old_index = atomicAdd(next_state_index, 1);

                next_state[old_index] = BufferData(Ray(position, direction), new_attenuation, pixel_index, current_state.depth + 1u);
            }
        }
    }
}

__global__ void intersect_and_scatter(colour* img, BufferDataVec next_state, const BufferDataVec current_state, u32 max_depth, i32* next_state_index, i32 current_state_size, f32 tmin, f32 tmax, u32 number_of_rays_generated) {
    i32 index = blockIdx.x * blockDim.x + threadIdx.x;

    for (i32 i = index; i < current_state_size; i += gridDim.x * blockDim.x) {
        BufferData state = current_state[i];

        HitRecord hit_record = hit(state.ray, tmin, tmax);
        RNG rng((1u + state.pixel_index) * ((1u + i) + number_of_rays_generated) + state.depth);
        scatter(img, next_state, state, next_state_index, rng, hit_record, max_depth);
    }
}

__global__ void generate_intersect_and_scatter(colour* img, BufferDataVec next_state, u32 max_depth, i32* next_state_index, i32 rays_size, f32 tmin, f32 tmax, Camera camera, u32 offset, u32 samples_per_pixel, u32 column_size) {
    i32 index = blockIdx.x * blockDim.x + threadIdx.x;

    for (i32 i = index; i < rays_size; i += gridDim.x * blockDim.x) {
        u32 img_linear_index = (i + offset) / samples_per_pixel;

        u32 y = img_linear_index / column_size;
        u32 x = img_linear_index % column_size;

        RNG rng((1u + img_linear_index) * ((i + 1u) + offset));
        Ray ray = camera.get_ray((f32)x, (f32)y, rng);
        // printf("[%u, %u] \n", x, y);
        // printf("%u \n", img_linear_index);
        // printf("[%f, %f, %f] \n", ray.origin.x, ray.origin.y, ray.origin.z);
        // printf("[%f, %f, %f] \n", ray.direction.x, ray.direction.y, ray.direction.z);
        BufferData current_state(ray, colour(1, 1, 1), img_linear_index, 1);

        HitRecord hit_record = hit(ray, tmin, tmax);
        // printf("[%f, %u] \n", hit_record.t, hit_record.sphere_index);
        scatter(img, next_state, current_state, next_state_index, rng, hit_record, max_depth);
    }
}

i32 main() {
    // IMAGE

#ifdef PROFVIEW
    const f32 aspect_ratio = 16.f / 9;
    const i32 image_width = 1920 / 2;
    const i32 image_height = static_cast<i32>(image_width / aspect_ratio);
    const i32 samples_per_pixel = 10;
    const i32 max_depth = 16;
#else
#ifdef CLAFORTE
    const f32 aspect_ratio = 16.f / 9;
    const i32 image_width = 1920;
    const i32 image_height = static_cast<i32>(image_width / aspect_ratio);
    const i32 samples_per_pixel = 1000;
    const i32 max_depth = 16;
#else
#if 1
    f32 aspect_ratio = 16.f / 9;
    const i32 image_width = 10;
    const i32 image_height = static_cast<i32>(roundf32(image_width / aspect_ratio));
    aspect_ratio = (f32)image_width / (f32)image_height;
    const i32 samples_per_pixel = 1;
    const i32 max_depth = 16;
#else
    const f32 aspect_ratio = 16.f / 9;
    const i32 image_width = 800;
    const i32 image_height = static_cast<i32>(image_width / aspect_ratio);
    const i32 samples_per_pixel = 50;
    const i32 max_depth = 10;
#endif
#endif
#endif

    // WORLD
    HittableList world = random_scene();

    if (world.centre_radius.size() > kSphereCount) {
        std::cerr << "Too many spheres";
        return 1;
    }

    // copy the scene to constant memory
    checkCudaErrors(cudaMemcpyToSymbol(centre_radius, world.centre_radius.data(), world.centre_radius.size() * sizeof(float4)));
    checkCudaErrors(cudaMemcpyToSymbol(material_data, world.material_data.data(), world.material_data.size() * sizeof(float4)));
    checkCudaErrors(cudaMemcpyToSymbol(material_type, world.material_type.data(), world.material_type.size() * sizeof(u32)));
    i32 size = world.centre_radius.size();
    checkCudaErrors(cudaMemcpyToSymbol(spheres_count, &size, sizeof(i32)));

    // Camera

    vec3 lookfrom(13, -3, 2);
    vec3 lookat(0, 0, 0);
    vec3 vup(0, 0, 1);
    f32 dist_to_focus = 10;
    f32 aperture = 0.05;

    Camera camera((f32)image_width, (f32)image_height, lookfrom, lookat, vup, 20, aperture, dist_to_focus);

    // Render

    f32 tmin = 1e-4f;
    f32 tmax = infinity;

    colour* d_img;
    checkCudaErrors(cudaMalloc(&d_img, image_height*image_width * sizeof(colour)));

    float elapsedTime;
    cudaEvent_t start;
    cudaEvent_t end;
    checkCudaErrors(cudaEventCreate(&start));
    checkCudaErrors(cudaEventCreate(&end));
    checkCudaErrors(cudaEventRecord(start));

    // Render Loop Started

    i32 number_of_rays = samples_per_pixel * image_height * image_width;

    i32 max_state_size = pow(10, 7);
    i32 state_size = min(number_of_rays, max_state_size);

    BufferDataVec current_state(state_size);
    BufferDataVec next_state(state_size);

    u32 number_of_rays_generated = 0;

    i32 current_state_size = min(number_of_rays - (i32)number_of_rays_generated, state_size);
    i32* next_state_index;
    checkCudaErrors(cudaMalloc(&next_state_index, sizeof(i32)));
    checkCudaErrors(cudaMemset(next_state_index, 0, sizeof(i32)));

    int generate_intersect_and_scatter_blocks;
    int generate_intersect_and_scatter_threads;

    checkCudaErrors(cudaOccupancyMaxPotentialBlockSize(
                &generate_intersect_and_scatter_blocks, &generate_intersect_and_scatter_threads, generate_intersect_and_scatter, 0, current_state_size));

    generate_intersect_and_scatter_threads = min(generate_intersect_and_scatter_threads, current_state_size);
    generate_intersect_and_scatter_blocks = (current_state_size + generate_intersect_and_scatter_threads - 1) / generate_intersect_and_scatter_threads;

    generate_intersect_and_scatter<<<generate_intersect_and_scatter_blocks, generate_intersect_and_scatter_threads>>>(d_img, current_state, max_depth, next_state_index, current_state_size, tmin, tmax, camera, number_of_rays_generated, samples_per_pixel, image_height);
    checkCudaErrors(cudaGetLastError());

    number_of_rays_generated += current_state_size;

    checkCudaErrors(cudaMemcpy(&current_state_size, next_state_index, sizeof(i32), cudaMemcpyDeviceToHost));
    checkCudaErrors(cudaMemset(next_state_index, 0, sizeof(i32)));

    int intersect_and_scatter_minGridSize;
    int intersect_and_scatter_blockSize;

    checkCudaErrors(cudaOccupancyMaxPotentialBlockSize(
                &intersect_and_scatter_minGridSize, &intersect_and_scatter_blockSize, intersect_and_scatter, 0, current_state_size));

    int intersect_and_scatter_blocks;
    int intersect_and_scatter_threads;

    checkCudaErrors(cudaOccupancyMaxPotentialBlockSize(
                &intersect_and_scatter_blocks, &intersect_and_scatter_threads, intersect_and_scatter, 0, 0));

    int generate_rays_blocks;
    int generate_rays_threads;

    checkCudaErrors(cudaOccupancyMaxPotentialBlockSize(
                &generate_rays_blocks, &generate_rays_threads, generate_rays, 0, 0));

    while (current_state_size > 0) {
        i32 free_slots = min(number_of_rays - (i32)number_of_rays_generated, state_size - current_state_size);

        if (free_slots > 0) {
            generate_rays_threads = min(generate_rays_threads, current_state_size);
            generate_rays_blocks = (current_state_size + generate_rays_threads - 1) / generate_rays_threads;

            generate_rays<<<generate_rays_blocks, generate_rays_threads>>>(current_state, camera, image_height, free_slots, number_of_rays_generated, samples_per_pixel, current_state_size);
            checkCudaErrors(cudaGetLastError());

            number_of_rays_generated += free_slots;
            current_state_size += free_slots;
        }

        intersect_and_scatter_threads = min(intersect_and_scatter_threads, current_state_size);
        intersect_and_scatter_blocks = (current_state_size + intersect_and_scatter_threads - 1) / intersect_and_scatter_threads;

        intersect_and_scatter<<<intersect_and_scatter_blocks, intersect_and_scatter_threads>>>(d_img, next_state, current_state, max_depth, next_state_index, current_state_size, tmin, tmax, number_of_rays_generated);
        checkCudaErrors(cudaGetLastError());

        // std::swap(current_state, d_next_state);
        BufferDataVec tmp = current_state;
        current_state = next_state;
        next_state = tmp;

        checkCudaErrors(cudaMemcpy(&current_state_size, next_state_index, sizeof(i32), cudaMemcpyDeviceToHost));
        checkCudaErrors(cudaMemset(next_state_index, 0, sizeof(i32)));
    }

    // Render Loop Ended
    checkCudaErrors(cudaEventRecord(end));
    checkCudaErrors(cudaDeviceSynchronize());
    checkCudaErrors(cudaEventElapsedTime(&elapsedTime, start, end));

    std::cout << "\nDone in " << elapsedTime << " milliseconds\n";

    colour* h_img = new colour[image_height * image_width];
    checkCudaErrors(cudaMemcpy(h_img, d_img, image_height * image_width * sizeof(colour), cudaMemcpyDeviceToHost));

    std::ofstream myfile;
    myfile.open("image.ppm");

    myfile << "P3\n" << image_width << " " << image_height << "\n255\n";
    for (int j = 0; j < image_height; j++) {
        for (int i = 0; i < image_width; i++) {
            write_colour(myfile, h_img[i*image_height + j], samples_per_pixel);
        }
    }
    delete[] h_img;

    // clean up
    checkCudaErrors(cudaDeviceSynchronize());
    checkCudaErrors(cudaGetLastError());
    checkCudaErrors(cudaFree(d_img));
    checkCudaErrors(cudaFree(next_state_index));

    current_state.free();
    next_state.free();

    checkCudaErrors(cudaGetLastError());

    cudaDeviceReset();
}