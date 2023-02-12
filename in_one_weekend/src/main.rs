mod vec3;
mod ray;
mod hit;
mod sphere;
mod camera;

use vec3::{Vec3, Point3, Colour3, N};
use ray::Ray;
use hit::{Hit, World};
use sphere::{Sphere};
use camera::Camera;

use std::io::{stderr, Write};
use rand::Rng;

fn world_colour(ray: &Ray) -> Colour3 {
    let unit_direction = ray.direction().normalise();
    let t = 0.5 * (unit_direction.y() + 1.0);
    (1.0 - t) * Colour3::new(1.0, 1.0, 1.0) + t * Colour3::new(0.5, 0.7, 1.0)
}

fn ray_colour(ray: &Ray, world: &World, depth: u64) -> Colour3 {
    if depth <= 0 {
        // If we've exceeded the ray bounce limit, no more light is gathered
        return Colour3::new(0.0, 0.0, 0.0);
    }

    if let Some(hit_record) = world.hit(ray, 0.001, N::INFINITY) {
        let target = hit_record.p + hit_record.normal + Vec3::random_in_unit_sphere().normalise();
        let ray = Ray::new(hit_record.p, target - hit_record.p);
        return 0.5 * ray_colour(&ray, world, depth - 1)
    } else {
        world_colour(ray)
    }
}

fn main() {
    // Image Dimensions
    const ASPECT_RATIO: f64 = 16.0 / 9.0;
    const IMAGE_WIDTH: u64 = 256;
    const IMAGE_HEIGHT: u64 = ((IMAGE_WIDTH as f64) / ASPECT_RATIO) as u64;

    const SAMPLES_PER_PIXEL: u64 = 100;
    const MAX_DEPTH: u64 = 5;

    // World
    let mut world = World::new();
    world.push(Sphere::new(Point3::new(0.0, 0.0, -1.0), 0.5));
    world.push(Sphere::new(Point3::new(0.0, -100.5, -1.0), 100.0));

    // Camera
    let camera = Camera::new();

    println!("P3");
    println!("{} {}", IMAGE_WIDTH, IMAGE_HEIGHT);
    println!("255");

    let mut rng = rand::thread_rng();

    for j in (0..IMAGE_HEIGHT).rev() {
        // eprintln!(".")
        eprint!("\rScanlines remaining: {:3}", IMAGE_HEIGHT - j - 1);
        stderr().flush().unwrap();

        for i in 0..IMAGE_WIDTH {
            let mut pixel_colour = Colour3::new(0.0, 0.0, 0.0);

            for _ in 0..SAMPLES_PER_PIXEL {
                let random_u: N = rng.gen();
                let random_v: N = rng.gen();

                let u = ((i as N) + random_u) / ((IMAGE_WIDTH - 1) as N);
                let v = ((j as N) + random_v)  / ((IMAGE_HEIGHT - 1) as N);
    
                let ray = camera.get_ray(u, v);
                pixel_colour += ray_colour(&ray, &world, MAX_DEPTH);
            }

            pixel_colour /= SAMPLES_PER_PIXEL as N;

            println!("{}", pixel_colour.format_colour());
        }
    }
    eprintln!("\nDone!!!")
}