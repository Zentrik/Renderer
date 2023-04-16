# This tries to stay faithful to the book's code

using Parameters, StaticArrays, LinearAlgebra, Images, SIMD, StructArrays, MLStyle, StrideArrays, StrideArraysCore
using Expronicon.ADT: @adt

const T = Float32
const N = 8 # vector width

const Point = SVector{3, T} # We use T so we dont have points of different types, otherwise Ray, Sphere become parametric types and HittableList needs to be contructed carefully to ensure same types everywhere. (can we somehow promote it)
const Spectrum = StrideArraysCore.StaticStrideArray{Float32, 1, (1,), Tuple{StaticInt{3}}, Tuple{Nothing}, Tuple{StaticInt{1}}, 3}

@with_kw struct Ray @deftype Point
    origin = zeros(Point)
    direction = Point(0, 1, 0)
    # @assert norm(direction) ≈ 1
end
@inline @fastmath (ray::Ray)(t) = ray.origin + t * ray.direction

@adt Material begin
    struct Lambertian
        attenuation::Spectrum = StrideArray{T}(one, static(3))
    end
    struct Dielectric
        attenuation::Spectrum = StrideArray{T}(one, static(3))
        ior::T = 3//2
    end
    struct Metal
        attenuation::Spectrum = StrideArray{T}(one, static(3))
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

@with_kw struct Sphere <: Primitive
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

@with_kw struct hittable_list{T}
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

using FastBroadcast

@inline function world_color(ray)
    interp = (ray.direction.z + 1) / 2
    tmp = StrideArray{T}(undef, static(3))
    tmp .= [0.5, 0.7, 1.0]
    tmp2 = StrideArray{T}(one, static(3))
    return @.. (1 - interp) * tmp2 + interp * tmp # Spectrum{3, Float64} instead of Spectrum{3, T} saves 1mb, 0.2s for nx=50. 
end

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

@fastmath function reflect(ray, n⃗, fuzz=0)
    direction = ray.direction - 2(ray.direction ⋅ n⃗) * n⃗

    if fuzz ≉ 0
        direction += fuzz * random_in_unit_sphere()
    end

    # This does not absorb if direction is into the object !!!!
    # maybe return zeros(Point) if into and then if in ray_color?

    return normalize_fast(direction)
end

@fastmath function shick(cosθ, ior_ratio)
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

    if (ior_ratio * sinθ > 1) || (rand(T) < shick(cosθ, ior_ratio))
        return reflect(ray, n⃗)
    else
        Rperp = ior_ratio * (ray.direction + cosθ * n⃗)
        Rpar = - sqrt(max(1 - norm2(Rperp), zero(T))) * n⃗

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
    accumulated_attenuation = StrideArray{Float32}(one, static(3))

    for _ in 1:depth
        record = findSceneIntersection(r, world, tmin, tmax)

        if record.t == tmax # nothing hit, t from initialRecord
            # @assert all(world_color(r) .>= 0)
            interp = (r.direction.z + 1) / 2
            # tmp = StrideArray{T}(undef, static(3))
            # tmp .= [0.5, 0.7, 1.0]
            # tmp2 = StrideArray{T}(one, static(3))
            # colour = @.. (1 - interp) * tmp2 + interp * tmp # Spectrum{3, Float64} instead of Spectrum{3, T} saves 1mb, 0.2s for nx=50.
            accumulated_attenuation[1] *= (1 - interp) * 1 + interp * T(0.5)
            accumulated_attenuation[2] *= (1 - interp) * 1 + interp * T(0.7)
            accumulated_attenuation[3] *= (1 - interp) * 1 + interp * T(1)

            return accumulated_attenuation
        else
            # # @assert norm(record.normal) ≈ 1
            # direction = scatter(r, record.normal, sphere.material)
            # # @assert norm(direction) ≈ 1
            # attenuation = sphere.attenuation

            @fastmath @inline (direction, attenuation) = @match record.material begin
                Material.Lambertian(attenuation) => (lambertian(r, record.normal), attenuation)
                Material.Dielectric(attenuation, ior) => (glass(r, record.normal, ior), attenuation)
                Material.Metal(attenuation, fuzz) => (reflect(r, record.normal, fuzz), attenuation)
            end

            r = Ray(record.p, direction)
            accumulated_attenuation .*= attenuation
        end
    end

    return @StrideArray zeros(T, 3)
end

function scene_random_spheres()
    vector = StrideArray{Float32}(undef, static(3))
    vector .= [.5, .5, .5]
    HittableList = [Sphere([0, 0, -1000], 1000, Material.Lambertian(vector))]

	for a in -11:10, b in -11:10
		choose_mat = rand()
		center = [a + 0.9*rand(), -(b + 0.9*rand()), 0.2]
        vector = StrideArray{Float32}(undef, static(3))

		# skip spheres too close?
		if norm(center - SA[4,0, 0.2]) < 0.9 continue end 
			
		if choose_mat < 4//5
			# lambertian
			albedo = rand(3) .* rand(3)
            vector .= albedo
			push!(HittableList, Sphere(center, 1//5, Material.Lambertian(vector)))
		elseif choose_mat < 95//100
			# metal
			albedo = rand(3) / 2 .+ 1/2
			fuzz = rand() * 5
            vector .= albedo
			push!(HittableList, Sphere(center, 0.2, Material.Metal(vector, fuzz)))
		else
			# glass
			push!(HittableList, Sphere(center, 0.2, Material.Dielectric()))
		end
	end

	push!(HittableList, Sphere([0,0,1], 1, Material.Dielectric()))
    vector = StrideArray{Float32}(undef, static(3))
    vector .= [0.4,0.2,0.1]
	push!(HittableList, Sphere([-4,0,1], 1, Material.Lambertian(vector)))
    vector = StrideArray{Float32}(undef, static(3))
    vector .= [0.7,0.6,0.5]
	push!(HittableList, Sphere([4,0,1], 1, Material.Metal(vector, 0)))

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
                    @inbounds img[i, j, :] += renderRay(HittableList, maxDepth, pixelWorldPosition(camera, i, j), camera)
                end
                @inbounds img[i, j, :] /= samples_per_pixel
            end
        end
    else
        # map!(index -> sum(sample -> renderRay(HittableList, maxDepth, pixelWorldPosition(camera, index), camera), 1:samples_per_pixel) / samples_per_pixel, img, CartesianIndices(img))
        for j in axes(img, 2)
            @inbounds for i in axes(img, 1)
                for sample in 1:samples_per_pixel
                    @inbounds img[i, j, :] .+= renderRay(HittableList, maxDepth, pixelWorldPosition(camera, i, j), camera)
                end
                @inbounds img[i, j, :] ./= samples_per_pixel
            end
        end
    end

    return nothing
end

function spectrumToRGB(img) 
    rgb_img = zeros(RGB, size(img)[1:2]...)
    
    for j in axes(img, 2)
         for i in axes(img, 1)
             rgb_img[i, j] = RGB(sqrt.(img[i, j, :])...)
         end
     end
 
     return rgb_img
end

function setup(resolution=1920/2)
    HittableList = scene_random_spheres();
    spectrum_img = StrideArray{T}(one, reverse(imagesize(resolution, 16//9))..., static(3))
    spectrum_img .= 0
    camera = Camera(imagesize(resolution, 16//9)..., [13, -3, 2], [0, 0, 0], [0, 0, 1], 20, 0.05, 10)

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

    display(@benchmark render!($spectrum_img, $scene, $camera, samples_per_pixel=$10, parallel=$parallel) teardown=sleep(1) seconds=20)
    rgb_img = spectrumToRGB(spectrum_img)
    if print
        rgb_img |> display
    end
    return nothing
end

# using Cthulhu
# @descend ray_color(Ray(), setup() |> first, 10)