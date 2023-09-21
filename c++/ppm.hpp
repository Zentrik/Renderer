#pragma once

#include "header.hpp"
#include <iostream>

void write_colour(std::ofstream& out, colour pixel_colour, i32 samples_per_pixel) {
    pixel_colour /= (f32)samples_per_pixel;

    f32 r = powf32(pixel_colour.x, .5);
    f32 g = powf32(pixel_colour.y, .5);
    f32 b = powf32(pixel_colour.z, .5);

    // Write the translated [0,255] value of each color component.
    out << clamp(static_cast<i32>(256 * r), 0, 255) << ' '
        << clamp(static_cast<i32>(256 * g), 0, 255) << ' '
        << clamp(static_cast<i32>(256 * b), 0, 255) << '\n';
}