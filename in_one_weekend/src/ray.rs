use super::vec3::{Vec3, Point3, N};
// pub type N = f64; // Default Number Type

pub struct Ray {
    orig: Point3,
    dir: Point3
}

impl Ray {
    pub fn new(origin: Point3, direction: Point3) -> Ray {
        Ray {
            orig: origin,
            dir: direction
        }
    }

    pub fn origin(&self) -> Point3 {
        self.orig
    }

    pub fn direction(&self) -> Point3 {
        self.dir
    }

    pub fn at(&self, t: N) -> Point3 {
        self.orig + t * self.dir
    }
}