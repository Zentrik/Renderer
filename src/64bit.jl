# using Revise, CUDA, LLVM, LLVM.Interop
using CUDA

d_a = CUDA.ones(10);
d_b = CUDA.zeros(10);

# Run some code on-device
macro on_device(ex...)
    code = ex[end]
    kwargs = ex[1:end-1]

    @gensym kernel
    esc(quote
        let
            function $kernel()
                $code
                return
            end

            CUDA.@sync @cuda $(kwargs...) $kernel()
        end
    end)
end

function ker_stride(a, b, len)
    index = (UInt32(blockIdx().x) - UInt32(1)) * UInt32(blockDim().x) + UInt32(threadIdx().x)
    stride = UInt32(gridDim().x) * UInt32(blockDim().x)

    i = index
    while index <= len
        @inbounds b[index] += a[index]
        i += stride
    end
    return nothing
end
function ker(a, b, len)
    index = (UInt32(blockIdx().x) - UInt32(1)) * UInt32(blockDim().x) + UInt32(threadIdx().x)

    if index <= len
        @inbounds b[index] += a[index]
    end
    return nothing
end
let d_a=d_a, d_b=d_b
    @device_code_llvm  @on_device always_inline=true ker(d_a, d_b, UInt32(2))
    @device_code_ptx @on_device always_inline=true ker(d_a, d_b, UInt32(2))
end

function ker_vectorize(a, b)
    index = (UInt32(blockIdx().x) - UInt32(1)) * UInt32(blockDim().x) + UInt32(threadIdx().x)
    stride = UInt32(gridDim().x) * UInt32(blockDim().x)

    @inbounds b[1] += a[1]
    @inbounds b[2] += a[2]
    return nothing
end
let d_a=d_a, d_b=d_b
    @device_code_llvm @on_device always_inline=true ker_vectorize(d_a, d_b)
    @device_code_ptx @on_device always_inline=true ker_vectorize(d_a, d_b)
    # @device_code_sass @on_device always_inline=true ker_vectorize(d_a, d_b)
end

function ker_vectorize2(a, b)
    @inbounds b[1] = a[1]
    @inbounds b[2] = a[2]
    return nothing
end
let d_a=d_a, d_b=d_b
    @device_code_llvm @on_device always_inline=true ker_vectorize2(d_a, d_b)
    @device_code_ptx @on_device always_inline=true ker_vectorize2(d_a, d_b)
    # @device_code_sass @on_device always_inline=true ker_vectorize(d_a, d_b)
end

function ker_vectorize3(a, b)
    @inbounds a[3] = a[1]^3
    @inbounds a[4] = a[2]^3
    return nothing
end
let d_a=d_a, d_b=d_b
    @device_code_llvm @on_device always_inline=true ker_vectorize3(d_a, d_b)
    @device_code_ptx @on_device always_inline=true ker_vectorize3(d_a, d_b)
    # @device_code_sass @on_device always_inline=true ker_vectorize(d_a, d_b)
end

function ker_simple(a)
    @inbounds a[1] += one(eltype(a))
    return nothing
end
let d_a=d_a
    @device_code_llvm debuginfo=:none @on_device always_inline=true ker_simple(d_a)
    @device_code_ptx @on_device always_inline=true ker_simple(d_a)
end

function ker_alignment(a)
    unsafe_store!(pointer(a), unsafe_load(pointer(a), 1, Val(16)), 3, Val(16))
    unsafe_store!(pointer(a), unsafe_load(pointer(a), 2, Val(16)), 4, Val(16))
    return nothing
end
let d_a=d_a
    @device_code_llvm debuginfo=:none @on_device always_inline=true ker_alignment(d_a)
    @device_code_ptx @on_device always_inline=true ker_alignment(d_a)
end

function ker_alignment2(a)
    @inbounds unsafe_store!(pointer(a), CUDA.arrayref(a, 1), 3, Val(16))
    @inbounds unsafe_store!(pointer(a), CUDA.arrayref(a, 2), 4, Val(16))
    return nothing
end
let d_a=d_a
    @device_code_llvm debuginfo=:none @on_device always_inline=true ker_alignment2(d_a)
    @device_code_ptx @on_device always_inline=true ker_alignment2(d_a)
end

function ker_alignment3(a)
    @inbounds a[3] = a[1]
    # @inbounds CUDA.arrayset(a, a[1], 3)
    @inbounds a[4] = a[2] 
    # @inbounds CUDA.arrayset(a, a[2], 4)
    # @inbounds unsafe_store!(pointer(a), a[2], 4, Val(16))
    return nothing
end
let d_a=d_a
    @device_code_llvm debuginfo=:none @on_device always_inline=true ker_alignment3(d_a)
    @device_code_ptx @on_device always_inline=true ker_alignment3(d_a)
end


try
    @device_code_llvm debuginfo=:none @on_device always_inline=true ker_alignment2(d_a)
catch err
    code_typed(err, interactive=true)
end
