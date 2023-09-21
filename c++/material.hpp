#pragma once

#include "header.hpp"

__device__ vec3 lambertian(vec3 normal, RNG& rng) {
    vec3 scatter_direction = normal + rng.uniform_random_unit_vector();

    if (approx_zero(scatter_direction)) {
        scatter_direction = normal;
    }

    return normalize(scatter_direction);
}

__device__ vec3 reflect(vec3 v, vec3 n, RNG& rng, f32 fuzz=0) {
    vec3 direction = v - 2*dot(v,n) * n;
    if (fuzz != 0) {direction += fuzz * rng.uniform_random_in_unit_sphere();}

    return normalize(direction);
}

__device__ pair<vec3, bool> metal(Ray r_in, vec3 normal, f32 fuzz, RNG& rng) {
    vec3 scattered = reflect(r_in.direction, normal, rng, fuzz);

    return {scattered, dot(scattered, normal) > 0};
}

__device__ f32 schlick(f32 cosTheta, f32 ior_ratio) {
    // Use Schlick's approximation for reflectance.
    f32 r0 = (1 - ior_ratio) / (1 + ior_ratio);
    r0 *= r0;
    return r0 + (1 - r0) * pow(1 - cosTheta, 5.f);
}

__device__ vec3 refract(vec3 unit_direction, vec3 normal, f32 cosTheta, f32 ior_ratio) {
    vec3 r_out_perp =  ior_ratio * (unit_direction + cosTheta * normal);
    vec3 r_out_parallel = -sqrt(max(0.f, 1 - length_squared(r_out_perp))) * normal;
    return normalize(r_out_perp + r_out_parallel);
}

__device__ vec3 dielectric(Ray r_in, vec3 normal, f32 ior, RNG& rng) {
    f32 air_ior = 1;

    f32 cosTheta = min(-dot(r_in.direction, normal), 1.f);
    f32 sinTheta = sqrt(1 - cosTheta*cosTheta);
    bool into = cosTheta > 0;

    f32 ior_ratio = into ? air_ior / ior : ior / air_ior;
    normal *= into ? 1 : -1;
    cosTheta *= into ? 1 : -1;

    bool cannot_refract = (ior_ratio * sinTheta) > 1;

    if (cannot_refract || rng.f32() < schlick(cosTheta, ior_ratio)) {
        return reflect(r_in.direction, normal, rng);
    } else {
        return refract(r_in.direction, normal, cosTheta, ior_ratio);
    }
}

class Material {
public:
    colour albedo;
    f32 data;

    enum class MaterialType : u32 {Lambertian, Metal, Dielectric};
    MaterialType material;

    __device__ Material(float4 data, MaterialType material) : albedo(make_float3(data.x, data.y, data.z)), data(data.w), material(material) {}
    Material(colour albedo, f32 data, MaterialType material) : albedo(albedo), data(data), material(material) {}

    static Material Lambertian(colour albedo=colour{1,1,1}) {return {albedo, 0, MaterialType::Lambertian};}
    static Material Metal(colour albedo={1,1,1}, f32 fuzz=0) {return {albedo, fuzz, MaterialType::Metal};}
    static Material Dielectric(colour albedo={1,1,1}, f32 ior=1.5) {return {albedo, ior, MaterialType::Dielectric};}

    __device__ std::tuple<vec3, colour, bool> scatter(Ray r_in, vec3 normal, RNG& rng) const {
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