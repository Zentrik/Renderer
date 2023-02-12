use super::vec3::{Vec3, Point3, N};
use super::ray::Ray;
use super::hit::{Hit, HitRecord};

pub struct Sphere {
    centre: Point3,
    radius: N
}

impl Sphere {
    pub fn new(centre: Point3, radius: N) -> Sphere {
        Sphere {
            centre: centre,
            radius: radius
        }
    }
}

impl Hit for Sphere {
    fn hit(&self, ray: &Ray, t_min: N, t_max: N) -> Option<HitRecord> {
        let oc = ray.origin() - self.centre;
        let a = ray.direction().dot(ray.direction());
        let half_b = oc.dot(ray.direction());
        let c = oc.dot(oc) - self.radius * self.radius;
        let discriminant = half_b * half_b - a * c;
        
        if discriminant < 0.0 {
            return None
        }

        let mut t = (-half_b - discriminant.sqrt()) / a;

        // Should be fine to do this, I think.
        // if t > t_max {
        //     return None
        // }

        if t < t_min || t > t_max {
            t += 2.0 * discriminant.sqrt() / a;
            if t < t_min || t > t_max {
                return None
            }
        }

        let p = ray.at(t);
        let record = HitRecord {
            p: p,
            normal: (p - self.centre) / self.radius,
            t: t
        };

        return Some(record)
    }
}