#pragma once

#include "hittable.hpp"
#include "vec3.hpp"
    
#if 0

#define kSimdWidth 4

// data for all spheres in a "structure of arrays" layout
struct SpheresSoA
{
    SpheresSoA(int c)
    {
        count = c;
        // we'll be processing spheres in kSimdWidth chunks, so make sure to allocate enough spaceG
        simdCount = (c + (kSimdWidth - 1)) / kSimdWidth * kSimdWidth;
        centerX = new float[simdCount];
        centerY = new float[simdCount];
        centerZ = new float[simdCount];
        radius = new float[simdCount];

        // set all data to "impossible sphere" state
        for (int i = count; i < simdCount; ++i)
        {
            centerX[i] = centerY[i] = centerZ[i] = 10000.0f;
            radius[i] = 0.0f;
        }
    }
    ~SpheresSoA()
    {
        delete[] centerX;
        delete[] centerY;
        delete[] centerZ;
        delete[] radius;
    }
    float* centerX;
    float* centerY;
    float* centerZ;
    float* radius;

    int simdCount;
    int count;
};
#else
#ifdef NOVIRTUAL
class sphere {
    public:
        point3 centre;
        float radius;
        material* mat_ptr;

        // sphere() {}
        // sphere(point3 centre, float radius, std::unique_ptr<material> m) : centre(centre), radius(radius), mat_ptr(m) {};

        sphere(point3 centre, float radius, material* m) : centre(centre), radius(radius), mat_ptr(m) {};


#if 0
        inline bool hit(const ray& r, double t_min, double t_max, double a, hit_record& rec, hit_record& rec2) const {
            vec3 oc = r.origin() - centre;
            // auto a = length_squared(r.direction());
            auto half_b = dot(oc, r.direction());
            auto c = length_squared(oc) - radius * radius;

            auto discriminant = half_b*half_b - a * c;

            if (discriminant < 0) return false;

            auto sqrtd = sqrt(discriminant);

            auto root = (-half_b - sqrtd) / a;
            if (root < t_min || t_max < root) {
                root += 2 * sqrtd / a;
                if (root < t_min || t_max < root) {
                    return false;
                }
            }

            rec.t = root;
            rec.p = r.at(rec.t);
            rec.normal = (rec.p - centre) / radius;
            rec.mat_ptr = mat_ptr;

            rec2 = rec;

            return true;
        }
#else 
        inline bool hit(const ray& r, double t_min, double t_max, double a, hit_record& rec) const {
            vec3 oc = r.origin() - centre;
            // auto a = length_squared(r.direction());
            double half_b = dot(oc, r.direction());
            double c = length_squared(oc) - radius * radius;

            double discriminant = half_b * half_b - a * c;

            if (discriminant < 0) return false;

            auto sqrtd = sqrt(discriminant);

            auto root = (-half_b - sqrtd) / a;
            if (root < t_min || t_max < root) {
                root += 2 * sqrtd / a;
                if (root < t_min || t_max < root) {
                    return false;
                }
            }

#if 1
            rec.t = root;
            rec.p = r.at(rec.t);
            rec.normal = (rec.p - centre) / radius;
            rec.mat_ptr = mat_ptr;
#else
            rec = hit_record{ r.at(root), (r.at(root) - centre) / radius, mat_ptr, root };
#endif
            return true;
        }
#endif
};
#else
class sphere: public hittable {
    public: 
        point3 centre;
        double radius;
        shared_ptr<material> mat_ptr;

        sphere() {}
        sphere(point3 centre, double radius, shared_ptr<material> m): centre(centre), radius(radius), mat_ptr(m) {};

        virtual bool hit(const ray& r, double t_min, double t_max, hit_record& rec) const override {
            vec3 oc = r.origin() - centre;
            auto a = length_squared(r.direction());
            auto half_b = dot(oc, r.direction());
            auto c = length_squared(oc) - radius*radius;

            auto discriminant = half_b;
            discriminant *= half_b;
            discriminant -= a*c;

            if (discriminant < 0) return false;
            
            auto sqrtd = sqrt(discriminant);

            auto root = (-half_b - sqrtd) / a;
            if (root < t_min || t_max < root) {
                root += 2 * sqrtd / a;
                if (root < t_min || t_max < root) {
                    return false;
                }
            }

            rec.t = root;
            rec.p = r.at(rec.t);
            rec.normal = (rec.p - centre) / radius;
            rec.mat_ptr = mat_ptr;

            return true;
        }
};
#endif
#endif