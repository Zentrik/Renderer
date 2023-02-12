use super::vec3::{Vec3, Point3, N};
use super::ray::Ray;
use super::sphere::Sphere;

pub struct HitRecord {
    pub p: Point3,
    pub normal: Vec3,
    pub t: N
}

pub trait Hit {
    fn hit(&self, r: &Ray, t_min: N, t_max: N) -> Option<HitRecord>;
}

pub type World = Vec<Sphere>;

impl Hit for World {
    fn hit(&self, r: &Ray, t_min: N, t_max: N) -> Option<HitRecord> {
        let mut tmp_rec = None;
        let mut closest_so_far = t_max;

        for object in self {
            if let Some(hit_record) = object.hit(r, t_min, closest_so_far) {
                closest_so_far = hit_record.t;
                tmp_rec = Some(hit_record);
            }
        }

        return tmp_rec
    }
}