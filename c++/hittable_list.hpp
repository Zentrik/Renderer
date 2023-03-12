#pragma once

#include "hittable.hpp"
#include "sphere.hpp"

#include <memory>
#include <vector>

using std::shared_ptr;

#ifdef NOVIRTUAL
#ifdef NOSHAREDPTR
#ifdef NOTEMP_REC
#if 1
class hittable_list : public hittable {
public:
    std::vector<sphere> objects;

    hittable_list() {}
    hittable_list(const sphere& object) { add(object); }

    void add(const sphere& object) { objects.push_back(object); }
    void clear() { objects.clear(); }

    virtual bool hit(const ray& r, double t_min, double t_max, hit_record& rec) const {
        bool hit_anything = false;
#if _MSC_VER // For some reason speeds up msvc
        hit_record temp_rec;
        rec = temp_rec;
#endif
        rec.t = t_max;

        double a = length_squared(r.direction());

        for (const auto& object : objects) {
            // object.hit(r, t_min, rec.t, a, rec);

            vec3 oc = r.origin() - object.centre;
            // auto a = length_squared(r.direction());
            double half_b = dot(oc, r.direction());
            double c = length_squared(oc) - object.radius * object.radius;

            double discriminant = half_b * half_b - a * c;

            if (discriminant < 0) continue;

            auto sqrtd = sqrt(discriminant);

            auto root = (-half_b - sqrtd) / a;
            if (root < t_min || rec.t < root) {
                root += 2 * sqrtd / a;
                if (root < t_min || rec.t < root) {
                    continue;
                }
            }

#if 1
            rec.t = root;
            rec.p = r.at(rec.t);
            rec.normal = (rec.p - object.centre) / object.radius;
            rec.mat_ptr = object.mat_ptr;
#else
            rec = hit_record{ r.at(root), (r.at(root) - centre) / radius, mat_ptr, root };
#endif
        }

        hit_anything = rec.t < t_max;
        return hit_anything;
    }
};
#else
class hittable_list : public hittable {
public:
    std::vector<sphere> objects;

    hittable_list() {}
    hittable_list(const sphere& object) { add(object); }

    void add(const sphere& object) { objects.push_back(object); }
    void clear() { objects.clear(); }

    virtual bool hit(const ray& r, double t_min, double t_max, hit_record& rec) const {
        bool hit_anything = false;
        hit_record temp_rec;
        temp_rec.t = t_max;

        double a = length_squared(r.direction());

        for (const auto& object : objects) {
            object.hit(r, t_min, temp_rec.t, a, temp_rec);
        }

        rec = temp_rec;
        hit_anything = rec.t < t_max;
        return hit_anything;
    }
};
#endif
#else
class hittable_list : public hittable {
public:
    std::vector<sphere> objects;

    hittable_list() {}
    hittable_list(const sphere& object) { add(object); }

    void add(const sphere& object) { objects.push_back(object); }
    void clear() { objects.clear(); }

    virtual bool hit(const ray& r, double t_min, double t_max, hit_record& rec) const {
        bool hit_anything = false;
        auto closest_so_far = t_max;
        hit_record temp_rec;

        double a = length_squared(r.direction());

        for (const auto& object : objects) {
            if (object.hit(r, t_min, closest_so_far, a, temp_rec)) {
                hit_anything = true;
                closest_so_far = temp_rec.t;
                rec = temp_rec;
            }
        }

        return hit_anything;
    }
};
#endif
#else
class hittable_list: public hittable {
    public: 
        std::vector<shared_ptr<sphere>> objects;

        hittable_list() {}
        hittable_list(shared_ptr<sphere> object) {add(object);}

        void add(shared_ptr<sphere> object) {objects.push_back(object);}
        void clear() {objects.clear();}

        virtual bool hit(const ray& r, double t_min, double t_max, hit_record& rec) const {
            hit_record temp_rec;
            bool hit_anything = false;
            auto closest_so_far = t_max;

            double a = length_squared(r.direction());

            for (const auto& object : objects) {
                if (object->hit(r, t_min, closest_so_far, a, temp_rec)) {
                    hit_anything = true;
                    closest_so_far = temp_rec.t;
                    rec = temp_rec;
                }
            }

            return hit_anything;
        }
};
#endif
#else
class hittable_list : public hittable {
public:
    std::vector<shared_ptr<hittable>> objects;

    hittable_list() {}
    hittable_list(shared_ptr<hittable> object) { add(object); }

    void add(shared_ptr<hittable> object) { objects.push_back(object); }
    void clear() { objects.clear(); }

    virtual bool hit(const ray& r, double t_min, double t_max, hit_record& rec) const {
        hit_record temp_rec;
        bool hit_anything = false;
        auto closest_so_far = t_max;

        for (const auto& object : objects) {
            if (object->hit(r, t_min, closest_so_far, temp_rec)) {
                hit_anything = true;
                closest_so_far = temp_rec.t;
                rec = temp_rec;
            }
        }

        return hit_anything;
    }
};
#endif