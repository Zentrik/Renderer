#define NOVIRTUAL
#define NOSHAREDPTR
#define NOTEMP_REC

// #define SOA
// #define AOSOA
#define SIMD

// #define OMPSIMD
// #define BRANCHLESS
#define DontCalculateNormalsEveryHit

#define MULTITHREAD

#include "header.hpp"
#include "colour.hpp"
#include "hittable_list.hpp"
#include "sphere.hpp"
#include "camera.hpp"
#include "material.hpp"

colour world_colour(const ray& r) {
    vec3 unit_direction = normalised(r.direction());
    auto t = 0.5 * (unit_direction.y() + 1.);
    return (1. - t) * colour(1., 1., 1.) + t * colour(0.5, 0.7, 1.);
}

colour ray_colour(ray& r, const hittable& world, int depth, random_series& Series) {
#if 1
    colour accumulated_attenuation(1, 1, 1);

    hit_record rec;
    ray scattered;
    colour attenuation;

    for (int bounces = 0; bounces < depth; bounces++) {
        //rec = hit_record();
        if (world.hit(r, 1e-4, infinity, rec)) {
            if (rec.mat_ptr->scatter(r, rec, attenuation, scattered, Series)) {
                accumulated_attenuation *= attenuation;
                r = scattered;
            }
            else {
                return colour(0, 0, 0);
            }
        }
        else {
            return accumulated_attenuation * world_colour(r);
        }
    }

    // If we've exceeded the ray bounce limit, no more light is gathered.
    return colour(0, 0, 0);
#else
    // If we've exceeded the ray bounce limit, no more light is gathered.
    if (depth <= 0) { 
        return colour(0,0,0);
    }

    hit_record rec;

    if (world.hit(r, 1e-4, infinity, rec)) {
        ray scattered;
        colour attenuation;
        
        if (rec.mat_ptr->scatter(r, rec, attenuation, scattered)) {
            return attenuation * ray_colour(scattered, world, depth-1);
        }
        return colour(0, 0, 0);
    }
 
    return world_colour(r);
#endif
}

#ifdef NOSHAREDPTR
hittable_list random_scene() {
    hittable_list world;
    random_series Series{609824};

    auto ground_material = make_shared<lambertian>(colour(0.5, 0.5, 0.5));
    world.add(sphere(point3(0, -1000, 0), 1000, ground_material));

    for (int a = -11; a < 11; a++) {
        for (int b = -11; b < 11; b++) {
            auto choose_mat = random_float(Series);
            point3 center(a + 0.9 * random_float(Series), 0.2, b + 0.9 * random_float(Series));

            if (length(center - point3(4, 0.2, 0)) > 0.9) {
                shared_ptr<material> sphere_material;

                if (choose_mat < 0.8) {
                    // diffuse
                    auto albedo = colour::random(Series) * colour::random(Series);
                    sphere_material = make_shared<lambertian>(albedo);
                    world.add(sphere(center, 0.2, sphere_material));
                }
                else if (choose_mat < 0.95) {
                    // metal
                    auto albedo = colour::random(Series, 0.5, 1);
                    auto fuzz = random_float(Series, 0, 0.5);
                    sphere_material = make_shared<metal>(albedo, fuzz);
                    world.add(sphere(center, 0.2, sphere_material));
                }
                else {
                    // glass
                    sphere_material = make_shared<dielectric>(1.5);
                    world.add(sphere(center, 0.2, sphere_material));
                }
            }
        }
    }

    auto material1 = make_shared<dielectric>(1.5);
    world.add(sphere(point3(0, 1, 0), 1.0, material1));

    auto material2 = make_shared<lambertian>(colour(0.4, 0.2, 0.1));
    world.add(sphere(point3(-4, 1, 0), 1.0, material2));

    auto material3 = make_shared<metal>(colour(0.7, 0.6, 0.5), 0.0);
    world.add(sphere(point3(4, 1, 0), 1.0, material3));

    return world;
}
#else
hittable_list random_scene() {
    hittable_list world;

    auto ground_material = make_shared<lambertian>(colour(0.5, 0.5, 0.5));
    world.add(make_shared<sphere>(point3(0,-1000,0), 1000, ground_material));

    for (int a = -11; a < 11; a++) {
        for (int b = -11; b < 11; b++) {
            auto choose_mat = random_float();
            point3 center(a + 0.9*random_float(), 0.2, b + 0.9*random_float());

            if (length(center - point3(4, 0.2, 0)) > 0.9) {
                shared_ptr<material> sphere_material;

                if (choose_mat < 0.8) {
                    // diffuse
                    auto albedo = colour::random() * colour::random();
                    sphere_material = make_shared<lambertian>(albedo);
                    world.add(make_shared<sphere>(center, 0.2, sphere_material));
                } else if (choose_mat < 0.95) {
                    // metal
                    auto albedo = colour::random(0.5, 1);
                    auto fuzz = random_float(0, 0.5);
                    sphere_material = make_shared<metal>(albedo, fuzz);
                    world.add(make_shared<sphere>(center, 0.2, sphere_material));
                } else {
                    // glass
                    sphere_material = make_shared<dielectric>(1.5);
                    world.add(make_shared<sphere>(center, 0.2, sphere_material));
                }
            }
        }
    }

    auto material1 = make_shared<dielectric>(1.5);
    world.add(make_shared<sphere>(point3(0, 1, 0), 1.0, material1));

    auto material2 = make_shared<lambertian>(colour(0.4, 0.2, 0.1));
    world.add(make_shared<sphere>(point3(-4, 1, 0), 1.0, material2));

    auto material3 = make_shared<metal>(colour(0.7, 0.6, 0.5), 0.0);
    world.add(make_shared<sphere>(point3(4, 1, 0), 1.0, material3));

    return world;
}
#endif

int main() {
    #ifdef _WIN32
    srand(0);
    #endif

    // IMAGE

#if 0
    constexpr const auto aspect_ratio = 3. / 2.;
    const int image_width = 400;
    constexpr const int image_height = static_cast<int>(image_width / aspect_ratio);
    const int samples_per_pixel = 5;
    const int max_depth = 5;
#else
    const auto aspect_ratio = 3. / 2.;
    const int image_width = 800;
    const int image_height = static_cast<int>(image_width / aspect_ratio);
    const int samples_per_pixel = 50;
    const int max_depth = 10;
#endif

    // WORLD
    hittable_list world = random_scene();

    // Camera

    point3 lookfrom(13,2,3);
    point3 lookat(0,0,0);
    vec3 vup(0,1,0);
    auto dist_to_focus = 10.0;
    auto aperture = 0.1;

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
#if 1
    std::vector<int> jIterator;

    for (int j = image_height-1; j >= 0; --j) {
        jIterator.push_back(j);
    }

    thread_local random_series Series{124309};

    std::for_each(std::execution::par, jIterator.begin(), jIterator.end(), 
        [&pixel, cam, world](int j)
        {
            std::cout << "\rScanlines remaining: " << j << " " << std::flush;;
            for (int i = 0; i < image_width; ++i) {
                colour& pixel_colour = pixel[j][i];

                for (int s = 0; s < samples_per_pixel; ++s) {
                    auto u = float(i + random_float(Series)) / (image_width - 1);
                    auto v = float(j + random_float(Series)) / (image_height - 1);

                    ray r = cam.get_ray(u, v, Series);

                    pixel_colour += ray_colour(r, world, max_depth, Series);
                }
            }
        });
#else
    random_series Series{124309};
    
    #pragma omp parallel for num_threads(16) schedule(dynamic, 1) firstprivate(Series) // firstprivate initialises the variable to passed in value of Series every iteration of j, private uses Series(), i.e. 0 which is bad
    for (int j = image_height-1; j >= 0; --j) {
        std::cout << "\rScanlines remaining: " << j << " " << std::flush;
        for (int i = 0; i < image_width; ++i) {
            colour& pixel_colour = pixel[j][i];

            for (int s = 0; s < samples_per_pixel; ++s) {
                auto u = float(i + random_float(Series)) / (image_width - 1);
                auto v = float(j + random_float(Series)) / (image_height - 1);

                ray r = cam.get_ray(u, v, Series);

                pixel_colour += ray_colour(r, world, max_depth, Series);
            }
        }
    }
#endif
#else
    random_series Series{124309};

    for (int j = image_height-1; j >= 0; --j) {
        std::cout << "\rScanlines remaining: " << j << " " << std::flush;
        for (int i = 0; i < image_width; ++i) {
            colour& pixel_colour = pixel[j][i];

            for (int s = 0; s < samples_per_pixel; ++s) {
                auto u = float(i + random_float(Series)) / (image_width - 1);
                auto v = float(j + random_float(Series)) / (image_height - 1);

                ray r = cam.get_ray(u, v, Series);

                pixel_colour += ray_colour(r, world, max_depth, Series);
            }
        }
    }
#endif

    for (int j = image_height - 1; j >= 0; --j) {
        for (int i = 0; i < image_width; ++i) {
            write_colour(myfile, pixel[j][i], samples_per_pixel);
        }
    }

    std::cout << "\nDone in " << duration_cast<milliseconds>(Clock::now() - start_time).count() << " milliseconds\n";

#ifdef _WIN32
    Sleep(1000);
#else
    // sleep(1);
#endif
}