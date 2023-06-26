using CUDA

img = CUDA.zeros(2, 3)
function ker(img)
    i = (blockIdx().x - Int32(1)) * blockDim().x + threadIdx().x

    CUDA.atomic_add!(pointer(img, i), Float32(i))

    return nothing
end
@cuda threads=6 blocks=1 ker(img)