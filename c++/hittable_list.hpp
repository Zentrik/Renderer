#pragma once

#include "hittable.hpp"
#include "sphere.hpp"

#include <memory>
#include <vector>

using std::shared_ptr;

#ifdef NOVIRTUAL
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