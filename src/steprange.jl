using CUDA, LLVM, LLVM.Interop

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

a = CUDA.ones(10)
b = CUDA.zeros(10)

function ker(a, b)
    index = (UInt32(blockIdx().x) - UInt32(1)) * UInt32(blockDim().x) + UInt32(threadIdx().x)
    stride = UInt32(gridDim().x) * UInt32(blockDim().x)

    assume(stride > 0)
    # assume(index > 0)
    for i in index:stride:UInt32(10)
        @inbounds b[i] = a[i]
    end
end

let a=a, b=b
    # @device_code_llvm @on_device always_inline=true ker(a, b)
    @device_code_ptx @on_device always_inline=true ker(a, b)
end

function ker2(a, b)
    index = (UInt32(blockIdx().x) - UInt32(1)) * UInt32(blockDim().x) + UInt32(threadIdx().x)
    stride = UInt32(gridDim().x) * UInt32(blockDim().x)

    i = index
    while i <= UInt32(10)
        @inbounds b[i] = a[i]
        
        i += stride
    end
end

let a=a, b=b
    # @device_code_llvm  @on_device always_inline=true ker2(a, b)
    @device_code_ptx @on_device always_inline=true ker2(a, b)
end

function test(a, b, index, stride)
    assume(stride > 0)
    for i in index:stride:(UInt32(10))# - (UInt32(10) - index)%stride)
        @inbounds b[i] = a[i]
    end
end

using Cthulhu
# using Cthulhu.TypedSyntax.JuliaSyntax
# parsestmt(SyntaxNode, """function test(a, b, index, stride)
#     for i in index:stride:10
#         @inbounds b[i] = a[i]
#     end
# end""")

c = ones(10)
d = zeros(10)
test(c, d, UInt32(1), UInt32(2))

# @code_typed test(c, d, 1, 2)
# @code_lowered test(c, d, 1, 2)

@descend test(c, d, UInt32(1), UInt32(2))

function test2(a, b, index, stride)
    i = index
    while i <= 10
        @inbounds b[i] = a[i]
        i += stride
    end
end