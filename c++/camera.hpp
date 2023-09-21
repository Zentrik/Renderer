#pragma once

#include "header.hpp"

class Camera {
private:
    vec3 u, v;
    vec3 right, down;
    vec3 pinhole_location, upper_left_corner;
    f32 lens_radius;

public:
    Camera(
        f32 nx,
        f32 ny,
        vec3 lookfrom,
        vec3 lookat,
        vec3 vup,
        f32 vfov, // vertical field-of-view in degrees
        f32 lens_radius,
        f32 focus_distance
    ) : lens_radius(lens_radius) {
        f32 aspect_ratio = nx/ny;

        f32 theta = degrees_to_radians(vfov);
        f32 h = tanf(theta/2);
        f32 camera_height = 2 * h * focus_distance;
        f32 camera_width = aspect_ratio * camera_height;

        vec3 w = normalize(lookat - lookfrom);
        u = normalize(cross(w, vup));
        v = cross(w, u);

        right = u * camera_width / nx;
        down = v * camera_height / ny;

        // printf("[%f, %f] \n", camera_height, camera_width);
        // printf("[%f, %f, %f] \n", right.x, right.y, right.z);
        // printf("[%f, %f, %f] \n", down.x, down.y, down.z);

        vec3 centre = lookfrom + w * focus_distance;
        upper_left_corner = centre - right * nx / 2 - down * ny / 2;

        pinhole_location = lookfrom;
    }


    __device__ Ray get_ray(f32 x, f32 y, RNG& rng) const {
        vec3 pixel_world_position = upper_left_corner + y*right + x*down;
        vec3 random_pixel_position = pixel_world_position + rng.f32() * right + rng.f32() * down;
        auto [defocus_x, defocus_y] = lens_radius * rng.uniform_random_in_unit_disk();
        vec3 defocus_offset = u * defocus_x + v * defocus_y;

        return Ray(
            pinhole_location + defocus_offset,
            normalize(random_pixel_position - pinhole_location - defocus_offset)
        );
    }
};