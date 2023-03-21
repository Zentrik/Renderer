#pragma once

#include "hittable.hpp"
#include "sphere.hpp"
#include "material.hpp"

#include "version2/vectorclass.h"

#include <vector>

class hittable_list : public hittable
{
public:
    std::vector<Vec8f> centreX;
    std::vector<Vec8f> centreY;
    std::vector<Vec8f> centreZ;

    std::vector<Vec8f> radius;

    std::vector<material*> mat_ptr;

    hittable_list() {}
    hittable_list(const sphere &object) { add(object); }

    void add(const sphere &object)
    {
        mat_ptr.push_back(object.mat_ptr);

        if (radius.empty() || radius.back()[Vec8f::size() - 1] != 0)
        {
            centreX.push_back(Vec8f(object.centre.x(), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f));
            centreY.push_back(Vec8f(object.centre.y(), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f));
            centreZ.push_back(Vec8f(object.centre.z(), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f));
            radius.push_back(Vec8f(object.radius, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f));
        }
        else
        {
            int i = horizontal_find_first(radius.back() == Vec8f(0.0f));

            centreX.back().insert(i, object.centre.x());
            centreY.back().insert(i, object.centre.y());
            centreZ.back().insert(i, object.centre.z());
            radius.back().insert(i, object.radius);
        }
    }

    virtual bool hit(const ray &r, float t_min, float t_max, hit_record &rec) const
    {
        bool hit_anything = false;
#if _MSC_VER // For some reason speeds up msvc
        hit_record temp_rec;
        rec = temp_rec;
#endif
        Vec8f hitT(t_max);
        Vec8ui id;

        Vec8f rOrigX(r.origin().x());
        Vec8f rOrigY(r.origin().y());
        Vec8f rOrigZ(r.origin().z());
        Vec8f rDirX(r.direction().x());
        Vec8f rDirY(r.direction().y());
        Vec8f rDirZ(r.direction().z());

        Vec8f tMinVec(t_min);
        Vec8ui curId(0, 1, 2, 3, 4, 5, 6, 7);

        for (int i = 0; i < (int)radius.size(); i++)
        {
            // load data for 4 spheres
            Vec8f coX = centreX[i] - rOrigX;
            Vec8f coY = centreY[i] - rOrigY;
            Vec8f coZ = centreZ[i] - rOrigZ;

            Vec8f neg_half_b = coX * rDirX + coY * rDirY + coZ * rDirZ;
            Vec8f c = coX * coX + coY * coY + coZ * coZ - radius[i] * radius[i];
            Vec8f quarter_discriminant = neg_half_b * neg_half_b - c;
            Vec8fb isDiscriminantPositive = quarter_discriminant > Vec8f(0.0f);

            // if ray hits any of the 8 spheres
            if (horizontal_or(isDiscriminantPositive)) // Branching gives 2x speedup using sse (i.e. Vec4f but with Aras' code)
            {
                Vec8f quarter_discriminant_root = sqrt(quarter_discriminant);

                // ray could hit spheres at t0 & t1
                Vec8f t0 = neg_half_b - quarter_discriminant_root;
                Vec8f t1 = neg_half_b + quarter_discriminant_root;

                Vec8f t = select(t0 > tMinVec, t0, t1); // if t0 is above min, take it (since it's the earlier hit); else try t1.
                Vec8fb msk = isDiscriminantPositive & (tMinVec < t) & (t < hitT);

                id = select((Vec8ib)msk, curId, id); // get indices of hit spheres
                hitT = select(msk, t, hitT);
            }
            curId += Vec8ui(Vec8f::size()); // easy way to keep track of which chunk we are on
        }

        // now we have up to 4 hits, find and return closest one
        float minT = horizontal_min(hitT);
        hit_anything = minT < t_max;

        if (hit_anything)
        { // did we hit anything?
            int lane = horizontal_find_first(hitT == Vec8f(minT));
            int hitId = id[lane];
            float finalHitT = hitT[lane];

            int i = hitId / Vec8f::size();
            int j = lane;

            rec.t = finalHitT;
            rec.p = r.at(rec.t);
            rec.normal = (rec.p - vec3(centreX[i][j], centreY[i][j], centreZ[i][j])) / radius[i][j];
            rec.mat_ptr = mat_ptr[hitId];
        }

        return hit_anything;
    }
};