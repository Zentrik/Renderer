#pragma once

#include "hittable.hpp"
#include "sphere.hpp"
#include "mathSimd.hpp"

#include <memory>
#include <vector>
#include <array>

using std::shared_ptr;

#ifdef SIMD
class hittable_list : public hittable
{
public:
    std::vector<float4> centreX;
    std::vector<float4> centreY;
    std::vector<float4> centreZ;

    std::vector<float4> radius;

    std::vector<shared_ptr<material>> mat_ptr;

    hittable_list() {}
    hittable_list(const sphere &object) { add(object); }

    void add(const sphere &object)
    {
        mat_ptr.push_back(object.mat_ptr);

        if (radius.empty() || radius.back()[kSimdWidth - 1] != 0)
        {
            centreX.push_back(float4(object.centre.x(), 0.0f, 0.0f, 0.0f));
            centreY.push_back(float4(object.centre.y(), 0.0f, 0.0f, 0.0f));
            centreZ.push_back(float4(object.centre.z(), 0.0f, 0.0f, 0.0f));
            radius.push_back(float4(object.radius, 0.0f, 0.0f, 0.0f));
        }
        else
        {
            for (int i = 0; i < kSimdWidth; i++)
            {
                if (radius.back()[i] == 0)
                {
                    float tmpArray[kSimdWidth] = {0, 0, 0, 0};

                    tmpArray[i] = object.centre.x();
                    centreX.back().m = _mm_add_ps(centreX.back().m, float4(tmpArray).m);

                    tmpArray[i] = object.centre.y();
                    centreY.back().m = _mm_add_ps(centreY.back().m, float4(tmpArray).m);

                    tmpArray[i] = object.centre.z();
                    centreZ.back().m = _mm_add_ps(centreZ.back().m, float4(tmpArray).m);

                    tmpArray[i] = object.radius;
                    radius.back().m = _mm_add_ps(radius.back().m, float4(tmpArray).m);

                    break;
                }
            }
        }
    }

    void clear()
    {
        centreX.clear();
        centreY.clear();
        centreZ.clear();
        radius.clear();
        mat_ptr.clear();
    }

    virtual bool hit(const ray &r, double t_min, double t_max, hit_record &rec) const
    {
        bool hit_anything = false;
#if _MSC_VER // For some reason speeds up msvc
        hit_record temp_rec;
        rec = temp_rec;
#endif
        float4 hitT = float4((float)t_max);
        __m128i id = _mm_set1_epi32(-1);

        float4 rOrigX = float4((float)r.origin().x());
        float4 rOrigY = float4((float)r.origin().y());
        float4 rOrigZ = float4((float)r.origin().z());
        float4 rDirX = float4((float)r.direction().x());
        float4 rDirY = float4((float)r.direction().y());
        float4 rDirZ = float4((float)r.direction().z());

        float4 tMin4 = float4((float)t_min);
        __m128i curId = _mm_set_epi32(3, 2, 1, 0);

        for (int i = 0; i < radius.size(); i++)
        {
            // load data for 4 spheres
            float4 ocX = rOrigX - centreX[i];
            float4 ocY = rOrigY - centreY[i];
            float4 ocZ = rOrigZ - centreZ[i];

            float4 half_b = ocX * rDirX + ocY * rDirY + ocZ * rDirZ;
            float4 c = ocX * ocX + ocY * ocY + ocZ * ocZ - radius[i] * radius[i];
            float4 quarter_discriminant = half_b * half_b - c;
            bool4 isDiscriminantPositive = quarter_discriminant > float4(0.0f);

            #if 1
            // if ray hits any of the 4 spheres
            if (any(isDiscriminantPositive)) // Branching gives 2x speedup
            {
                float4 quarter_discriminant_root = sqrtf(quarter_discriminant);

                // ray could hit spheres at t0 & t1
                float4 t0 = -half_b - quarter_discriminant_root;
                float4 t1 = -half_b + quarter_discriminant_root;

                float4 t = select(t1, t0, t0 > tMin4); // if t0 is above min, take it (since it's the earlier hit); else try t1.
                bool4 msk = isDiscriminantPositive & (tMin4 < t) & (t < hitT);

                id = select(id, curId, msk); // get indices of hit spheres
                hitT = select(hitT, t, msk);
            }
            #else 
            float4 quarter_discriminant_root = sqrtf(quarter_discriminant);

            // ray could hit spheres at t0 & t1
            float4 t0 = -half_b - quarter_discriminant_root;
            float4 t1 = -half_b + quarter_discriminant_root;

            float4 t = select(t1, t0, t0 > tMin4); // if t0 is above min, take it (since it's the earlier hit); else try t1.
            bool4 msk = isDiscriminantPositive & (tMin4 < t) & (t < hitT);

            id = select(id, curId, msk); // get indices of hit spheres
            hitT = select(hitT, t, msk);
            #endif
            curId = _mm_add_epi32(curId, _mm_set1_epi32(kSimdWidth)); // easy way to keep track of which chunk we are on
        }

        // now we have up to 4 hits, find and return closest one
        float minT = hmin(hitT);

        if (minT < t_max)
        { // did we hit anything?
            int minMask = mask(hitT == float4(minT));

            if (minMask != 0) // why?
            {
                int id_scalar[4];
                float hitT_scalar[4];

                _mm_storeu_si128((__m128i *)id_scalar, id);
                _mm_storeu_ps(hitT_scalar, hitT.m);

                // In general, you would do this with a bit scan (first set/trailing zero count).
                // But who cares, it's only 16 options.
                static const int laneId[16] =
                    {
                        0, 0, 1, 0, // 00xx
                        2, 0, 1, 0, // 01xx
                        3, 0, 1, 0, // 10xx
                        2, 0, 1, 0, // 11xx
                    };

                int lane = laneId[minMask];
                int hitId = id_scalar[lane];
                float finalHitT = hitT_scalar[lane];

                int i = hitId / kSimdWidth;
                int j = hitId % kSimdWidth;

                rec.t = (double)finalHitT;
                rec.p = r.at(rec.t);
                rec.normal = (rec.p - vec3(centreX[i][j], centreY[i][j], centreZ[i][j])) / radius[i][j];
                rec.mat_ptr = mat_ptr[hitId];
                return true;
            }
        }
        return false;
    }
};
#endif

#ifdef AOSOA
// #define kSimdWidth 2

/*
typedef struct {
    // double centreX[kSimdWidth];
    // double centreY[kSimdWidth];
    // double centreZ[kSimdWidth];
    std::array<double, kSimdWidth> centreX;
    std::array<double, kSimdWidth> centreY;
    std::array<double, kSimdWidth> centreZ;

    // double radius[kSimdWidth];
    std::array<double, kSimdWidth> radius;

    shared_ptr<material> mat_ptr[kSimdWidth];
} sphere_chunk;
*/

class hittable_list : public hittable
{
public:
    std::vector<std::array<double, kSimdWidth>> centreX;
    std::vector<std::array<double, kSimdWidth>> centreY;
    std::vector<std::array<double, kSimdWidth>> centreZ;

    std::vector<std::array<double, kSimdWidth>> radius;

    std::vector<std::array<shared_ptr<material>, kSimdWidth>> mat_ptr;

    hittable_list() {}
    hittable_list(const sphere &object) { add(object); }

    void add(const sphere &object)
    {

        if (radius.empty() || radius.back().back() != 0)
        {
            std::array<double, kSimdWidth> tmpArray;
            centreX.push_back(tmpArray);
            centreY.push_back(tmpArray);
            centreZ.push_back(tmpArray);
            radius.push_back(tmpArray);

            std::array<shared_ptr<material>, kSimdWidth> tmpMaterialArray;
            mat_ptr.push_back(tmpMaterialArray);

            centreX.back()[0] = object.centre.x();
            centreY.back()[0] = object.centre.y();
            centreZ.back()[0] = object.centre.z();
            radius.back()[0] = object.radius;
            mat_ptr.back()[0] = object.mat_ptr;
        }
        else
        {
            for (int i = 0; i < kSimdWidth; i++)
            {
                if (radius.back()[i] == 0)
                {
                    centreX.back()[i] = object.centre.x();
                    centreY.back()[i] = object.centre.y();
                    centreZ.back()[i] = object.centre.z();
                    radius.back()[i] = object.radius;
                    mat_ptr.back()[i] = object.mat_ptr;
                    break;
                }
            }
        }
    }
    void clear()
    {
        centreX.clear();
        centreY.clear();
        centreZ.clear();
        radius.clear();
        mat_ptr.clear();
    }

#ifdef OMPSIMD
#pragma omp declare simd
#endif

#ifdef DontCalculateNormalsEveryHit
#ifdef BRANCHLESS
    virtual bool hit(const ray &r, double t_min, double t_max, hit_record &rec) const
    {
        bool hit_anything = false;
#if _MSC_VER // For some reason speeds up msvc
        hit_record temp_rec;
        rec = temp_rec;
#endif
        double closest = t_max;
        double t;

        int bestI = -1;
        int bestJ = -1;

        double a = length_squared(r.direction());

        for (int i = 0; i < radius.size() - 1; i++)
        {
#ifdef OMPSIMD
#pragma omp simd
#endif
            for (int j = 0; j < kSimdWidth; j++)
            {
#if 1
                vec3 oc = r.origin() - vec3(centreX[i][j], centreY[i][j], centreZ[i][j]);
                double half_b = dot(oc, r.direction());
                double c = length_squared(oc) - radius[i][j] * radius[i][j];
#else
                double ocX = r.orig.x() - centreX[i][j];
                double ocY = r.orig.y() - centreY[i][j];
                double ocZ = r.orig.z() - centreZ[i][j];
                double half_b = ocX * r.dir.x() + ocY * r.dir.y() + ocZ * r.dir.z();
                double c = ocX * ocX + ocY * ocY + ocZ * ocZ - radius[i][j] * radius[i][j];
#endif
                double discriminant = half_b * half_b - a * c;

                auto sqrtd = sqrt(discriminant);
                auto root = (-half_b - sqrtd) / a;
                auto root2 = (-half_b + sqrtd) / a;

                t = discriminant < 0 ? closest : (t_min < root && root < closest ? root : (t_min < root2 && root2 < closest ? root : closest));

                rec.t = root;

                bestI = t < closest ? i : bestI;
                bestJ = t < closest ? j : bestJ;
                closest = t < closest ? t : closest;
            }
        }

        rec.t = closest;

        for (int j = 0; j < kSimdWidth; j++)
        {
            if (radius.back()[j] == 0)
                break;
            vec3 oc = r.origin() - vec3(centreX.back()[j], centreY.back()[j], centreZ.back()[j]);
            double half_b = dot(oc, r.direction());
            double c = length_squared(oc) - radius.back()[j] * radius.back()[j];

            double discriminant = half_b * half_b - a * c;

            if (discriminant < 0)
                continue;

            auto sqrtd = sqrt(discriminant);

            auto root = (-half_b - sqrtd) / a;
            if (root < t_min || rec.t < root)
            {
                root += 2 * sqrtd / a;
                if (root < t_min || rec.t < root)
                {
                    continue;
                }
            }
            rec.t = root;

            bestI = radius.size() - 1;
            bestJ = j;
        }

        rec.p = r.at(rec.t);
        rec.normal = (rec.p - vec3(centreX[bestI][bestJ], centreY[bestI][bestJ], centreZ[bestI][bestJ])) / radius[bestI][bestJ];
        rec.mat_ptr = mat_ptr[bestI][bestJ];

        hit_anything = rec.t < t_max;
        return hit_anything;
    }
#else
    virtual bool hit(const ray &r, double t_min, double t_max, hit_record &rec) const
    {
        bool hit_anything = false;
#if _MSC_VER // For some reason speeds up msvc
        hit_record temp_rec;
        rec = temp_rec;
#endif
        rec.t = t_max;

        int bestI = -1;
        int bestJ = -1;

        double a = length_squared(r.direction());

        for (int i = 0; i < radius.size() - 1; i++)
        {
#ifdef OMPSIMD
#pragma omp simd
#endif
            for (int j = 0; j < kSimdWidth; j++)
            {
#if 1
                vec3 oc = r.origin() - vec3(centreX[i][j], centreY[i][j], centreZ[i][j]);
                double half_b = dot(oc, r.direction());
                double c = length_squared(oc) - radius[i][j] * radius[i][j];
#else
                double ocX = r.orig.x() - centreX[i][j];
                double ocY = r.orig.y() - centreY[i][j];
                double ocZ = r.orig.z() - centreZ[i][j];
                double half_b = ocX * r.dir.x() + ocY * r.dir.y() + ocZ * r.dir.z();
                double c = ocX * ocX + ocY * ocY + ocZ * ocZ - radius[i][j] * radius[i][j];
#endif
                double discriminant = half_b * half_b - a * c;

                if (discriminant < 0)
                    continue;

                auto sqrtd = sqrt(discriminant);
                auto root = (-half_b - sqrtd) / a;

                if (root < t_min || rec.t < root)
                {
                    root += 2 * sqrtd / a;
                    if (root < t_min || rec.t < root)
                    {
                        continue;
                    }
                }

                rec.t = root;

                bestI = i;
                bestJ = j;
            }
        }

        for (int j = 0; j < kSimdWidth; j++)
        {
            if (radius.back()[j] == 0)
                break;
            vec3 oc = r.origin() - vec3(centreX.back()[j], centreY.back()[j], centreZ.back()[j]);
            double half_b = dot(oc, r.direction());
            double c = length_squared(oc) - radius.back()[j] * radius.back()[j];

            double discriminant = half_b * half_b - a * c;

            if (discriminant < 0)
                continue;

            auto sqrtd = sqrt(discriminant);

            auto root = (-half_b - sqrtd) / a;
            if (root < t_min || rec.t < root)
            {
                root += 2 * sqrtd / a;
                if (root < t_min || rec.t < root)
                {
                    continue;
                }
            }
            rec.t = root;

            bestI = radius.size() - 1;
            bestJ = j;
        }

        rec.p = r.at(rec.t);
        rec.normal = (rec.p - vec3(centreX[bestI][bestJ], centreY[bestI][bestJ], centreZ[bestI][bestJ])) / radius[bestI][bestJ];
        rec.mat_ptr = mat_ptr[bestI][bestJ];

        hit_anything = rec.t < t_max;
        return hit_anything;
    }
#endif
#else
    virtual bool hit(const ray &r, double t_min, double t_max, hit_record &rec) const
    {
        bool hit_anything = false;
#if _MSC_VER // For some reason speeds up msvc
        hit_record temp_rec;
        rec = temp_rec;
#endif
        rec.t = t_max;

        double a = length_squared(r.direction());

        for (int i = 0; i < radius.size() - 1; i++)
        {
#ifdef OMPSIMD
#pragma omp simd
#endif
            for (int j = 0; j < kSimdWidth; j++)
            {
#if 1
                vec3 oc = r.origin() - vec3(centreX[i][j], centreY[i][j], centreZ[i][j]);
                double half_b = dot(oc, r.direction());
                double c = length_squared(oc) - radius[i][j] * radius[i][j];
#else
                double ocX = r.orig.x() - centreX[i][j];
                double ocY = r.orig.y() - centreY[i][j];
                double ocZ = r.orig.z() - centreZ[i][j];
                double half_b = ocX * r.dir.x() + ocY * r.dir.y() + ocZ * r.dir.z();
                double c = ocX * ocX + ocY * ocY + ocZ * ocZ - radius[i][j] * radius[i][j];
#endif
                double discriminant = half_b * half_b - a * c;

                if (discriminant < 0)
                    continue;

                auto sqrtd = sqrt(discriminant);

                auto root = (-half_b - sqrtd) / a;
                if (root < t_min || rec.t < root)
                {
                    root += 2 * sqrtd / a;
                    if (root < t_min || rec.t < root)
                    {
                        continue;
                    }
                }

                rec.t = root;
                rec.p = r.at(rec.t);
                rec.normal = (rec.p - vec3(centreX[i][j], centreY[i][j], centreZ[i][j])) / radius[i][j];
                rec.mat_ptr = mat_ptr[i][j];
            }
        }

        for (int j = 0; j < kSimdWidth; j++)
        {
            if (radius.back()[j] == 0)
                break;
            vec3 oc = r.origin() - vec3(centreX.back()[j], centreY.back()[j], centreZ.back()[j]);
            double half_b = dot(oc, r.direction());
            double c = length_squared(oc) - radius.back()[j] * radius.back()[j];

            double discriminant = half_b * half_b - a * c;

            if (discriminant < 0)
                continue;

            auto sqrtd = sqrt(discriminant);

            auto root = (-half_b - sqrtd) / a;
            if (root < t_min || rec.t < root)
            {
                root += 2 * sqrtd / a;
                if (root < t_min || rec.t < root)
                {
                    continue;
                }
            }
            rec.t = root;
            rec.p = r.at(rec.t);
            rec.normal = (rec.p - vec3(centreX.back()[j], centreY.back()[j], centreZ.back()[j])) / radius.back()[j];
            rec.mat_ptr = mat_ptr.back()[j];
        }

        hit_anything = rec.t < t_max;
        return hit_anything;
    }
#endif
};
#endif

#ifdef SOA
class hittable_list : public hittable
{
public:
    std::vector<double> centreX;
    std::vector<double> centreY;
    std::vector<double> centreZ;
    std::vector<double> radius;
    std::vector<shared_ptr<material>> mat_ptr;

    hittable_list() {}
    hittable_list(const sphere &object) { add(object); }

    void add(const sphere &object)
    {
        centreX.push_back(object.centre.x());
        centreY.push_back(object.centre.y());
        centreZ.push_back(object.centre.z());
        radius.push_back(object.radius);
        mat_ptr.push_back(object.mat_ptr);
    }
    void clear()
    {
        centreX.clear();
        centreY.clear();
        centreZ.clear();
        radius.clear();
        mat_ptr.clear();
    }

    virtual bool hit(const ray &r, double t_min, double t_max, hit_record &rec) const
    {
        bool hit_anything = false;
#if _MSC_VER // For some reason speeds up msvc
        hit_record temp_rec;
        rec = temp_rec;
#endif
        rec.t = t_max;

        double a = length_squared(r.direction());

#ifdef SIMD
#pragma omp simd
#endif
        for (int i = 0; i < radius.size(); i++)
        {
            // object.hit(r, t_min, rec.t, a, rec);

            vec3 oc = r.origin() - vec3(centreX[i], centreY[i], centreZ[i]);
            // auto a = length_squared(r.direction());
            double half_b = dot(oc, r.direction());
            double c = length_squared(oc) - radius[i] * radius[i];

            double discriminant = half_b * half_b - a * c;

            if (discriminant < 0)
                continue;

            auto sqrtd = sqrt(discriminant);

            auto root = (-half_b - sqrtd) / a;
            if (root < t_min || rec.t < root)
            {
                root += 2 * sqrtd / a;
                if (root < t_min || rec.t < root)
                {
                    continue;
                }
            }
#if 1
            rec.t = root;
            rec.p = r.at(rec.t);
            rec.normal = (rec.p - vec3(centreX[i], centreY[i], centreZ[i])) / radius[i];
            rec.mat_ptr = mat_ptr[i];
#else
            rec = hit_record{r.at(root), (r.at(root) - centre) / radius, mat_ptr, root};
#endif
        }

        hit_anything = rec.t < t_max;
        return hit_anything;
    }
};
#endif

#ifndef AOSOA
#ifndef SOA
#ifndef SIMD

#ifdef NOVIRTUAL
#ifdef NOSHAREDPTR
#ifdef NOTEMP_REC
#if 1
class hittable_list : public hittable
{
public:
    std::vector<sphere> objects;

    hittable_list() {}
    hittable_list(const sphere &object) { add(object); }

    void add(const sphere &object) { objects.push_back(object); }
    void clear() { objects.clear(); }

    virtual bool hit(const ray &r, double t_min, double t_max, hit_record &rec) const
    {
        bool hit_anything = false;
#if _MSC_VER // For some reason speeds up msvc
        hit_record temp_rec;
        rec = temp_rec;
#endif
        rec.t = t_max;

        double a = length_squared(r.direction());

        for (const auto &object : objects)
        {
            // object.hit(r, t_min, rec.t, a, rec);

            vec3 oc = r.origin() - object.centre;
            // auto a = length_squared(r.direction());
            double half_b = dot(oc, r.direction());
            double c = length_squared(oc) - object.radius * object.radius;

            double discriminant = half_b * half_b - a * c;

            if (discriminant < 0)
                continue;

            auto sqrtd = sqrt(discriminant);

            auto root = (-half_b - sqrtd) / a;
            if (root < t_min || rec.t < root)
            {
                root += 2 * sqrtd / a;
                if (root < t_min || rec.t < root)
                {
                    continue;
                }
            }

#if 1
            rec.t = root;
            rec.p = r.at(rec.t);
            rec.normal = (rec.p - object.centre) / object.radius;
            rec.mat_ptr = object.mat_ptr;
#else
            rec = hit_record{r.at(root), (r.at(root) - centre) / radius, mat_ptr, root};
#endif
        }

        hit_anything = rec.t < t_max;
        return hit_anything;
    }
};
#else
class hittable_list : public hittable
{
public:
    std::vector<sphere> objects;

    hittable_list() {}
    hittable_list(const sphere &object) { add(object); }

    void add(const sphere &object) { objects.push_back(object); }
    void clear() { objects.clear(); }

    virtual bool hit(const ray &r, double t_min, double t_max, hit_record &rec) const
    {
        bool hit_anything = false;
        hit_record temp_rec;
        temp_rec.t = t_max;

        double a = length_squared(r.direction());

        for (const auto &object : objects)
        {
            object.hit(r, t_min, temp_rec.t, a, temp_rec);
        }

        rec = temp_rec;
        hit_anything = rec.t < t_max;
        return hit_anything;
    }
};
#endif
#else
class hittable_list : public hittable
{
public:
    std::vector<sphere> objects;

    hittable_list() {}
    hittable_list(const sphere &object) { add(object); }

    void add(const sphere &object) { objects.push_back(object); }
    void clear() { objects.clear(); }

    virtual bool hit(const ray &r, double t_min, double t_max, hit_record &rec) const
    {
        bool hit_anything = false;
        auto closest_so_far = t_max;
        hit_record temp_rec;

        double a = length_squared(r.direction());

        for (const auto &object : objects)
        {
            if (object.hit(r, t_min, closest_so_far, a, temp_rec))
            {
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
class hittable_list : public hittable
{
public:
    std::vector<shared_ptr<sphere>> objects;

    hittable_list() {}
    hittable_list(shared_ptr<sphere> object) { add(object); }

    void add(shared_ptr<sphere> object) { objects.push_back(object); }
    void clear() { objects.clear(); }

    virtual bool hit(const ray &r, double t_min, double t_max, hit_record &rec) const
    {
        hit_record temp_rec;
        bool hit_anything = false;
        auto closest_so_far = t_max;

        double a = length_squared(r.direction());

        for (const auto &object : objects)
        {
            if (object->hit(r, t_min, closest_so_far, a, temp_rec))
            {
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
class hittable_list : public hittable
{
public:
    std::vector<shared_ptr<hittable>> objects;

    hittable_list() {}
    hittable_list(shared_ptr<hittable> object) { add(object); }

    void add(shared_ptr<hittable> object) { objects.push_back(object); }
    void clear() { objects.clear(); }

    virtual bool hit(const ray &r, double t_min, double t_max, hit_record &rec) const
    {
        hit_record temp_rec;
        bool hit_anything = false;
        auto closest_so_far = t_max;

        for (const auto &object : objects)
        {
            if (object->hit(r, t_min, closest_so_far, temp_rec))
            {
                hit_anything = true;
                closest_so_far = temp_rec.t;
                rec = temp_rec;
            }
        }

        return hit_anything;
    }
};
#endif

#endif
#endif
#endif