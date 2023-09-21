#pragma once

#include "header.hpp"
#include "ray.hpp"
#include "sphere.hpp"
#include "material.hpp"

#include <vector>

struct HitRecord {
    f32 t;
    u32 sphere_index;
};

class HittableList {
public:
    std::vector<float4> centre_radius;
    std::vector<Material::MaterialType> material_type;
    std::vector<float4> material_data;

    void emplace_back(vec3 centre, f32 radius, Material material) {
        centre_radius.push_back(make_float4(centre, radius));
        material_type.push_back(material.material);
        material_data.push_back(make_float4(material.albedo, material.data));
    }
};

__device__ HitRecord hit(Ray r, f32 tmin, f32 tmax) {
    f32 min_hit_t = tmax;
    i32 min_index = (std::numeric_limits<i32>::max)();

    #pragma unroll 4
    for (i32 i = 0; i < spheres_count; i++) {
        float4 c_r = centre_radius[i];
        vec3 centre(c_r.x, c_r.y, c_r.z);
        float radius = c_r.w;

        vec3 co = centre - r.origin;
        f32 neg_half_b = dot(r.direction, co);
        f32 c = length_squared(co) - radius*radius;

        f32 quarter_discriminant = neg_half_b*neg_half_b - c;

        if (quarter_discriminant > 0) {
            f32 sqrtd = sqrt(quarter_discriminant);

            f32 root = neg_half_b - sqrtd;
            f32 root2 = neg_half_b + sqrtd;

            f32 t = root > tmin ? root : root2;

            bool new_min_t = (tmin < t) & (t < min_hit_t);
            min_hit_t = new_min_t ? t : min_hit_t;
            min_index = new_min_t ? i : min_index;
        }
    }

    return HitRecord(min_hit_t, min_index);
}

__device__ bool hit(HitRecord hit_record) {return hit_record.sphere_index != (std::numeric_limits<i32>::max)();}