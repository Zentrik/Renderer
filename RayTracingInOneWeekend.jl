# This tries to stay faithful to the book's code

using Parameters, StaticArrays, LinearAlgebra, Images, ThreadsX, FunctionWrappers, SIMD, StructArrays
import FunctionWrappers: FunctionWrapper

const T = Float32
const Point = SVector{3, T} # We use define Float64 so we dont have points of different types, otherwise Ray, Sphere become parametric types and HittableList needs to be contructed carefully to ensure same types everywhere. (can we somehow promote it)
# we dont do const T = Float64 as that makes Point(bla) slow in sample_hemisphere and world() slow. # seems fine now? i think splitting sample_hemisphere into sample_sphere has helpled.
const Spectrum = SVector{3, T}

@with_kw struct Ray @deftype Point
    origin = zeros(Point)
    direction = Point(0, 1, 0)
    # @assert norm(direction) ≈ 1
end
(ray::Ray)(t) = ray.origin + t * ray.direction

struct Material
    attenuation::Spectrum
    scatter::FunctionWrapper{Point, Tuple{Ray, Point}}
end

struct hit_record
    p::Point
    normal::Point
    material::Material
    t::T
end

abstract type Primitive end

@with_kw struct Sphere <: Primitive
    centre::Point
    radius::T
    material::Material

    Sphere(centre=zeros(Point), radius=1//2, attenuation=ones(Spectrum), scatter=lambertian) = new(centre, radius, Material(attenuation, scatter))
end

sphere_normal(sphere, position) = (position - sphere.centre) / sphere.radius

function StructArrays.staticschema(::Type{Point})
    # Define the desired names and eltypes of the "fields"
    return NamedTuple{(:x, :y, :z), fieldtypes(Point)...}
end

StructArrays.component(m::Point, key::Symbol) = getproperty(m, key)
StructArrays.createinstance(::Type{Point}, args...) = Point(args)

@with_kw struct hittable_list{T}
    Sphere::T = []
end

imagesize(height, aspectRatio) = (Int(height), round(Int, height / aspectRatio))

@with_kw struct Camera{T<:Real} @deftype Point
    right
	down

    upper_left_corner
	pinhole_location

    lens_radius::T
end
function Camera(nx=400, ny=imagesize(nx, 16/9)[2], pinhole_location=Point(0, 0, 0), lookat=Point(0, 1, 0), up=Point(0, 0, 1), vfov=2atand(1), lens_radius=0, focus_distance=1)
    aspect_ratio = nx/ny

    camera_height = 2 * tand(vfov / 2) * focus_distance
    camera_width = camera_height * aspect_ratio

    w = normalize(lookat - pinhole_location)
    u = normalize(w × up)
    v = w × u

    right = u * camera_width / nx 
    down = v * camera_height / ny

    camera_centre = pinhole_location + w * focus_distance
    upper_left_corner = camera_centre - right * nx / 2 - down * ny / 2

    return Camera(right, down, upper_left_corner, pinhole_location, lens_radius)
end

pixelWorldPosition(camera, index) = camera.upper_left_corner + (index[2] - 1) * camera.right + (index[1] - 1) * camera.down

norm2(x) = x ⋅ x

function world_color(ray)
    interp = (ray.direction.z + 1) / 2
    return (1 - interp) * Spectrum(1, 1, 1) + interp * Spectrum(0.5, 0.7, 1.0) # Spectrum{3, Float64} instead of Spectrum{3, T} saves 1mb, 0.2s for nx=50. 
end

function random_in_unit_disk()
    while true
        p = rand(SVector{2, T}) * 2 .- 1
        if norm2(p) < 1
            return p
        end
    end
end

function random_in_unit_sphere()
    while true
        sample = rand(Point) * 2 .- 1
        if norm2(sample) < 1
            return sample
        end
    end
end

function reflect(ray, n⃗, fuzz=0)
    direction = ray.direction - 2(ray.direction ⋅ n⃗) * n⃗

    if fuzz ≉ 0 
        direction += fuzz * random_in_unit_sphere()
    end

    # This does not absorb if direction is into the object !!!!
    # maybe return zeros(Point) if into and then if in ray_color?

    return normalize(direction)
end

function shick(cosθ, ior_ratio)
    r0 = ((1 - ior_ratio) / (1 + ior_ratio))^2
    return r0 + (1 - r0) * (1 - cosθ)^5
end

@fastmath function glass(ray, n⃗, ior)
    air_ior = 1

    cosθ = - ray.direction ⋅ n⃗
    into = cosθ > 0

    sinθ = sqrt(max(1 - cosθ^2, zero(T)))
    
    if into
        ior_ratio = air_ior / ior
    else
        ior_ratio = ior / air_ior
        n⃗ *= -1
        cosθ *= -1
    end

    if ior_ratio * sinθ > 1 || rand() < shick(cosθ, ior_ratio)
        return reflect(ray, n⃗)
    else
        Rperp = ior_ratio * (ray.direction + cosθ * n⃗)
        Rpar = - sqrt(max(1 - norm2(Rperp), zero(T))) * n⃗

        return normalize(Rperp + Rpar)
    end
end

function lambertian(ray, n⃗) 
    direction = normalize(n⃗ + normalize(random_in_unit_sphere()))
    # if all(direction .≈ 0)
    #     direction = n⃗
    # end
    return direction
end

glass(ior=3//2) = (ray, n⃗) -> glass(ray, n⃗, ior)
metal(fuzz=0) = (ray, n⃗) -> reflect(ray, n⃗, fuzz) # is it slow?

@generated function getBits(mask::SIMD.Vec{N, Bool}) where N #This reverses the bits
    s = """
    %mask = trunc <$N x i8> %0 to <$N x i1>
    %res = bitcast <$N x i1> %mask to i$N
    ret i$N %res
    """
    return :(
        $(Expr(:meta, :inline));
        Base.llvmcall($s, UInt8, Tuple{SIMD.LVec{N, Bool}}, mask.data)
    )
end

function hor_min(x::SIMD.Vec{8, T}) where T
    @fastmath a = shufflevector(x, Val((4, 5, 6, 7, :undef, :undef, :undef, :undef))) # high half
    @fastmath b = min(a, x)
    @fastmath a = shufflevector(b, Val((2, 3, :undef, :undef, :undef, :undef, :undef, :undef)))
    @fastmath b = min(a, b)
    @fastmath a = shufflevector(b, Val((1, :undef, :undef, :undef, :undef, :undef, :undef, :undef)))
    @fastmath b = min(a, b)
    return @inbounds b[1]
end

@inbounds @fastmath function findSceneIntersection(r, hittable_list, tmin, tmax)
    width = 8

    hitT = SIMD.Vec{width, T}(tmax)
    laneIndices = SIMD.Vec{width, Int32}(Int32.((1, 2, 3, 4, 5, 6, 7, 8)))
    minIndex = SIMD.Vec{width, Int32}(0)

    @inbounds @fastmath for lane in LoopVecRange{width}(hittable_list.Sphere, unsafe=true)
        cox = hittable_list.Sphere.centre.x[lane] - r.origin.x
        coy = hittable_list.Sphere.centre.y[lane] - r.origin.y
        coz = hittable_list.Sphere.centre.z[lane] - r.origin.z

        neg_half_b = r.direction.x * cox + r.direction.y * coy 
        neg_half_b += r.direction.z * coz

        c = cox*cox + coy*coy + coz*coz 
        c -= hittable_list.Sphere.radius[lane] * hittable_list.Sphere.radius[lane]

        quarter_discriminant = neg_half_b^2 - c
        isDiscriminantPositive = quarter_discriminant > 0

        if any(isDiscriminantPositive)
            sqrtd = sqrt(quarter_discriminant) # When using fastmath, negative values just give 0
    
            root = neg_half_b - sqrtd
            root2 = neg_half_b + sqrtd

            t = vifelse(root > tmin, root, root2)

            newMinT = isDiscriminantPositive & (tmin < t) & (t < hitT)
            hitT = vifelse(newMinT, t, hitT)
            minIndex = vifelse(newMinT, laneIndices, minIndex)
        end

        laneIndices += width
    end    

    minHitT = hor_min(hitT)

    if minHitT < tmax
        i = minIndex[trailing_zeros(getBits(hitT == minHitT)) + 1]
    else 
        i = Int32(1)
    end

    return hit_record(r(minHitT), sphere_normal(hittable_list.Sphere[i], r(minHitT)), hittable_list.Sphere[i].material, minHitT)
end

function ray_color(r, world, depth, tmin=1e-4, tmax=Inf)::Spectrum
    accumulated_attenuation = ones(Spectrum)

    for _ in 1:depth
        record = findSceneIntersection(r, world, tmin, tmax)

        if record.t == tmax # nothing hit, t from initialRecord
            # @assert all(world_color(r) .>= 0)
            return accumulated_attenuation .* world_color(r)
        else
            # @assert norm(record.normal) ≈ 1
            direction = record.material.scatter(r, record.normal)
            # @assert norm(direction) ≈ 1
            attenuation = record.material.attenuation

            r = Ray(record.p, direction)
            accumulated_attenuation = accumulated_attenuation .* attenuation
        end
    end
    return zeros(Spectrum)
end

function scene_random_spheres()
	# HittableList = Sphere[] # SVector{486, Sphere} #  # StructArrays{Sphere} #
    HittableList = [Sphere([0, 0, -1000], 1000, [.5, .5, .5], lambertian)]

	for a in -11:10, b in -11:10
		choose_mat = rand()
		center = [a + 0.9*rand(), -(b + 0.9*rand()), 0.2]

		# skip spheres too close?
		if norm(center - SA[4,0, 0.2]) < 0.9 continue end 
			
		if choose_mat < 4//5
			# lambertian
			albedo = rand(Spectrum) .* rand(Spectrum)
			push!(HittableList, Sphere(center, 1//5, albedo, lambertian))
		elseif choose_mat < 95//100
			# metal
			albedo = rand(Spectrum) / 2 .+ 1/2
			fuzz = rand() * 5
			push!(HittableList, Sphere(center, 0.2, albedo, metal(fuzz)))
		else
			# glass
			push!(HittableList, Sphere(center, 0.2, ones(Spectrum), glass()))
		end
	end

	push!(HittableList, Sphere([0,0,1], 1, ones(Spectrum), glass()))
	push!(HittableList, Sphere([-4,0,1], 1, [0.4,0.2,0.1], lambertian))
	push!(HittableList, Sphere([4,0,1], 1, [0.7,0.6,0.5], metal()))

    return HittableList
end

function renderRay(HittableList, maxDepth, pixel_position, camera)
    random_pixel_position = pixel_position + rand() * camera.right + rand() * camera.down

    defocus_random = camera.lens_radius * random_in_unit_disk()
    defocus_offset = defocus_random[1] * normalize(camera.right) + defocus_random[2] * normalize(camera.down)

    ray = Ray(camera.pinhole_location + defocus_offset, normalize(random_pixel_position - camera.pinhole_location - defocus_offset))

    return ray_color(ray, HittableList, maxDepth)
end

function render!(img, HittableList, camera=Camera(); samples_per_pixel=100, maxDepth=16, parallel=true)
    if parallel
        ThreadsX.map!(index -> sum(sample -> renderRay(HittableList, maxDepth, pixelWorldPosition(camera, index), camera), 1:samples_per_pixel) / samples_per_pixel, img, CartesianIndices(img))
    else
        map!(index -> sum(sample -> renderRay(HittableList, maxDepth, pixelWorldPosition(camera, index), camera), 1:samples_per_pixel) / samples_per_pixel, img, CartesianIndices(img))
    end

    return nothing
end
    
# @code_warntype rendexPixel(scene_random_spheres(), 10, Point(0, 0, 1), Camera());
# @code_warntype ray_color(Ray(), scene_random_spheres(), 10, 1e-4, Inf);
# @code_warntype findSceneIntersection(Ray(), scene_random_spheres(), 1e-4, Inf);
# @code_warntype intersect(Ray(), scene_random_spheres()[1], 1e-4, Inf);

spectrumToRGB(spectrum_img) = map(x -> RGB(sqrt.(x)...), spectrum_img)

function claforte(print=true)
    HittableList = scene_random_spheres();

    append!(HittableList, repeat([Sphere(zeros(Point), 0)], (8 - length(HittableList) % 8)))
    @inline tmp = StructArray(HittableList, unwrap = T -> (T<:AbstractVector))
    scene = hittable_list(tmp);

    spectrum_img = zeros(Spectrum, reverse(imagesize(1920, 16//9))...)
    camera = Camera(reverse(size(spectrum_img))..., [13, -3, 2], [0, 0, 0], [0, 0, 1], 20, 0.05, 10)
    @time render!(spectrum_img, scene, camera, samples_per_pixel=1000)
    rgb_img = spectrumToRGB(spectrum_img)
    if print
        rgb_img |> display
    end
    return rgb_img
end

function run(;print=false, parallel=true)
    HittableList = scene_random_spheres();

    append!(HittableList, repeat([Sphere(zeros(Point), 0)], (8 - length(HittableList) % 8)))
    @inline tmp = StructArray(HittableList, unwrap = T -> (T<:AbstractVector))
    scene = hittable_list(tmp);

    spectrum_img = zeros(Spectrum, reverse(imagesize(1920/2, 16//9))...)
    camera = Camera(reverse(size(spectrum_img))..., [13, -3, 2], [0, 0, 0], [0, 0, 1], 20, 0.05, 10)
    render!(spectrum_img, scene, camera, samples_per_pixel=10, parallel=parallel)
    rgb_img = spectrumToRGB(spectrum_img)
    if print
        rgb_img |> display
    end
    return rgb_img
end

function test(print=false)
    HittableList = scene_random_spheres();
    
    append!(HittableList, repeat([Sphere(zeros(Point), 0)], (8 - length(HittableList) % 8)))
    @inline tmp = StructArray(HittableList, unwrap = T -> (T<:AbstractVector))
    scene = hittable_list(tmp);

    spectrum_img = zeros(Spectrum, reverse(imagesize(1920/10, 16//9))...)
    camera = Camera(reverse(size(spectrum_img))..., [13, -3, 2], [0, 0, 0], [0, 0, 1], 20, 0.05, 10)
    @time render!(spectrum_img, scene, camera, samples_per_pixel=5)
    rgb_img = spectrumToRGB(spectrum_img)
    if print
        rgb_img |> display
    end
    return rgb_img
end

using Profile, PProf
function profile()
    HittableList = scene_random_spheres();
    scene = hittable_list(HittableList);
    spectrum_img = zeros(Spectrum, reverse(imagesize(10, 16//9))...)
    camera = Camera(reverse(size(spectrum_img))..., [13, -3, 2], [0, 0, 0], [0, 0, 1], 20, 0.05, 10)
    render!(spectrum_img, scene, camera, samples_per_pixel=10)

    Profile.Allocs.clear(); 

    Profile.Allocs.@profile sample_rate=1 render!(spectrum_img, scene, camera)

    PProf.Allocs.pprof(from_c=false, webport=8080)
end

using BenchmarkTools
function benchmark(;print=false, parallel=true)
    HittableList = scene_random_spheres();

    append!(HittableList, repeat([Sphere(zeros(Point), 0)], (8 - length(HittableList) % 8)))
    @inline tmp = StructArray(HittableList, unwrap = T -> (T<:AbstractVector))
    scene = hittable_list(tmp);

    spectrum_img = zeros(Spectrum, reverse(imagesize(1920/2, 16//9))...)
    camera = Camera(reverse(size(spectrum_img))..., [13, -3, 2], [0, 0, 0], [0, 0, 1], 20, 0.05, 10)
    display(@benchmark render!($spectrum_img, $scene, $camera, samples_per_pixel=10, parallel=$parallel))
    rgb_img = spectrumToRGB(spectrum_img)
    if print
        rgb_img |> display
    end
    return nothing
end

function setup()
    HittableList = scene_random_spheres();

    append!(HittableList, repeat([Sphere(zeros(Point), 0)], (8 - length(HittableList) % 8)))
    @inline tmp = StructArray(HittableList, unwrap = T -> (T<:AbstractVector))
    scene = hittable_list(tmp);

    spectrum_img = zeros(Spectrum, reverse(imagesize(1920/2, 16//9))...)
    camera = Camera(reverse(size(spectrum_img))..., [13, -3, 2], [0, 0, 0], [0, 0, 1], 20, 0.05, 10)

    return (spectrum_img, scene, camera)
end

# save("render.png", rgb_img)
# save("render.exr", rgb_img)

# using ImageContrastAdjustment
# adjust_histogram(rgb_img, GammaCorrection(gamma=1/2))
# map(x -> RGB(x.^(1/2)...), spectrum_im