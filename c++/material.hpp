#pragma once

#include "header.hpp"

struct hit_record;

class material {
    public:
        virtual bool scatter(const ray& r_in, const hit_record& rec, colour& attenuation, ray& scattered) const = 0;
};

class lambertian: public material {
    public:
        colour albedo;

        lambertian(const colour& a) : albedo(a) {}

        virtual bool scatter(const ray& r_in, const hit_record& rec, colour& attenuation, ray& scattered) const override {
            vec3 scatter_direction = rec.normal + uniform_random_unit_vector();

            if (scatter_direction.approx_zero()) {
                scatter_direction = rec.normal;
            }

            scattered = ray(rec.p, scatter_direction);
            attenuation = albedo;
            return true;
        }
};

vec3 reflect(const vec3& v, const vec3& n) {
    return v - 2*dot(v,n)*n;
}

class metal: public material {
    public:
        colour albedo;
        float fuzz;

        metal(const colour& a, float fuzz) : albedo(a), fuzz(fuzz < 1 ? fuzz : 1) {}

        virtual bool scatter(const ray& r_in, const hit_record& rec, colour& attenuation, ray& scattered) const override {
            vec3 reflected = reflect(normalised(r_in.direction()), rec.normal);
            scattered = ray(rec.p, reflected + fuzz * uniform_random_in_unit_sphere());
            attenuation = albedo;

            return dot(scattered.direction(), rec.normal) > 0;
        }
};

float schlick(float cosTheta, float ior_ratio) {
    // Use Schlick's approximation for reflectance.
    float r0 = (1 - ior_ratio) / (1 + ior_ratio);
    r0 *= r0;
    return r0 + (1 - r0) * std::pow(1 - cosTheta, 5);
}

vec3 refract(vec3 unit_direction, vec3 normal, float cosTheta, float ior_ratio) {
    vec3 r_out_perp =  ior_ratio * (unit_direction + cosTheta * normal);
    vec3 r_out_parallel = -sqrt(fabs(1.0 - length_squared(r_out_perp))) * normal;
    return r_out_perp + r_out_parallel;
}

class dielectric : public material {
    public:
        float ior;

        dielectric(float index_of_refraction) : ior(index_of_refraction) {}

        virtual bool scatter(const ray& r_in, const hit_record& rec, colour& attenuation, ray& scattered) const override {
            attenuation = colour(1.0, 1.0, 1.0);

            float air_ior = 1.0;

            vec3 unit_direction = normalised(r_in.direction());
            float cosTheta = fmin(-dot(unit_direction, rec.normal), 1.0);
            float sinTheta = sqrt(1 - cosTheta*cosTheta);
            bool into = cosTheta > 0;

            float ior_ratio;
            int sign = 1;
        
            if (into) {
                ior_ratio = air_ior / ior;
            } else {
                ior_ratio = ior / air_ior;
                sign = -1;
                cosTheta *= -1;
            }

            bool cannot_refract = ior_ratio * sinTheta > 1.0;
            vec3 direction;

            if (cannot_refract || random_float() < schlick(cosTheta, ior_ratio)) {
                direction = reflect(unit_direction, rec.normal * sign);
                // direction = refract(unit_direction, rec.normal * sign, cosTheta, ior_ratio);
            } else {
                direction = refract(unit_direction, rec.normal * sign, cosTheta, ior_ratio);
            }

            scattered = ray(rec.p, direction);

            return true;
        }
};