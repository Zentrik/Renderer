#pragma once

#include "hittable.hpp"
#include "vec3.hpp"
    
//#define NOVIRTUAL
#ifdef NOVIRTUAL
class sphere {
    public:
        point3 centre;
        double radius;
        shared_ptr<material> mat_ptr;

        sphere() {}
        sphere(point3 centre, double radius, shared_ptr<material> m) : centre(centre), radius(radius), mat_ptr(m) {};

        inline bool hit(const ray& r, double t_min, double t_max, double a, hit_record& rec) const {
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

            return true;
        }
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

