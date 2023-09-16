#pragma once

#include "header.hpp"
#include <iostream>

void write_colour(std::ofstream& out, colour pixel_colour, int samples_per_pixel) {
    float scale = 1.f / (float)samples_per_pixel;

    float r = powf32(pixel_colour.x * scale, .5);
    float g = powf32(pixel_colour.y * scale, .5);
    float b = powf32(pixel_colour.z * scale, .5);

    // Write the translated [0,255] value of each color component.
    out << clamp(static_cast<int>(256 * r), 0, 255) << ' '
        << clamp(static_cast<int>(256 * g), 0, 255) << ' '
        << clamp(static_cast<int>(256 * b), 0, 255) << '\n';
}