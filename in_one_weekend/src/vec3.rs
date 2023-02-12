use std::ops::{Index, IndexMut, Add, AddAssign, Sub, SubAssign, Mul, MulAssign, Div, DivAssign};

pub type N = f64; // Default Number Type

#[derive(Clone, Copy)]
pub struct Vec3 {
    e: [N; 3]
}

pub type Point3 = Vec3;
pub type Colour3 = Vec3;


impl Vec3 {
    pub fn new(e0:N, e1:N, e2:N) -> Vec3 {
        return Vec3 {
            e: [e0, e1, e2]
        }
    }

    pub fn x(self) -> N {
        self[0]
    }
    
    pub fn y(self) -> N {
        self[1]
    }
    
    pub fn z(self) -> N {
        self[2]
    }
    
    pub fn dot(self, other: Vec3) -> N {
        self[0] * other[0] + self[1] * other[1] + self[2] * other[2]
    }
    
    pub fn length(self) -> N {
        self.dot(self).sqrt()
    }
    
    pub fn cross(self, other: Vec3) -> Vec3 {
        Vec3 {
            e: [
                self[1] * other[2] - self[2] * other[1],
                self[2] * other[0] - self[0] * other[2],
                self[0] * other[1] - self[1] * other[0]
            ]
        }
    }
    
    pub fn normalise(self) -> Vec3 {
        self / self.length()
    }

    pub fn format_colour(self) -> String {
        format!("{} {} {}", (256.0 * self[0].sqrt().clamp(0.0, 0.999)) as u64,
                            (256.0 * self[1].sqrt().clamp(0.0, 0.999)) as u64,
                            (256.0 * self[2].sqrt().clamp(0.0, 0.999)) as u64)
    }

    pub fn random(range: std::ops::Range<N>) -> Vec3 {
        let mut rng = rand::thread_rng();

        Vec3 {
            e: [rng.gen_range(range.clone()), rng.gen_range(range.clone()), rng.gen_range(range.clone())]
        }
    }

    pub fn random_in_unit_sphere() -> Vec3 {
        loop {
            let v = Vec3::random(-1.0..1.0);
            if v.length() < 1.0 {
                return v;
            }
        }
    }
}

impl Index<usize> for Vec3 {
    type Output = N;

    fn index(&self, index: usize) -> &Self::Output {
        &self.e[index]
    }
}

impl IndexMut<usize> for Vec3 {
    fn index_mut(&mut self, index: usize) -> &mut N {
        &mut self.e[index]
    }
}

impl Add for Vec3 {
    type Output = Vec3;

    fn add(self, other: Vec3) -> Vec3 {
        Vec3 {
            e: [self[0] + other[0], self[1] + other[1], self[2] + other[2]]
        }
    }
}

impl AddAssign for Vec3 {
    fn add_assign(&mut self, other: Vec3) -> () {
        *self = Vec3 {
            e: [self[0] + other[0], self[1] + other[1], self[2] + other[2]]
        };
    }
}

impl Sub for Vec3 {
    type Output = Vec3;

    fn sub(self, other: Vec3) -> Vec3 {
        Vec3 {
            e: [self[0] - other[0], self[1] - other[1], self[2] - other[2]]
        }
    }
}

impl SubAssign for Vec3 {
    fn sub_assign(&mut self, other: Vec3) -> () {
        *self = Vec3 {
            e: [self[0] - other[0], self[1] - other[1], self[2] - other[2]]
        };
    }
}

impl Mul<N> for Vec3 {
    type Output = Vec3;

    fn mul(self, other: N) -> Vec3 {
        Vec3 {
            e: [self[0] * other, self[1] * other, self[2] * other]
        }
    }
}

impl MulAssign<N> for Vec3 {
    fn mul_assign(&mut self, other: N) -> () {
        *self = Vec3 {
            e: [self[0] * other, self[1] * other, self[2] * other]
        };
    }
}

impl Mul<Vec3> for N {
    type Output = Vec3;

    fn mul(self, other: Vec3) -> Vec3 {
        Vec3 {
            e: [self * other[0], self * other[1], self * other[2]]
        }
    }
}

impl Div<N> for Vec3 {
    type Output = Vec3;

    fn div(self, other: N) -> Vec3 {
        Vec3 {
            e: [self[0] / other, self[1] / other, self[2] / other]
        }
    }
}

impl DivAssign<N> for Vec3 {
    fn div_assign(&mut self, other: N) -> () {
        *self = Vec3 {
            e: [self[0] / other, self[1] / other, self[2] / other]
        };
    }
}

use std::fmt;
use std::fmt::Display;

use rand::Rng;

impl Display for Vec3 {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        write!(f, "({}, {}, {})", self[0], self[1], self[2])
    }
}