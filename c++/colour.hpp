#pragma once

#include "header.hpp"
#include <iostream>

void write_colour(std::ofstream& out, colour pixel_colour, int samples_per_pixel) {
    auto scale = 1./samples_per_pixel;

    auto r = pow(pixel_colour.x() * scale, .5);
    auto g = pow(pixel_colour.y() * scale, .5);
    auto b = pow(pixel_colour.z() * scale, .5);  

    // Write the translated [0,255] value of each color component.
    out << static_cast<int>(256 * clamp(r, 0.0, 0.999)) << ' '
        << static_cast<int>(256 * clamp(g, 0.0, 0.999)) << ' '
        << static_cast<int>(256 * clamp(b, 0.0, 0.999)) << '\n';
}