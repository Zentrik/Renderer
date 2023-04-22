# This tries to stay faithful to the book's code

using Parameters, StaticArrays, LinearAlgebra, Images, SIMD, StructArrays, MLStyle, SmartAsserts
using Expronicon.ADT: @adt

# SmartAsserts.set_enabled(false)
Fast = false

const T = Float32
const N = 8 # vector width

const Point = SVector{3, T} # We use T so we dont have points of different types, otherwise Ray, Sphere become parametric types and HittableList needs to be contructed carefully to ensure same types everywhere. (can we somehow promote it)
const Spectrum = SVector{3, T}

@with_kw struct Ray @deftype Point
    origin = zeros(Point)
    direction = Point(0, 1, 0)
    @smart_assert norm(direction) ≈ 1 "Ray direction not normalised for Ray with origin $origin and direction $direction"
end
@inline (ray::Ray)(t) = ray.origin + t * ray.direction

@adt Material begin
    struct Lambertian
        attenuation::Spectrum = ones(Spectrum)
    end
    struct Dielectric
        attenuation::Spectrum = ones(Spectrum)
        ior::T = 3//2
    end
    struct Metal
        attenuation::Spectrum = ones(Spectrum)
        fuzz::T = 0
    end
end

struct hit_record
    p::Point
    normal::Point
    material::Material
    t::T
end

abstract type Primitive end

@kwdef struct Sphere <: Primitive
    centre::Point = zeros(Point)
    radius::T = 1//2
    material::Material = Material.Lambertian()
end

@fastmath sphere_normal(sphere, position) = (position - sphere.centre) / sphere.radius

function StructArrays.staticschema(::Type{Point})
    # Define the desired names and eltypes of the "fields"
    return NamedTuple{(:x, :y, :z), fieldtypes(Point)...}
end

StructArrays.component(m::Point, key::Symbol) = getproperty(m, key)
StructArrays.createinstance(::Type{Point}, args...) = Point(args)

@kwdef struct hittable_list{T}
    Sphere::T = []
end

imagesize(height, aspectRatio) = (Int(height), round(Int, height / aspectRatio))

@with_kw struct Camera{T<:Real} @deftype Point
    u
    v

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

    return Camera(u, v, right, down, upper_left_corner, pinhole_location, lens_radius)
end

@fastmath pixelWorldPosition(camera, index) = camera.upper_left_corner + (index[2] - 1) * camera.right + (index[1] - 1) * camera.down

@fastmath pixelWorldPosition(camera, x, y) = camera.upper_left_corner + (y - 1) * camera.right + (x - 1) * camera.down

@inline @fastmath norm2(x) = x ⋅ x

@inline @fastmath normalize_fast(x) = x * (1 / sqrt(norm2(x)))

function world_color(ray)
    interp = (ray.direction.z + 1) / 2
    return (1 - interp) * Spectrum(1, 1, 1) + interp * Spectrum(0.5, 0.7, 1.0) # Spectrum{3, Float64} instead of Spectrum{3, T} saves 1mb, 0.2s for nx=50. 
end

@static if Fast
    @inline @fastmath random_in_unit_disk() = normalize_fast(SVector{2, T}(randn(), randn()))

    @inline @fastmath function random_in_unit_sphere()
        while true
            sample = Point(rand(T) * 2 - 1, rand(T) * 2 - 1, rand(T) * 2 - 1)
            if norm2(sample) < 1
                return sample
            end
        end
    end

    @inline @fastmath random_on_unit_sphere_surface() = normalize_fast(Point(randn(), randn(), randn()))
else
    @inline @fastmath function random_in_unit_disk()
        while true
            p = SVector{2, T}(rand(T) * 2 - 1, rand(T) * 2 - 1)
            # p = rand(SVector{2, T}) * 2 .- 1
            if norm2(p) < 1
                return p
            end
        end
    end

    @inline @fastmath function random_in_unit_sphere()
        while true
            sample = Point(rand(T) * 2 - 1, rand(T) * 2 - 1, rand(T) * 2 - 1)
            # sample = @inline rand(Point) * 2 .- 1
            if norm2(sample) < 1
                return sample
            end
        end
    end

    @inline @fastmath function random_on_unit_sphere_surface()
        tmp = random_in_unit_sphere()
        return normalize_fast(tmp)
    end
end

@fastmath function reflect(ray, n⃗, fuzz=0)
    direction = ray.direction - 2(ray.direction ⋅ n⃗) * n⃗

    # Is branching worth it?
    if fuzz != 0
        direction += fuzz * random_in_unit_sphere()
    end

    return normalize_fast(direction)
end

@fastmath function shick(cosθ, ior_ratio)
    r0 = ((1 - ior_ratio) / (1 + ior_ratio))^2
    return r0 + (1 - r0) * (1 - cosθ)^5
end

@fastmath function metal(ray, n⃗, fuzz=0)
    @inline scattered = reflect(ray, n⃗, fuzz)
    return scattered, scattered ⋅ n⃗ > 0 # check if scatterd direction is into the object
end

@fastmath function glass(ray, n⃗, ior)
    air_ior = 1

    cosθ = - ray.direction ⋅ n⃗
    into = cosθ > 0

    sinθ = sqrt(max(1 - cosθ^2, zero(T)))
    @smart_assert !isnan(sinθ)
    
    if into
        ior_ratio = air_ior / ior
    else
        ior_ratio = ior / air_ior
        n⃗ *= -1
        cosθ *= -1
    end

    if (ior_ratio * sinθ > 1) || (rand(T) < shick(cosθ, ior_ratio))
        return reflect(ray, n⃗)
    else
        Rperp = ior_ratio * (ray.direction + cosθ * n⃗)
        Rpar = - sqrt(max(1 - norm2(Rperp), zero(T))) * n⃗
        @smart_assert !isnan(Rpar)

        return normalize_fast(Rperp + Rpar)
    end
end

@fastmath function lambertian(ray, n⃗) 
    random = random_on_unit_sphere_surface()
    vector = n⃗ + random

    if all(vector .≈ 0)
        vector = n⃗
    end
    
    direction = normalize_fast(vector)
    return direction
end

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

@generated function sext(::Type{T}, x::SIMD.Vec{N, Bool}) where {N,T}
    t = SIMD.Intrinsics.llvm_type(T)
    s = """
    %2 = trunc <$N x i8> %0 to <$N x i1>
    %3 = sext  <$N x i1> %2 to <$N x $t>
    ret <$N x $t> %3
    """
    return :( 
        $(Expr(:meta,:inline));
        Vec(Base.llvmcall($s, SIMD.LVec{$N,$T}, Tuple{SIMD.LVec{$N,Bool}}, x.data))
    )
end

@inline @fastmath function SIMD.any(x::SIMD.Vec{8, Bool})
    y = SIMD.Intrinsics.bitcast(SIMD.LVec{8, Float32}, sext(Int32, x).data)
    return ccall("llvm.x86.avx.vtestz.ps.256", llvmcall, Int32, (SIMD.LVec{8, Float32}, SIMD.LVec{8, Float32}), y, y) == 0
end

const initialRecord = hit_record(zeros(Point), normalize(ones(Point)), Sphere().material, Inf)

@fastmath function findSceneIntersection(r, hittable_list, tmin, tmax)
    hitT = SIMD.Vec{N, T}(tmax)
    laneIndices = SIMD.Vec{N, Int32}(Int32.((1, 2, 3, 4, 5, 6, 7, 8)))
    minIndex = SIMD.Vec{N, Int32}(0)

    @inbounds @fastmath for lane in LoopVecRange{N}(hittable_list.Sphere, unsafe=true)
        cox = hittable_list.Sphere.centre.x[lane] - r.origin.x
        coy = hittable_list.Sphere.centre.y[lane] - r.origin.y
        coz = hittable_list.Sphere.centre.z[lane] - r.origin.z

        neg_half_b = r.direction.x * cox + r.direction.y * coy 
        neg_half_b += r.direction.z * coz

        c = cox*cox + coy*coy 
        c += coz*coz 
        c -= hittable_list.Sphere.radius[lane] * hittable_list.Sphere.radius[lane]

        quarter_discriminant = neg_half_b^2 - c
        isDiscriminantPositive = quarter_discriminant > 0

        if any(isDiscriminantPositive)
            @fastmath sqrtd = sqrt(quarter_discriminant) # When using fastmath, negative values just give 0
    
            root = neg_half_b - sqrtd
            root2 = neg_half_b + sqrtd

            t = vifelse(root > tmin, root, root2)

            newMinT = isDiscriminantPositive & (tmin < t) & (t < hitT)
            hitT = vifelse(newMinT, t, hitT)
            minIndex = vifelse(newMinT, laneIndices, minIndex)
        end

        laneIndices += N
    end

    minHitT = hor_min(hitT)

    if minHitT < tmax
        @inbounds i = minIndex[trailing_zeros(getBits(hitT == minHitT)) + 1]

        position = r(minHitT)
        @inbounds sphere = hittable_list.Sphere[i]
        normal = sphere_normal(sphere, position)

        return hit_record(position, normal, sphere.material, minHitT)
    else 
        return initialRecord
    end
end

@fastmath function ray_color(r, world, depth, tmin=1e-4, tmax=Inf)
    accumulated_attenuation = ones(Spectrum)

    for _ in 1:depth
        record = findSceneIntersection(r, world, tmin, tmax)

        @smart_assert !any(isnan.(accumulated_attenuation)) "$accumulated_attenuation"
        if record.t == tmax # nothing hit, t from initialRecord
            @smart_assert all(world_color(r) .>= 0)
            return accumulated_attenuation .* world_color(r)
        else
            @smart_assert isapprox(norm(record.normal), 1; atol=1e-2) "$(record.normal)"

            @fastmath @inline (direction, scatterAgain, attenuation) = @match record.material begin
                Material.Lambertian(attenuation) => (lambertian(r, record.normal), true, attenuation)
                Material.Dielectric(attenuation, ior) => (glass(r, record.normal, ior), true, attenuation)
                Material.Metal(attenuation, fuzz) => (metal(r, record.normal, fuzz)..., attenuation)
            end

            r = Ray(record.p, direction)
            accumulated_attenuation = accumulated_attenuation .* attenuation
        end
    end

    return zeros(Spectrum)
end

function scene_random_spheres()
    HittableList = [Sphere([0, 0, -1000], 1000, Material.Lambertian([.5, .5, .5]))]

	for a in -11:10, b in -11:10
		choose_mat = rand()
		center = [a + 0.9*rand(), -(b + 0.9*rand()), 0.2]

		# skip spheres too close?
		if norm(center - SA[4,0, 0.2]) < 0.9 continue end 
			
		if choose_mat < 4//5
			# lambertian
			albedo = rand(Spectrum) .* rand(Spectrum)
			push!(HittableList, Sphere(center, 1//5, Material.Lambertian(albedo)))
		elseif choose_mat < 95//100
			# metal
			albedo = rand(Spectrum) / 2 .+ 1/2
			fuzz = rand() * 5
			push!(HittableList, Sphere(center, 0.2, Material.Metal(albedo, fuzz)))
		else
			# glass
			push!(HittableList, Sphere(center, 0.2, Material.Dielectric()))
		end
	end

	push!(HittableList, Sphere([0,0,1], 1, Material.Dielectric()))
	push!(HittableList, Sphere([-4,0,1], 1, Material.Lambertian([0.4,0.2,0.1])))
	push!(HittableList, Sphere([4,0,1], 1, Material.Metal([0.7,0.6,0.5], 0)))

    append!(HittableList, repeat([Sphere(zeros(Point), 0, Material.Lambertian())], (N - mod1(length(HittableList), N))))
    tmp = StructArray(HittableList, unwrap = T -> (T<:AbstractVector))
    return hittable_list(tmp);
end

@fastmath function renderRay(HittableList, maxDepth, pixel_position, camera)
    random_pixel_position = pixel_position + rand(T) * camera.right + rand(T) * camera.down

    defocus_random = camera.lens_radius * random_in_unit_disk()
    defocus_offset = defocus_random[1] * camera.u + defocus_random[2] * camera.v

    ray = Ray(camera.pinhole_location + defocus_offset, normalize_fast(random_pixel_position - camera.pinhole_location - defocus_offset))

    return ray_color(ray, HittableList, maxDepth)
end

function render!(img, HittableList, camera=Camera(); samples_per_pixel=100, maxDepth=16, parallel=true)
    if parallel == true
        @sync for j in axes(img, 2)
            Threads.@spawn @inbounds for i in axes(img, 1)
                for sample in 1:samples_per_pixel
                    @inbounds img[i, j] += renderRay(HittableList, maxDepth, pixelWorldPosition(camera, i, j), camera)
                end
                @inbounds img[i, j] /= samples_per_pixel
            end
        end
    else
        map!(index -> sum(sample -> renderRay(HittableList, maxDepth, pixelWorldPosition(camera, index), camera), 1:samples_per_pixel) / samples_per_pixel, img, CartesianIndices(img))
    end

    return nothing
end

spectrumToRGB(img) = map(x -> RGB(sqrt.(x)...), img)

function setup(resolution=1920/2)
    HittableList = scene_random_spheres();
    spectrum_img = zeros(Spectrum, reverse(imagesize(resolution, 16//9))...)
    camera = Camera(reverse(size(spectrum_img))..., [13, -3, 2], [0, 0, 0], [0, 0, 1], 20, 0.05, 10)

    return HittableList, spectrum_img, camera
end

function production(parallel=true)
    scene, spectrum_img, camera = setup()

    @time render!(spectrum_img, scene, camera, samples_per_pixel=10, parallel=parallel)
    return spectrumToRGB(spectrum_img)
end

function test(parallel=true)
    scene, spectrum_img, camera = setup(1920/10)

    @time render!(spectrum_img, scene, camera, samples_per_pixel=5, parallel=parallel)
    return spectrumToRGB(spectrum_img)
end

function claforte(parallel=true)
    scene, spectrum_img, camera = setup(1920)

    @time render!(spectrum_img, scene, camera, samples_per_pixel=1000, parallel=parallel)
    return spectrumToRGB(spectrum_img)
end

# function profview(parallel=true)
#     scene, spectrum_img, camera = setup()

#     @profview render!(spectrum_img, scene, camera, samples_per_pixel=10, parallel=parallel)
#     return spectrumToRGB(spectrum_img)
# end

# function profview_allocs(parallel=true)
#     scene, spectrum_img, camera = setup()

#     @profview_allocs render!(spectrum_img, scene, camera, samples_per_pixel=10, parallel=parallel)
#     return spectrumToRGB(spectrum_img)
# end

# using Profile, PProf
# function profile()
#     HittableList, spectrum_img, camera = setup(10)

#     render!(spectrum_img, HittableList, camera, samples_per_pixel=10)

#     Profile.Allocs.clear(); 

#     Profile.Allocs.@profile sample_rate=1 render!(spectrum_img, scene, camera)

#     PProf.Allocs.pprof(from_c=false, webport=8080)
# end

using BenchmarkTools
function benchmark(;print=false, parallel=true)
    scene, spectrum_img, camera = setup()

    if parallel != false
        display(@benchmark render!($spectrum_img, $scene, $camera, samples_per_pixel=$10, parallel=$parallel) teardown=sleep(1) seconds=20)
    else
        display(@benchmark render!($spectrum_img, $scene, $camera, samples_per_pixel=$10, parallel=$parallel))
    end
    rgb_img = spectrumToRGB(spectrum_img)
    if print
        rgb_img |> display
    end
    return nothing
end

# using Cthulhu
# @descend ray_color(Ray(), setup() |> first, 10)