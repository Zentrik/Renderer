a = IOBuffer();
@device_code_ptx io=a test(:GPU)
write("custom.ptx", take!(a))

a = IOBuffer();
@device_code_llvm io=a test(:GPU)
write("custom.llvm", take!(a))

a = IOBuffer();
@device_code_sass io=a test(:GPU)
write("custom.sass", take!(a))