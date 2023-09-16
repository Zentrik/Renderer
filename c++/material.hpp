#pragma once

#include "header.hpp"

vec3 lambertian(vec3 normal, RNG& rng) {
    vec3 scatter_direction = normal + uniform_random_unit_vector(rng);

    if (scatter_direction.approx_zero()) {
        scatter_direction = normal;
    }

    return normalised(scatter_direction);
}

vec3 reflect(vec3 v, vec3 n, RNG& rng, float fuzz=0) {
    vec3 direction = v - 2*dot(v,n) * n;
    if (fuzz != 0) {direction += fuzz * uniform_random_in_unit_sphere(rng);}

    return normalised(direction);
}

pair<vec3, bool> metal(ray r_in, vec3 normal, float fuzz, RNG& rng) {
    vec3 scattered = reflect(r_in.direction, normal, rng, fuzz);

    return {scattered, dot(scattered, normal) > 0};
}

float schlick(float cosTheta, float ior_ratio) {
    // Use Schlick's approximation for reflectance.
    float r0 = (1 - ior_ratio) / (1 + ior_ratio);
    r0 *= r0;
    return r0 + (1 - r0) * pow(1 - cosTheta, 5.f);
}

vec3 refract(vec3 unit_direction, vec3 normal, float cosTheta, float ior_ratio) {
    vec3 r_out_perp =  ior_ratio * (unit_direction + cosTheta * normal);
    vec3 r_out_parallel = -sqrt(max(0.f, 1 - length_squared(r_out_perp))) * normal;
    return normalised(r_out_perp + r_out_parallel);
}

vec3 dielectric(ray r_in, vec3 normal, float ior, RNG& rng) {
    float air_ior = 1;

    float cosTheta = min(-dot(r_in.direction, normal), 1.f);
    float sinTheta = sqrt(1 - cosTheta*cosTheta);
    bool into = cosTheta > 0;

    float ior_ratio;
    if (into) {
        ior_ratio = air_ior / ior;
    } else {
        ior_ratio = ior / air_ior;
        normal *= -1;
        cosTheta *= -1;
    }

    bool cannot_refract = (ior_ratio * sinTheta) > 1;

    if (cannot_refract || random_float32(rng) < schlick(cosTheta, ior_ratio)) {
        return reflect(r_in.direction, normal, rng);
    } else {
        return refract(r_in.direction, normal, cosTheta, ior_ratio);
    }
}

class Material {
public:
    colour albedo;
    float data;

    enum class MaterialType : uint32_t {Lambertian, Metal, Dielectric};
    MaterialType material;

    static Material Lambertian(colour albedo=colour{1,1,1}) {return {albedo, 0, MaterialType::Lambertian};}
    static Material Metal(colour albedo={1,1,1}, float fuzz=0) {return {albedo, fuzz, MaterialType::Metal};}
    static Material Dielectric(colour albedo={1,1,1}, float ior=1.5) {return {albedo, ior, MaterialType::Dielectric};}

    std::tuple<vec3, colour, bool> scatter(ray r_in, vec3 normal, RNG& rng) const {
        bool scatter_again = true;
        vec3 direction;

        using enum MaterialType;
        if (material == Lambertian) {
            direction = lambertian(normal, rng);
        } else if (material == Metal) {
            std::tie(direction, scatter_again) = metal(r_in, normal, data, rng);
        } else {
            direction = dielectric(r_in, normal, data, rng);
        }

        return {direction, albedo, scatter_again};
    }

};