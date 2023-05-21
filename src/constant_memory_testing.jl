for T in LDGTypes
    class = if T <: Integer
        :i
    elseif T <: AbstractFloat
        :f
    end
    # TODO: p class
    width = sizeof(T)*8 # in bits
    typ = Symbol(class, width)

    intr = "llvm.nvvm.ldg.global.$class.$typ.p$(AS.Constant)$typ"
    @eval @inline function pointerref_ldg(base_ptr::LLVMPtr{$T,AS.Constant}, i::Integer,
                                          ::Val{align}) where align
        offset = i-one(i) # in elements
        ptr = base_ptr + offset*sizeof($T)
        @typed_ccall($intr, llvmcall, $T, (LLVMPtr{$T,AS.Constant}, Int32), ptr, Val(align))
    end
end

# a = rand(Float32, 5)
# b = reinterpret(CUDA.LLVMPtr{Float32, CUDA.AS.Constant}, pointer(a))
# c = CuDeviceArray{Float32, 1, CUDA.AS.Constant}(b, size(a))
# CUDA.pointerref_ldg(c.ptr, 1, Val(CUDA.alignment(c))) # this is only for cached access, pointerref is in LLVM.jl
# Base.unsafe_load(pointer(CUDA.gpu_fi()), 1, Val(1))
# https://github.com/JuliaGPU/CUDA.jl/blob/d00e56064dbc924692286488db090ea71b993937/src/device/random.jl#L190
a = rand(Float32, 5)

# @eval test2() = CuDeviceArray{Float32, 1, CUDA.AS.Constant}($(CUDA.emit_constant_array(:d_a, a)), size(a))
# test2()

a = rand(Float32, 20)
var = :a
val = a
gpu_var = Symbol("gpu_$var")
arr_typ = :(CuDeviceArray{$(eltype(val)),$(ndims(val)),CUDA.AS.Constant})
@eval @inline @generated function $gpu_var()
    ptr = CUDA.emit_constant_array($(QuoteNode(var)), $val)
    Expr(:call, $arr_typ, ptr, $(size(val)))
end