// clang++-15 -std=c++20 c++/main.cpp -o c++/main -Wall -Wextra -Ofast -ffast-math -fdenormal-fp-math=positive-zero -march=native -flto=full -ltbb // -Wdouble-promotion -Wimplicit-int-float-conversion

#include "settings.hpp"

#include "header.hpp"
#include "colour.hpp"
#include "hittable_list.hpp"
#include "sphere.hpp"
#include "camera.hpp"
#include "material.hpp"

colour world_colour(ray r) {
    vec3 unit_direction = r.direction;
    float t = 0.5f * (unit_direction.y + 1);
    return (1 - t) * colour(1, 1, 1) + t * colour(0.5, 0.7, 1);
}

colour ray_colour(ray r, const HittableList& world, int depth, RNG& rng) {
    colour accumulated_attenuation(1, 1, 1);

    HitRecord rec;

    for (int bounces = 0; bounces < depth; bounces++) {
        if (world.hit(r, 1e-4, infinity, rec)) {
            auto [direction, attenuation, scatter_again] = rec.mat.scatter(r, rec.normal, rng);
            if (scatter_again) {
                accumulated_attenuation *= attenuation;
                r = {rec.p, direction};
            } else {
                return colour(0, 0, 0);
            }
        }
        else {
            return accumulated_attenuation * world_colour(r);
        }
    }

    // If we've exceeded the ray bounce limit, no more light is gathered.
    return colour(0, 0, 0);
}

HittableList random_scene() {
    HittableList world;
    RNG rng{0};

    world.add(Sphere(point3(0, -1000, 0), 1000, Material::Lambertian(colour(0.5, 0.5, 0.5))));

    for (int a = -11; a < 11; a++) {
        for (int b = -11; b < 11; b++) {
            float choose_mat = random_float32(rng);
            point3 center(a + 0.9f * random_float32(rng), 0.2, b + 0.9f * random_float32(rng));

            if (length(center - point3(4, 0.2, 0)) > 0.9f) {
                if (choose_mat < 0.8f) {
                    // diffuse
                    colour albedo = colour::random(rng) * colour::random(rng);
                    world.add(Sphere(center, 0.2, Material::Lambertian(albedo)));
                }
                else if (choose_mat < 0.95f) {
                    // metal
                    colour albedo = colour::random(rng) / 2 + vec3(.5);
                    float fuzz = random_float32(rng) / 2;
                    world.add(Sphere(center, 0.2, Material::Metal(albedo, fuzz)));
                }
                else {
                    // glass
                    world.add(Sphere(center, 0.2, Material::Dielectric()));
                }
            }
        }
    }

    world.add(Sphere(point3(0, 1, 0), 1.0, Material::Dielectric()));

    world.add(Sphere(point3(-4, 1, 0), 1.0, Material::Lambertian({0.4, 0.2, 0.1})));

    world.add(Sphere(point3(4, 1, 0), 1.0, Material::Metal({0.7, 0.6, 0.5}, 0)));

    return world;
}

int main() {
    // IMAGE

#ifdef PROFVIEW
    const float aspect_ratio = 16.f / 9;
    const int image_width = 1920 / 2;
    const int image_height = static_cast<int>(image_width / aspect_ratio);
    const int samples_per_pixel = 10;
    const int max_depth = 16;
#else
#ifdef CLAFORTE
    const float aspect_ratio = 16.f / 9;
    const int image_width = 1920;
    const int image_height = static_cast<int>(image_width / aspect_ratio);
    const int samples_per_pixel = 1000;
    const int max_depth = 16;
#else
#if 1
    const float aspect_ratio = 16.f / 9;
    const int image_width = 400;
    constexpr const int image_height = static_cast<int>(image_width / aspect_ratio);
    const int samples_per_pixel = 5;
    const int max_depth = 5;
#else
    const float aspect_ratio = 16.f / 9;
    const int image_width = 800;
    const int image_height = static_cast<int>(image_width / aspect_ratio);
    const int samples_per_pixel = 50;
    const int max_depth = 10;
#endif
#endif
#endif

    // WORLD
    HittableList world = random_scene();

    // Camera

    point3 lookfrom(13, 2, 3);
    point3 lookat(0, 0, 0);
    vec3 vup(0, 1, 0);
    float dist_to_focus = 10;
    float aperture = 0.1;

    camera cam(lookfrom, lookat, vup, 20, aspect_ratio, aperture, dist_to_focus);

    // Render

    std::ofstream myfile;
    myfile.open("image.ppm");

    myfile << "P3\n" << image_width << " " << image_height << "\n255\n";

    std::vector<std::vector<colour>> pixel(image_height, std::vector<colour>(image_width, colour(0, 0, 0)));

    // This is pretty big for the stack, I doubt there's any performance improvement also
    // static colour pixel[image_height][image_width]; // vec3() is zeros so no need to initialise

    // clock_t start_time = clock();
    time_point<Clock> start_time = Clock::now();

#ifdef MULTITHREAD
    std::vector<int> jIterator;

    for (int j = image_height-1; j >= 0; --j) {
        jIterator.push_back(j);
    }

    thread_local RNG rng{124309};

    std::for_each(std::execution::par, jIterator.begin(), jIterator.end(),
        [&](int j)
        {
            // std::cout << "\rScanlines remaining: " << j << " " << std::flush;;
            for (int i = 0; i < image_width; ++i) {
                colour& pixel_colour = pixel[j][i];

                for (int s = 0; s < samples_per_pixel; ++s) {
                    float u = ((float)i + random_float32(rng)) / (image_width - 1);
                    float v = ((float)j + random_float32(rng)) / (image_height - 1);

                    ray r = cam.get_ray(u, v, rng);

                    pixel_colour += ray_colour(r, world, max_depth, rng);
                }
            }
        });
#else
    RNG rng{124309};

    for (int j = image_height-1; j >= 0; --j) {
        std::cout << "\rScanlines remaining: " << j << " " << std::flush;
        for (int i = 0; i < image_width; ++i) {
            colour& pixel_colour = pixel[j][i];

            for (int s = 0; s < samples_per_pixel; ++s) {
                auto u = float(i + random_float32(rng)) / (image_width - 1);
                auto v = float(j + random_float32(rng)) / (image_height - 1);

                ray r = cam.get_ray(u, v, rng);

                pixel_colour += ray_colour(r, world, max_depth, rng);
            }
        }
    }
#endif

    std::cout << "\nDone in " << duration_cast<milliseconds>(Clock::now() - start_time).count() << " milliseconds\n";

    for (int j = image_height - 1; j >= 0; --j) {
        for (int i = 0; i < image_width; ++i) {
            write_colour(myfile, pixel[j][i], samples_per_pixel);
        }
    }
}