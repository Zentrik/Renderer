	.file	"simdSimple.cpp"
	.text
	.section	.text._ZSt17__size_to_integerm,"axG",@progbits,_ZSt17__size_to_integerm,comdat
	.weak	_ZSt17__size_to_integerm
	.type	_ZSt17__size_to_integerm, @function
_ZSt17__size_to_integerm:
.LFB325:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE325:
	.size	_ZSt17__size_to_integerm, .-_ZSt17__size_to_integerm
	.section	.text._ZnwmPv,"axG",@progbits,_ZnwmPv,comdat
	.weak	_ZnwmPv
	.type	_ZnwmPv, @function
_ZnwmPv:
.LFB424:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE424:
	.size	_ZnwmPv, .-_ZnwmPv
	.section	.text._ZSt3minImERKT_S2_S2_,"axG",@progbits,_ZSt3minImERKT_S2_S2_,comdat
	.weak	_ZSt3minImERKT_S2_S2_
	.type	_ZSt3minImERKT_S2_S2_, @function
_ZSt3minImERKT_S2_S2_:
.LFB1259:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L6
	movq	-16(%rbp), %rax
	jmp	.L7
.L6:
	movq	-8(%rbp), %rax
.L7:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1259:
	.size	_ZSt3minImERKT_S2_S2_, .-_ZSt3minImERKT_S2_S2_
	.section	.rodata
	.type	_ZN6__pstl9execution2v1L3seqE, @object
	.size	_ZN6__pstl9execution2v1L3seqE, 1
_ZN6__pstl9execution2v1L3seqE:
	.zero	1
	.type	_ZN6__pstl9execution2v1L3parE, @object
	.size	_ZN6__pstl9execution2v1L3parE, 1
_ZN6__pstl9execution2v1L3parE:
	.zero	1
	.type	_ZN6__pstl9execution2v1L9par_unseqE, @object
	.size	_ZN6__pstl9execution2v1L9par_unseqE, 1
_ZN6__pstl9execution2v1L9par_unseqE:
	.zero	1
	.type	_ZN6__pstl9execution2v1L5unseqE, @object
	.size	_ZN6__pstl9execution2v1L5unseqE, 1
_ZN6__pstl9execution2v1L5unseqE:
	.zero	1
	.section	.text._ZNSt11char_traitsIcE6lengthEPKc,"axG",@progbits,_ZNSt11char_traitsIcE6lengthEPKc,comdat
	.weak	_ZNSt11char_traitsIcE6lengthEPKc
	.type	_ZNSt11char_traitsIcE6lengthEPKc, @function
_ZNSt11char_traitsIcE6lengthEPKc:
.LFB2831:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$0, %eax
	testb	%al, %al
	je	.L10
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	jmp	.L11
.L10:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	nop
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2831:
	.size	_ZNSt11char_traitsIcE6lengthEPKc, .-_ZNSt11char_traitsIcE6lengthEPKc
	.local	_ZN9benchmark8internalL18stream_init_anchorE
	.comm	_ZN9benchmark8internalL18stream_init_anchorE,4,4
	.section	.text._ZN9benchmark8internal17FunctionBenchmarkC2EPKcPFvRNS_5StateEE,"axG",@progbits,_ZN9benchmark8internal17FunctionBenchmarkC5EPKcPFvRNS_5StateEE,comdat
	.align 2
	.weak	_ZN9benchmark8internal17FunctionBenchmarkC2EPKcPFvRNS_5StateEE
	.type	_ZN9benchmark8internal17FunctionBenchmarkC2EPKcPFvRNS_5StateEE, @function
_ZN9benchmark8internal17FunctionBenchmarkC2EPKcPFvRNS_5StateEE:
.LFB3672:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9benchmark8internal9BenchmarkC2EPKc@PLT
	leaq	16+_ZTVN9benchmark8internal17FunctionBenchmarkE(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 208(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3672:
	.size	_ZN9benchmark8internal17FunctionBenchmarkC2EPKcPFvRNS_5StateEE, .-_ZN9benchmark8internal17FunctionBenchmarkC2EPKcPFvRNS_5StateEE
	.weak	_ZN9benchmark8internal17FunctionBenchmarkC1EPKcPFvRNS_5StateEE
	.set	_ZN9benchmark8internal17FunctionBenchmarkC1EPKcPFvRNS_5StateEE,_ZN9benchmark8internal17FunctionBenchmarkC2EPKcPFvRNS_5StateEE
	.section	.text._ZNSt16nested_exceptionC2Ev,"axG",@progbits,_ZNSt16nested_exceptionC5Ev,comdat
	.align 2
	.weak	_ZNSt16nested_exceptionC2Ev
	.type	_ZNSt16nested_exceptionC2Ev, @function
_ZNSt16nested_exceptionC2Ev:
.LFB3783:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	16+_ZTVSt16nested_exception(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZSt17current_exceptionv@PLT
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L14
	call	__stack_chk_fail@PLT
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3783:
	.size	_ZNSt16nested_exceptionC2Ev, .-_ZNSt16nested_exceptionC2Ev
	.weak	_ZNSt16nested_exceptionC1Ev
	.set	_ZNSt16nested_exceptionC1Ev,_ZNSt16nested_exceptionC2Ev
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata
	.align 4
	.type	_ZL4V_DC, @object
	.size	_ZL4V_DC, 4
_ZL4V_DC:
	.long	-256
	.text
	.type	_ZL16bit_scan_forwardj, @function
_ZL16bit_scan_forwardj:
.LFB8686:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
#APP
# 284 "c++/version2/instrset.h" 1
	bsfl %eax, %eax
# 0 "" 2
#NO_APP
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8686:
	.size	_ZL16bit_scan_forwardj, .-_ZL16bit_scan_forwardj
	.section	.rodata
	.align 4
	.type	_ZL12perm_zeroing, @object
	.size	_ZL12perm_zeroing, 4
_ZL12perm_zeroing:
	.long	1
	.align 4
	.type	_ZL9perm_perm, @object
	.size	_ZL9perm_perm, 4
_ZL9perm_perm:
	.long	2
	.align 4
	.type	_ZL12perm_allzero, @object
	.size	_ZL12perm_allzero, 4
_ZL12perm_allzero:
	.long	4
	.align 4
	.type	_ZL15perm_largeblock, @object
	.size	_ZL15perm_largeblock, 4
_ZL15perm_largeblock:
	.long	8
	.align 4
	.type	_ZL9perm_addz, @object
	.size	_ZL9perm_addz, 4
_ZL9perm_addz:
	.long	16
	.align 4
	.type	_ZL10perm_addz2, @object
	.size	_ZL10perm_addz2, 4
_ZL10perm_addz2:
	.long	32
	.align 4
	.type	_ZL15perm_cross_lane, @object
	.size	_ZL15perm_cross_lane, 4
_ZL15perm_cross_lane:
	.long	64
	.align 4
	.type	_ZL17perm_same_pattern, @object
	.size	_ZL17perm_same_pattern, 4
_ZL17perm_same_pattern:
	.long	128
	.align 4
	.type	_ZL12perm_punpckh, @object
	.size	_ZL12perm_punpckh, 4
_ZL12perm_punpckh:
	.long	256
	.align 4
	.type	_ZL12perm_punpckl, @object
	.size	_ZL12perm_punpckl, 4
_ZL12perm_punpckl:
	.long	512
	.align 4
	.type	_ZL11perm_rotate, @object
	.size	_ZL11perm_rotate, 4
_ZL11perm_rotate:
	.long	1024
	.align 4
	.type	_ZL9perm_swap, @object
	.size	_ZL9perm_swap, 4
_ZL9perm_swap:
	.long	2048
	.align 4
	.type	_ZL12perm_shright, @object
	.size	_ZL12perm_shright, 4
_ZL12perm_shright:
	.long	4096
	.align 4
	.type	_ZL11perm_shleft, @object
	.size	_ZL11perm_shleft, 4
_ZL11perm_shleft:
	.long	8192
	.align 4
	.type	_ZL15perm_rotate_big, @object
	.size	_ZL15perm_rotate_big, 4
_ZL15perm_rotate_big:
	.long	16384
	.align 4
	.type	_ZL14perm_broadcast, @object
	.size	_ZL14perm_broadcast, 4
_ZL14perm_broadcast:
	.long	32768
	.align 4
	.type	_ZL9perm_zext, @object
	.size	_ZL9perm_zext, 4
_ZL9perm_zext:
	.long	65536
	.align 4
	.type	_ZL13perm_compress, @object
	.size	_ZL13perm_compress, 4
_ZL13perm_compress:
	.long	131072
	.align 4
	.type	_ZL11perm_expand, @object
	.size	_ZL11perm_expand, 4
_ZL11perm_expand:
	.long	262144
	.align 4
	.type	_ZL15perm_outofrange, @object
	.size	_ZL15perm_outofrange, 4
_ZL15perm_outofrange:
	.long	268435456
	.align 4
	.type	_ZL14perm_rot_count, @object
	.size	_ZL14perm_rot_count, 4
_ZL14perm_rot_count:
	.long	32
	.align 4
	.type	_ZL13perm_ipattern, @object
	.size	_ZL13perm_ipattern, 4
_ZL13perm_ipattern:
	.long	40
	.align 4
	.type	_ZL13blend_zeroing, @object
	.size	_ZL13blend_zeroing, 4
_ZL13blend_zeroing:
	.long	1
	.align 4
	.type	_ZL13blend_allzero, @object
	.size	_ZL13blend_allzero, 4
_ZL13blend_allzero:
	.long	2
	.align 4
	.type	_ZL16blend_largeblock, @object
	.size	_ZL16blend_largeblock, 4
_ZL16blend_largeblock:
	.long	4
	.align 4
	.type	_ZL10blend_addz, @object
	.size	_ZL10blend_addz, 4
_ZL10blend_addz:
	.long	8
	.align 4
	.type	_ZL7blend_a, @object
	.size	_ZL7blend_a, 4
_ZL7blend_a:
	.long	16
	.align 4
	.type	_ZL7blend_b, @object
	.size	_ZL7blend_b, 4
_ZL7blend_b:
	.long	32
	.align 4
	.type	_ZL11blend_perma, @object
	.size	_ZL11blend_perma, 4
_ZL11blend_perma:
	.long	64
	.align 4
	.type	_ZL11blend_permb, @object
	.size	_ZL11blend_permb, 4
_ZL11blend_permb:
	.long	128
	.align 4
	.type	_ZL16blend_cross_lane, @object
	.size	_ZL16blend_cross_lane, 4
_ZL16blend_cross_lane:
	.long	256
	.align 4
	.type	_ZL18blend_same_pattern, @object
	.size	_ZL18blend_same_pattern, 4
_ZL18blend_same_pattern:
	.long	512
	.align 4
	.type	_ZL15blend_punpckhab, @object
	.size	_ZL15blend_punpckhab, 4
_ZL15blend_punpckhab:
	.long	4096
	.align 4
	.type	_ZL15blend_punpckhba, @object
	.size	_ZL15blend_punpckhba, 4
_ZL15blend_punpckhba:
	.long	8192
	.align 4
	.type	_ZL15blend_punpcklab, @object
	.size	_ZL15blend_punpcklab, 4
_ZL15blend_punpcklab:
	.long	16384
	.align 4
	.type	_ZL15blend_punpcklba, @object
	.size	_ZL15blend_punpcklba, 4
_ZL15blend_punpcklba:
	.long	32768
	.align 4
	.type	_ZL14blend_rotateab, @object
	.size	_ZL14blend_rotateab, 4
_ZL14blend_rotateab:
	.long	65536
	.align 4
	.type	_ZL14blend_rotateba, @object
	.size	_ZL14blend_rotateba, 4
_ZL14blend_rotateba:
	.long	131072
	.align 4
	.type	_ZL12blend_shufab, @object
	.size	_ZL12blend_shufab, 4
_ZL12blend_shufab:
	.long	262144
	.align 4
	.type	_ZL12blend_shufba, @object
	.size	_ZL12blend_shufba, 4
_ZL12blend_shufba:
	.long	524288
	.align 4
	.type	_ZL16blend_rotate_big, @object
	.size	_ZL16blend_rotate_big, 4
_ZL16blend_rotate_big:
	.long	1048576
	.align 4
	.type	_ZL16blend_outofrange, @object
	.size	_ZL16blend_outofrange, 4
_ZL16blend_outofrange:
	.long	268435456
	.align 4
	.type	_ZL17blend_shufpattern, @object
	.size	_ZL17blend_shufpattern, 4
_ZL17blend_shufpattern:
	.long	32
	.align 4
	.type	_ZL16blend_rotpattern, @object
	.size	_ZL16blend_rotpattern, 4
_ZL16blend_rotpattern:
	.long	40
	.text
	.type	_ZL7selectfDv4_fS_S_, @function
_ZL7selectfDv4_fS_S_:
.LFB9459:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movaps	%xmm0, -112(%rbp)
	movaps	%xmm1, -128(%rbp)
	movaps	%xmm2, -144(%rbp)
	movaps	-112(%rbp), %xmm0
	movaps	%xmm0, -32(%rbp)
	movaps	-144(%rbp), %xmm0
	movaps	%xmm0, -16(%rbp)
	movaps	-32(%rbp), %xmm0
	andnps	-16(%rbp), %xmm0
	nop
	movaps	-112(%rbp), %xmm1
	movaps	%xmm1, -64(%rbp)
	movaps	-128(%rbp), %xmm1
	movaps	%xmm1, -48(%rbp)
	movaps	-64(%rbp), %xmm1
	andps	-48(%rbp), %xmm1
	nop
	movaps	%xmm1, -96(%rbp)
	movaps	%xmm0, -80(%rbp)
	movaps	-96(%rbp), %xmm0
	orps	-80(%rbp), %xmm0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9459:
	.size	_ZL7selectfDv4_fS_S_, .-_ZL7selectfDv4_fS_S_
	.section	.text._ZN6Vec4fbC2EDv4_f,"axG",@progbits,_ZN6Vec4fbC5EDv4_f,comdat
	.align 2
	.weak	_ZN6Vec4fbC2EDv4_f
	.type	_ZN6Vec4fbC2EDv4_f, @function
_ZN6Vec4fbC2EDv4_f:
.LFB9465:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movaps	%xmm0, -32(%rbp)
	movq	-8(%rbp), %rax
	movaps	-32(%rbp), %xmm0
	movaps	%xmm0, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9465:
	.size	_ZN6Vec4fbC2EDv4_f, .-_ZN6Vec4fbC2EDv4_f
	.weak	_ZN6Vec4fbC1EDv4_f
	.set	_ZN6Vec4fbC1EDv4_f,_ZN6Vec4fbC2EDv4_f
	.section	.text._ZNK6Vec4fbcvDv4_fEv,"axG",@progbits,_ZNK6Vec4fbcvDv4_fEv,comdat
	.align 2
	.weak	_ZNK6Vec4fbcvDv4_fEv
	.type	_ZNK6Vec4fbcvDv4_fEv, @function
_ZNK6Vec4fbcvDv4_fEv:
.LFB9476:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movaps	(%rax), %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9476:
	.size	_ZNK6Vec4fbcvDv4_fEv, .-_ZNK6Vec4fbcvDv4_fEv
	.section	.text._ZN5Vec4fC2EDv4_f,"axG",@progbits,_ZN5Vec4fC5EDv4_f,comdat
	.align 2
	.weak	_ZN5Vec4fC2EDv4_f
	.type	_ZN5Vec4fC2EDv4_f, @function
_ZN5Vec4fC2EDv4_f:
.LFB9544:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movaps	%xmm0, -32(%rbp)
	movq	-8(%rbp), %rax
	movaps	-32(%rbp), %xmm0
	movaps	%xmm0, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9544:
	.size	_ZN5Vec4fC2EDv4_f, .-_ZN5Vec4fC2EDv4_f
	.weak	_ZN5Vec4fC1EDv4_f
	.set	_ZN5Vec4fC1EDv4_f,_ZN5Vec4fC2EDv4_f
	.section	.text._ZNK5Vec4fcvDv4_fEv,"axG",@progbits,_ZNK5Vec4fcvDv4_fEv,comdat
	.align 2
	.weak	_ZNK5Vec4fcvDv4_fEv
	.type	_ZNK5Vec4fcvDv4_fEv, @function
_ZNK5Vec4fcvDv4_fEv:
.LFB9547:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movaps	(%rax), %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9547:
	.size	_ZNK5Vec4fcvDv4_fEv, .-_ZNK5Vec4fcvDv4_fEv
	.text
	.type	_Zpl5Vec4fS_, @function
_Zpl5Vec4fS_:
.LFB9561:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movaps	%xmm0, -80(%rbp)
	movaps	%xmm1, -96(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Vec4fcvDv4_fEv
	movaps	%xmm0, -112(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Vec4fcvDv4_fEv
	movaps	%xmm0, -48(%rbp)
	movaps	-112(%rbp), %xmm2
	movaps	%xmm2, -32(%rbp)
	movaps	-48(%rbp), %xmm0
	addps	-32(%rbp), %xmm0
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Vec4fC1EDv4_f
	movaps	-64(%rbp), %xmm0
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L31
	call	__stack_chk_fail@PLT
.L31:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9561:
	.size	_Zpl5Vec4fS_, .-_Zpl5Vec4fS_
	.type	_Zlt5Vec4fS_, @function
_Zlt5Vec4fS_:
.LFB9584:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movaps	%xmm0, -80(%rbp)
	movaps	%xmm1, -96(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Vec4fcvDv4_fEv
	movaps	%xmm0, -112(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Vec4fcvDv4_fEv
	movaps	%xmm0, -48(%rbp)
	movaps	-112(%rbp), %xmm2
	movaps	%xmm2, -32(%rbp)
	movaps	-48(%rbp), %xmm0
	cmpltps	-32(%rbp), %xmm0
	nop
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN6Vec4fbC1EDv4_f
	movaps	-64(%rbp), %xmm0
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L35
	call	__stack_chk_fail@PLT
.L35:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9584:
	.size	_Zlt5Vec4fS_, .-_Zlt5Vec4fS_
	.type	_Zgt5Vec4fS_, @function
_Zgt5Vec4fS_:
.LFB9586:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movaps	%xmm0, -16(%rbp)
	movaps	%xmm1, -32(%rbp)
	movaps	-16(%rbp), %xmm1
	movaps	-32(%rbp), %xmm0
	call	_Zlt5Vec4fS_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9586:
	.size	_Zgt5Vec4fS_, .-_Zgt5Vec4fS_
	.type	_ZL6select6Vec4fb5Vec4fS0_, @function
_ZL6select6Vec4fb5Vec4fS0_:
.LFB9597:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movaps	%xmm0, -48(%rbp)
	movaps	%xmm1, -64(%rbp)
	movaps	%xmm2, -80(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Vec4fcvDv4_fEv
	movaps	%xmm0, -96(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Vec4fcvDv4_fEv
	movaps	%xmm0, -112(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK6Vec4fbcvDv4_fEv
	movaps	-96(%rbp), %xmm2
	movaps	-112(%rbp), %xmm1
	call	_ZL7selectfDv4_fS_S_
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Vec4fC1EDv4_f
	movaps	-32(%rbp), %xmm0
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L40
	call	__stack_chk_fail@PLT
.L40:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9597:
	.size	_ZL6select6Vec4fb5Vec4fS0_, .-_ZL6select6Vec4fb5Vec4fS0_
	.type	_ZL14horizontal_add5Vec4f, @function
_ZL14horizontal_add5Vec4f:
.LFB9611:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$208, %rsp
	movaps	%xmm0, -192(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Vec4fcvDv4_fEv
	movaps	%xmm0, -208(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Vec4fcvDv4_fEv
	movaps	%xmm0, -32(%rbp)
	movaps	-208(%rbp), %xmm2
	movaps	%xmm2, -16(%rbp)
	movaps	-32(%rbp), %xmm0
	movlps	-8(%rbp), %xmm0
	nop
	movaps	%xmm0, -176(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Vec4fcvDv4_fEv
	movaps	%xmm0, -64(%rbp)
	movaps	-176(%rbp), %xmm0
	movaps	%xmm0, -48(%rbp)
	movaps	-64(%rbp), %xmm0
	addps	-48(%rbp), %xmm0
	movaps	%xmm0, -160(%rbp)
	movaps	-160(%rbp), %xmm0
	movaps	-160(%rbp), %xmm1
	shufps	$1, %xmm1, %xmm0
	movaps	%xmm0, -144(%rbp)
	movaps	-160(%rbp), %xmm0
	movaps	%xmm0, -96(%rbp)
	movaps	-144(%rbp), %xmm0
	movaps	%xmm0, -80(%rbp)
	movaps	-96(%rbp), %xmm0
	addss	-80(%rbp), %xmm0
	nop
	movaps	%xmm0, -128(%rbp)
	movaps	-128(%rbp), %xmm0
	movaps	%xmm0, -112(%rbp)
	movaps	-112(%rbp), %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9611:
	.size	_ZL14horizontal_add5Vec4f, .-_ZL14horizontal_add5Vec4f
	.type	_ZL4sqrt5Vec4f, @function
_ZL4sqrt5Vec4f:
.LFB9615:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movaps	%xmm0, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Vec4fcvDv4_fEv
	movaps	%xmm0, -32(%rbp)
	sqrtps	-32(%rbp), %xmm0
	nop
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Vec4fC1EDv4_f
	movaps	-48(%rbp), %xmm0
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L50
	call	__stack_chk_fail@PLT
.L50:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9615:
	.size	_ZL4sqrt5Vec4f, .-_ZL4sqrt5Vec4f
	.section	.text._ZN6Vec8fbC2E6Vec4fbS0_,"axG",@progbits,_ZN6Vec8fbC5E6Vec4fbS0_,comdat
	.align 2
	.weak	_ZN6Vec8fbC2E6Vec4fbS0_
	.type	_ZN6Vec8fbC2E6Vec4fbS0_, @function
_ZN6Vec8fbC2E6Vec4fbS0_:
.LFB10538:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movaps	%xmm0, -32(%rbp)
	movaps	%xmm1, -48(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK6Vec4fbcvDv4_fEv
	movq	-8(%rbp), %rax
	movaps	%xmm0, (%rax)
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK6Vec4fbcvDv4_fEv
	movq	-8(%rbp), %rax
	movaps	%xmm0, 16(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10538:
	.size	_ZN6Vec8fbC2E6Vec4fbS0_, .-_ZN6Vec8fbC2E6Vec4fbS0_
	.weak	_ZN6Vec8fbC1E6Vec4fbS0_
	.set	_ZN6Vec8fbC1E6Vec4fbS0_,_ZN6Vec8fbC2E6Vec4fbS0_
	.section	.text._ZNK6Vec8fb7get_lowEv,"axG",@progbits,_ZNK6Vec8fb7get_lowEv,comdat
	.align 2
	.weak	_ZNK6Vec8fb7get_lowEv
	.type	_ZNK6Vec8fb7get_lowEv, @function
_ZNK6Vec8fb7get_lowEv:
.LFB10556:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	movaps	(%rax), %xmm0
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN6Vec4fbC1EDv4_f
	movaps	-32(%rbp), %xmm0
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L54
	call	__stack_chk_fail@PLT
.L54:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10556:
	.size	_ZNK6Vec8fb7get_lowEv, .-_ZNK6Vec8fb7get_lowEv
	.section	.text._ZNK6Vec8fb8get_highEv,"axG",@progbits,_ZNK6Vec8fb8get_highEv,comdat
	.align 2
	.weak	_ZNK6Vec8fb8get_highEv
	.type	_ZNK6Vec8fb8get_highEv, @function
_ZNK6Vec8fb8get_highEv:
.LFB10557:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	movaps	16(%rax), %xmm0
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN6Vec4fbC1EDv4_f
	movaps	-32(%rbp), %xmm0
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L57
	call	__stack_chk_fail@PLT
.L57:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10557:
	.size	_ZNK6Vec8fb8get_highEv, .-_ZNK6Vec8fb8get_highEv
	.section	.text._ZN5Vec8fC2Ef,"axG",@progbits,_ZN5Vec8fC5Ef,comdat
	.align 2
	.weak	_ZN5Vec8fC2Ef
	.type	_ZN5Vec8fC2Ef, @function
_ZN5Vec8fC2Ef:
.LFB10619:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movss	%xmm0, -28(%rbp)
	movss	-28(%rbp), %xmm0
	movss	%xmm0, -4(%rbp)
	movss	-4(%rbp), %xmm0
	shufps	$0, %xmm0, %xmm0
	movq	-24(%rbp), %rax
	movaps	%xmm0, (%rax)
	movq	-24(%rbp), %rax
	movaps	(%rax), %xmm0
	movq	-24(%rbp), %rax
	movaps	%xmm0, 16(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10619:
	.size	_ZN5Vec8fC2Ef, .-_ZN5Vec8fC2Ef
	.weak	_ZN5Vec8fC1Ef
	.set	_ZN5Vec8fC1Ef,_ZN5Vec8fC2Ef
	.section	.text._ZN5Vec8fC2Effffffff,"axG",@progbits,_ZN5Vec8fC5Effffffff,comdat
	.align 2
	.weak	_ZN5Vec8fC2Effffffff
	.type	_ZN5Vec8fC2Effffffff, @function
_ZN5Vec8fC2Effffffff:
.LFB10622:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movss	%xmm0, -44(%rbp)
	movss	%xmm1, -48(%rbp)
	movss	%xmm2, -52(%rbp)
	movss	%xmm3, -56(%rbp)
	movss	%xmm4, -60(%rbp)
	movss	%xmm5, -64(%rbp)
	movss	%xmm6, -68(%rbp)
	movss	%xmm7, -72(%rbp)
	movss	-44(%rbp), %xmm0
	movss	%xmm0, -16(%rbp)
	movss	-48(%rbp), %xmm0
	movss	%xmm0, -12(%rbp)
	movss	-52(%rbp), %xmm0
	movss	%xmm0, -8(%rbp)
	movss	-56(%rbp), %xmm0
	movss	%xmm0, -4(%rbp)
	movss	-4(%rbp), %xmm0
	movss	-8(%rbp), %xmm1
	movaps	%xmm1, %xmm2
	unpcklps	%xmm0, %xmm2
	movss	-12(%rbp), %xmm1
	movss	-16(%rbp), %xmm0
	unpcklps	%xmm1, %xmm0
	movlhps	%xmm2, %xmm0
	movq	-40(%rbp), %rax
	movaps	%xmm0, (%rax)
	movss	-60(%rbp), %xmm0
	movss	%xmm0, -32(%rbp)
	movss	-64(%rbp), %xmm0
	movss	%xmm0, -28(%rbp)
	movss	-68(%rbp), %xmm0
	movss	%xmm0, -24(%rbp)
	movss	-72(%rbp), %xmm0
	movss	%xmm0, -20(%rbp)
	movss	-20(%rbp), %xmm0
	movss	-24(%rbp), %xmm1
	movaps	%xmm1, %xmm2
	unpcklps	%xmm0, %xmm2
	movss	-28(%rbp), %xmm1
	movss	-32(%rbp), %xmm0
	unpcklps	%xmm1, %xmm0
	movlhps	%xmm2, %xmm0
	movq	-40(%rbp), %rax
	movaps	%xmm0, 16(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10622:
	.size	_ZN5Vec8fC2Effffffff, .-_ZN5Vec8fC2Effffffff
	.weak	_ZN5Vec8fC1Effffffff
	.set	_ZN5Vec8fC1Effffffff,_ZN5Vec8fC2Effffffff
	.section	.text._ZN5Vec8fC2E5Vec4fS0_,"axG",@progbits,_ZN5Vec8fC5E5Vec4fS0_,comdat
	.align 2
	.weak	_ZN5Vec8fC2E5Vec4fS0_
	.type	_ZN5Vec8fC2E5Vec4fS0_, @function
_ZN5Vec8fC2E5Vec4fS0_:
.LFB10625:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movaps	%xmm0, -32(%rbp)
	movaps	%xmm1, -48(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Vec4fcvDv4_fEv
	movq	-8(%rbp), %rax
	movaps	%xmm0, (%rax)
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Vec4fcvDv4_fEv
	movq	-8(%rbp), %rax
	movaps	%xmm0, 16(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10625:
	.size	_ZN5Vec8fC2E5Vec4fS0_, .-_ZN5Vec8fC2E5Vec4fS0_
	.weak	_ZN5Vec8fC1E5Vec4fS0_
	.set	_ZN5Vec8fC1E5Vec4fS0_,_ZN5Vec8fC2E5Vec4fS0_
	.section	.text._ZNK5Vec8f7get_lowEv,"axG",@progbits,_ZNK5Vec8f7get_lowEv,comdat
	.align 2
	.weak	_ZNK5Vec8f7get_lowEv
	.type	_ZNK5Vec8f7get_lowEv, @function
_ZNK5Vec8f7get_lowEv:
.LFB10642:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	movaps	(%rax), %xmm0
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Vec4fC1EDv4_f
	movaps	-32(%rbp), %xmm0
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L66
	call	__stack_chk_fail@PLT
.L66:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10642:
	.size	_ZNK5Vec8f7get_lowEv, .-_ZNK5Vec8f7get_lowEv
	.section	.text._ZNK5Vec8f8get_highEv,"axG",@progbits,_ZNK5Vec8f8get_highEv,comdat
	.align 2
	.weak	_ZNK5Vec8f8get_highEv
	.type	_ZNK5Vec8f8get_highEv, @function
_ZNK5Vec8f8get_highEv:
.LFB10643:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	movaps	16(%rax), %xmm0
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Vec4fC1EDv4_f
	movaps	-32(%rbp), %xmm0
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L69
	call	__stack_chk_fail@PLT
.L69:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10643:
	.size	_ZNK5Vec8f8get_highEv, .-_ZNK5Vec8f8get_highEv
	.text
	.type	_Zpl5Vec8fS_, @function
_Zpl5Vec8fS_:
.LFB10646:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	leaq	48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Vec8f8get_highEv
	movaps	%xmm0, -32(%rbp)
	leaq	16(%rbp), %rdi
	call	_ZNK5Vec8f8get_highEv
	movaps	-32(%rbp), %xmm1
	call	_Zpl5Vec4fS_
	movaps	%xmm0, -48(%rbp)
	leaq	48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Vec8f7get_lowEv
	movaps	%xmm0, -32(%rbp)
	leaq	16(%rbp), %rdi
	call	_ZNK5Vec8f7get_lowEv
	movaps	-32(%rbp), %xmm1
	call	_Zpl5Vec4fS_
	movq	-8(%rbp), %rax
	movaps	-48(%rbp), %xmm1
	movq	%rax, %rdi
	call	_ZN5Vec8fC1E5Vec4fS0_
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10646:
	.size	_Zpl5Vec8fS_, .-_Zpl5Vec8fS_
	.type	_ZpLR5Vec8fS_, @function
_ZpLR5Vec8fS_:
.LFB10649:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rbx
	leaq	-80(%rbp), %rdx
	pushq	40(%rbp)
	pushq	32(%rbp)
	pushq	24(%rbp)
	pushq	16(%rbp)
	movq	-40(%rbp), %rax
	pushq	24(%rax)
	pushq	16(%rax)
	pushq	8(%rax)
	pushq	(%rax)
	movq	%rdx, %rdi
	call	_Zpl5Vec8fS_
	addq	$64, %rsp
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L74
	call	__stack_chk_fail@PLT
.L74:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10649:
	.size	_ZpLR5Vec8fS_, .-_ZpLR5Vec8fS_
	.type	_Zgt5Vec8fS_, @function
_Zgt5Vec8fS_:
.LFB10671:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	leaq	48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Vec8f8get_highEv
	movaps	%xmm0, -32(%rbp)
	leaq	16(%rbp), %rdi
	call	_ZNK5Vec8f8get_highEv
	movaps	-32(%rbp), %xmm1
	call	_Zgt5Vec4fS_
	movaps	%xmm0, -48(%rbp)
	leaq	48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Vec8f7get_lowEv
	movaps	%xmm0, -32(%rbp)
	leaq	16(%rbp), %rdi
	call	_ZNK5Vec8f7get_lowEv
	movaps	-32(%rbp), %xmm1
	call	_Zgt5Vec4fS_
	movq	-8(%rbp), %rax
	movaps	-48(%rbp), %xmm1
	movq	%rax, %rdi
	call	_ZN6Vec8fbC1E6Vec4fbS0_
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10671:
	.size	_Zgt5Vec8fS_, .-_Zgt5Vec8fS_
	.type	_ZL6select6Vec8fb5Vec8fS0_, @function
_ZL6select6Vec8fb5Vec8fS0_:
.LFB10682:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	leaq	80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Vec8f8get_highEv
	movaps	%xmm0, -48(%rbp)
	leaq	48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Vec8f8get_highEv
	movaps	%xmm0, -32(%rbp)
	leaq	16(%rbp), %rdi
	call	_ZNK6Vec8fb8get_highEv
	movaps	-48(%rbp), %xmm2
	movaps	-32(%rbp), %xmm1
	call	_ZL6select6Vec4fb5Vec4fS0_
	movaps	%xmm0, -64(%rbp)
	leaq	80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Vec8f7get_lowEv
	movaps	%xmm0, -48(%rbp)
	leaq	48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Vec8f7get_lowEv
	movaps	%xmm0, -32(%rbp)
	leaq	16(%rbp), %rdi
	call	_ZNK6Vec8fb7get_lowEv
	movaps	-48(%rbp), %xmm2
	movaps	-32(%rbp), %xmm1
	call	_ZL6select6Vec4fb5Vec4fS0_
	movq	-8(%rbp), %rax
	movaps	-64(%rbp), %xmm1
	movq	%rax, %rdi
	call	_ZN5Vec8fC1E5Vec4fS0_
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10682:
	.size	_ZL6select6Vec8fb5Vec8fS0_, .-_ZL6select6Vec8fb5Vec8fS0_
	.type	_ZL14horizontal_add5Vec8f, @function
_ZL14horizontal_add5Vec8f:
.LFB10687:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	16(%rbp), %rdi
	call	_ZNK5Vec8f8get_highEv
	movaps	%xmm0, -16(%rbp)
	leaq	16(%rbp), %rdi
	call	_ZNK5Vec8f7get_lowEv
	movaps	-16(%rbp), %xmm1
	call	_Zpl5Vec4fS_
	call	_ZL14horizontal_add5Vec4f
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10687:
	.size	_ZL14horizontal_add5Vec8f, .-_ZL14horizontal_add5Vec8f
	.type	_ZL4sqrt5Vec8f, @function
_ZL4sqrt5Vec8f:
.LFB10691:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	leaq	16(%rbp), %rdi
	call	_ZNK5Vec8f8get_highEv
	call	_ZL4sqrt5Vec4f
	movaps	%xmm0, -32(%rbp)
	leaq	16(%rbp), %rdi
	call	_ZNK5Vec8f7get_lowEv
	call	_ZL4sqrt5Vec4f
	movq	-8(%rbp), %rax
	movaps	-32(%rbp), %xmm1
	movq	%rax, %rdi
	call	_ZN5Vec8fC1E5Vec4fS0_
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10691:
	.size	_ZL4sqrt5Vec8f, .-_ZL4sqrt5Vec8f
	.section	.text._ZSt4sqrtf,"axG",@progbits,_ZSt4sqrtf,comdat
	.weak	_ZSt4sqrtf
	.type	_ZSt4sqrtf, @function
_ZSt4sqrtf:
.LFB12060:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movss	%xmm0, -4(%rbp)
	movl	-4(%rbp), %eax
	movd	%eax, %xmm0
	call	sqrtf@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12060:
	.size	_ZSt4sqrtf, .-_ZSt4sqrtf
	.section	.rodata
	.align 4
	.type	_ZN9__gnu_cxxL21__default_lock_policyE, @object
	.size	_ZN9__gnu_cxxL21__default_lock_policyE, 4
_ZN9__gnu_cxxL21__default_lock_policyE:
	.long	2
	.align 8
	.type	_ZN6__pstl15__unseq_backendL11__lane_sizeE, @object
	.size	_ZN6__pstl15__unseq_backendL11__lane_sizeE, 8
_ZN6__pstl15__unseq_backendL11__lane_sizeE:
	.quad	64
	.align 8
	.type	_ZN3tbb6detail2d0L12max_nfs_sizeE, @object
	.size	_ZN3tbb6detail2d0L12max_nfs_sizeE, 8
_ZN3tbb6detail2d0L12max_nfs_sizeE:
	.quad	128
	.align 8
	.type	_ZN3tbb6detail2d0L16max_nfs_size_expE, @object
	.size	_ZN3tbb6detail2d0L16max_nfs_size_expE, 8
_ZN3tbb6detail2d0L16max_nfs_size_expE:
	.quad	7
	.align 2
	.type	_ZN3tbb6detail2d1L7no_slotE, @object
	.size	_ZN3tbb6detail2d1L7no_slotE, 2
_ZN3tbb6detail2d1L7no_slotE:
	.value	-1
	.align 2
	.type	_ZN3tbb6detail2d1L8any_slotE, @object
	.size	_ZN3tbb6detail2d1L8any_slotE, 2
_ZN3tbb6detail2d1L8any_slotE:
	.value	-2
	.section	.text._ZN3tbb6detail2d113original_slotERKNS1_14execution_dataE,"axG",@progbits,_ZN3tbb6detail2d113original_slotERKNS1_14execution_dataE,comdat
	.weak	_ZN3tbb6detail2d113original_slotERKNS1_14execution_dataE
	.type	_ZN3tbb6detail2d113original_slotERKNS1_14execution_dataE, @function
_ZN3tbb6detail2d113original_slotERKNS1_14execution_dataE:
.LFB13403:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzwl	8(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13403:
	.size	_ZN3tbb6detail2d113original_slotERKNS1_14execution_dataE, .-_ZN3tbb6detail2d113original_slotERKNS1_14execution_dataE
	.section	.text._ZN3tbb6detail2d114execution_slotERKNS1_14execution_dataE,"axG",@progbits,_ZN3tbb6detail2d114execution_slotERKNS1_14execution_dataE,comdat
	.weak	_ZN3tbb6detail2d114execution_slotERKNS1_14execution_dataE
	.type	_ZN3tbb6detail2d114execution_slotERKNS1_14execution_dataE, @function
_ZN3tbb6detail2d114execution_slotERKNS1_14execution_dataE:
.LFB13405:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13405:
	.size	_ZN3tbb6detail2d114execution_slotERKNS1_14execution_dataE, .-_ZN3tbb6detail2d114execution_slotERKNS1_14execution_dataE
	.section	.rodata
	.align 8
	.type	_ZN3tbb6detail2d1L14task_alignmentE, @object
	.size	_ZN3tbb6detail2d1L14task_alignmentE, 8
_ZN3tbb6detail2d1L14task_alignmentE:
	.quad	64
	.align 4
	.type	_ZN3tbb6detail2d1L15priority_strideE, @object
	.size	_ZN3tbb6detail2d1L15priority_strideE, 4
_ZN3tbb6detail2d1L15priority_strideE:
	.long	536870911
	.section	.text._ZN3tbb6detail2d120current_thread_indexEv,"axG",@progbits,_ZN3tbb6detail2d120current_thread_indexEv,comdat
	.weak	_ZN3tbb6detail2d120current_thread_indexEv
	.type	_ZN3tbb6detail2d120current_thread_indexEv, @function
_ZN3tbb6detail2d120current_thread_indexEv:
.LFB13689:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$0, %edi
	call	_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE@PLT
	movw	%ax, -2(%rbp)
	cmpw	$-1, -2(%rbp)
	je	.L90
	movzwl	-2(%rbp), %eax
	jmp	.L92
.L90:
	movl	$-2, %eax
.L92:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13689:
	.size	_ZN3tbb6detail2d120current_thread_indexEv, .-_ZN3tbb6detail2d120current_thread_indexEv
	.text
	.type	_ZN3tbb6detail2d1L26get_initial_partition_headEv, @function
_ZN3tbb6detail2d1L26get_initial_partition_headEv:
.LFB13742:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	call	_ZN3tbb6detail2d120current_thread_indexEv
	movl	%eax, -4(%rbp)
	cmpl	$-2, -4(%rbp)
	jne	.L94
	movl	$0, -4(%rbp)
.L94:
	movl	-4(%rbp), %eax
	cltq
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13742:
	.size	_ZN3tbb6detail2d1L26get_initial_partition_headEv, .-_ZN3tbb6detail2d1L26get_initial_partition_headEv
	.type	_ZN3tbb6detail2d1L14is_stolen_taskERKNS1_14execution_dataE, @function
_ZN3tbb6detail2d1L14is_stolen_taskERKNS1_14execution_dataE:
.LFB13747:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN3tbb6detail2d114execution_slotERKNS1_14execution_dataE
	movl	%eax, %ebx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN3tbb6detail2d113original_slotERKNS1_14execution_dataE
	cmpw	%ax, %bx
	setne	%al
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13747:
	.size	_ZN3tbb6detail2d1L14is_stolen_taskERKNS1_14execution_dataE, .-_ZN3tbb6detail2d1L14is_stolen_taskERKNS1_14execution_dataE
	.section	.rodata
	.align 4
	.type	_ZN6__pstl10__internalL18__set_algo_cut_offE, @object
	.size	_ZN6__pstl10__internalL18__set_algo_cut_offE, 4
_ZN6__pstl10__internalL18__set_algo_cut_offE:
	.long	1000
	.align 4
	.type	_ZL8infinity, @object
	.size	_ZL8infinity, 4
_ZL8infinity:
	.long	2139095039
	.align 4
	.type	_ZL2pi, @object
	.size	_ZL2pi, 4
_ZL2pi:
	.long	1078530011
	.text
	.globl	_Z10XOrShift32R13random_series
	.type	_Z10XOrShift32R13random_series, @function
_Z10XOrShift32R13random_series:
.LFB14737:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	sall	$13, %eax
	xorl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	shrl	$17, %eax
	xorl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	sall	$5, %eax
	xorl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, (%rax)
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14737:
	.size	_Z10XOrShift32R13random_series, .-_Z10XOrShift32R13random_series
	.section	.text._Z12random_floatR13random_series,"axG",@progbits,_Z12random_floatR13random_series,comdat
	.weak	_Z12random_floatR13random_series
	.type	_Z12random_floatR13random_series, @function
_Z12random_floatR13random_series:
.LFB14738:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_Z10XOrShift32R13random_series
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L101
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rax, %xmm0
	jmp	.L102
.L101:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L102:
	movss	.LC0(%rip), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	movss	-4(%rbp), %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14738:
	.size	_Z12random_floatR13random_series, .-_Z12random_floatR13random_series
	.section	.text._Z12random_floatR13random_seriesff,"axG",@progbits,_Z12random_floatR13random_seriesff,comdat
	.weak	_Z12random_floatR13random_seriesff
	.type	_Z12random_floatR13random_seriesff, @function
_Z12random_floatR13random_seriesff:
.LFB14739:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movss	%xmm0, -12(%rbp)
	movss	%xmm1, -16(%rbp)
	movss	-16(%rbp), %xmm0
	subss	-12(%rbp), %xmm0
	movss	%xmm0, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_Z12random_floatR13random_series
	mulss	-20(%rbp), %xmm0
	addss	-12(%rbp), %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14739:
	.size	_Z12random_floatR13random_seriesff, .-_Z12random_floatR13random_seriesff
	.section	.text._ZN5boost10stacktrace6detail15unwind_callbackEP15_Unwind_ContextPv,"axG",@progbits,_ZN5boost10stacktrace6detail15unwind_callbackEP15_Unwind_ContextPv,comdat
	.weak	_ZN5boost10stacktrace6detail15unwind_callbackEP15_Unwind_ContextPv
	.type	_ZN5boost10stacktrace6detail15unwind_callbackEP15_Unwind_ContextPv, @function
_ZN5boost10stacktrace6detail15unwind_callbackEP15_Unwind_ContextPv:
.LFB14751:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L107
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	-1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_Unwind_GetIP@PLT
	testq	%rax, %rax
	je	.L108
	movl	$0, %eax
	jmp	.L110
.L108:
	movl	$5, %eax
	jmp	.L110
.L107:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_Unwind_GetIP@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$8, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L111
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L112
.L111:
	movl	$5, %eax
	jmp	.L110
.L112:
	movl	$0, %eax
.L110:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14751:
	.size	_ZN5boost10stacktrace6detail15unwind_callbackEP15_Unwind_ContextPv, .-_ZN5boost10stacktrace6detail15unwind_callbackEP15_Unwind_ContextPv
	.section	.text._ZN5boost10stacktrace6detail18this_thread_frames7collectEPPKvmm,"axG",@progbits,_ZN5boost10stacktrace6detail18this_thread_frames7collectEPPKvmm,comdat
	.align 2
	.weak	_ZN5boost10stacktrace6detail18this_thread_frames7collectEPPKvmm
	.type	_ZN5boost10stacktrace6detail18this_thread_frames7collectEPPKvmm, @function
_ZN5boost10stacktrace6detail18this_thread_frames7collectEPPKvmm:
.LFB14752:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA14752
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	$0, -40(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L114
	movq	-40(%rbp), %rax
	jmp	.L117
.L114:
	addq	$1, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-64(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	_ZN5boost10stacktrace6detail15unwind_callbackEP15_Unwind_ContextPv(%rip), %rax
	movq	%rax, %rdi
	call	_Unwind_Backtrace@PLT
	movq	-24(%rbp), %rax
	subq	-56(%rbp), %rax
	sarq	$3, %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L116
	movq	-40(%rbp), %rax
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L116
	subq	$1, -40(%rbp)
.L116:
	movq	-40(%rbp), %rax
.L117:
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L118
	call	__stack_chk_fail@PLT
.L118:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14752:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._ZN5boost10stacktrace6detail18this_thread_frames7collectEPPKvmm,"aG",@progbits,_ZN5boost10stacktrace6detail18this_thread_frames7collectEPPKvmm,comdat
.LLSDA14752:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE14752-.LLSDACSB14752
.LLSDACSB14752:
.LLSDACSE14752:
	.section	.text._ZN5boost10stacktrace6detail18this_thread_frames7collectEPPKvmm,"axG",@progbits,_ZN5boost10stacktrace6detail18this_thread_frames7collectEPPKvmm,comdat
	.size	_ZN5boost10stacktrace6detail18this_thread_frames7collectEPPKvmm, .-_ZN5boost10stacktrace6detail18this_thread_frames7collectEPPKvmm
	.section	.text._ZN5boost10stacktrace5frameC2EPKv,"axG",@progbits,_ZN5boost10stacktrace5frameC5EPKv,comdat
	.align 2
	.weak	_ZN5boost10stacktrace5frameC2EPKv
	.type	_ZN5boost10stacktrace5frameC2EPKv, @function
_ZN5boost10stacktrace5frameC2EPKv:
.LFB14762:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14762:
	.size	_ZN5boost10stacktrace5frameC2EPKv, .-_ZN5boost10stacktrace5frameC2EPKv
	.weak	_ZN5boost10stacktrace5frameC1EPKv
	.set	_ZN5boost10stacktrace5frameC1EPKv,_ZN5boost10stacktrace5frameC2EPKv
	.section	.text._ZNK5boost10stacktrace5frame7addressEv,"axG",@progbits,_ZNK5boost10stacktrace5frame7addressEv,comdat
	.align 2
	.weak	_ZNK5boost10stacktrace5frame7addressEv
	.type	_ZNK5boost10stacktrace5frame7addressEv, @function
_ZNK5boost10stacktrace5frame7addressEv:
.LFB14765:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14765:
	.size	_ZNK5boost10stacktrace5frame7addressEv, .-_ZNK5boost10stacktrace5frame7addressEv
	.section	.rodata
	.align 16
	.type	_ZN5boost10stacktrace6detailL18to_hex_array_bytesE, @object
	.size	_ZN5boost10stacktrace6detailL18to_hex_array_bytesE, 17
_ZN5boost10stacktrace6detailL18to_hex_array_bytesE:
	.string	"0123456789ABCDEF"
	.section	.text._ZN5boost10stacktrace6detail12to_hex_arrayEPKv,"axG",@progbits,_ZN5boost10stacktrace6detail12to_hex_arrayEPKv,comdat
	.weak	_ZN5boost10stacktrace6detail12to_hex_arrayEPKv
	.type	_ZN5boost10stacktrace6detail12to_hex_arrayEPKv, @function
_ZN5boost10stacktrace6detail12to_hex_arrayEPKv:
.LFB14924:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5boost10stacktrace6detail12to_hex_arrayImEENS_5arrayIcLm19EEET_
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L124
	call	__stack_chk_fail@PLT
.L124:
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14924:
	.size	_ZN5boost10stacktrace6detail12to_hex_arrayEPKv, .-_ZN5boost10stacktrace6detail12to_hex_arrayEPKv
	.section	.text._ZN5boost10stacktrace6detail20location_from_symbolC2EPKv,"axG",@progbits,_ZN5boost10stacktrace6detail20location_from_symbolC5EPKv,comdat
	.align 2
	.weak	_ZN5boost10stacktrace6detail20location_from_symbolC2EPKv
	.type	_ZN5boost10stacktrace6detail20location_from_symbolC2EPKv, @function
_ZN5boost10stacktrace6detail20location_from_symbolC2EPKv:
.LFB14926:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	dladdr@PLT
	testl	%eax, %eax
	sete	%al
	testb	%al, %al
	je	.L127
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
.L127:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14926:
	.size	_ZN5boost10stacktrace6detail20location_from_symbolC2EPKv, .-_ZN5boost10stacktrace6detail20location_from_symbolC2EPKv
	.weak	_ZN5boost10stacktrace6detail20location_from_symbolC1EPKv
	.set	_ZN5boost10stacktrace6detail20location_from_symbolC1EPKv,_ZN5boost10stacktrace6detail20location_from_symbolC2EPKv
	.section	.text._ZNK5boost10stacktrace6detail20location_from_symbol5emptyEv,"axG",@progbits,_ZNK5boost10stacktrace6detail20location_from_symbol5emptyEv,comdat
	.align 2
	.weak	_ZNK5boost10stacktrace6detail20location_from_symbol5emptyEv
	.type	_ZNK5boost10stacktrace6detail20location_from_symbol5emptyEv, @function
_ZNK5boost10stacktrace6detail20location_from_symbol5emptyEv:
.LFB14928:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14928:
	.size	_ZNK5boost10stacktrace6detail20location_from_symbol5emptyEv, .-_ZNK5boost10stacktrace6detail20location_from_symbol5emptyEv
	.section	.text._ZNK5boost10stacktrace6detail20location_from_symbol4nameEv,"axG",@progbits,_ZNK5boost10stacktrace6detail20location_from_symbol4nameEv,comdat
	.align 2
	.weak	_ZNK5boost10stacktrace6detail20location_from_symbol4nameEv
	.type	_ZNK5boost10stacktrace6detail20location_from_symbol4nameEv, @function
_ZNK5boost10stacktrace6detail20location_from_symbol4nameEv:
.LFB14929:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14929:
	.size	_ZNK5boost10stacktrace6detail20location_from_symbol4nameEv, .-_ZNK5boost10stacktrace6detail20location_from_symbol4nameEv
	.section	.text._ZN5boost10stacktrace6detail12to_dec_arrayEm,"axG",@progbits,_ZN5boost10stacktrace6detail12to_dec_arrayEm,comdat
	.weak	_ZN5boost10stacktrace6detail12to_dec_arrayEm
	.type	_ZN5boost10stacktrace6detail12to_dec_arrayEm, @function
_ZN5boost10stacktrace6detail12to_dec_arrayEm:
.LFB14931:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L133
	movq	-56(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZN5boost5arrayIcLm40EEixEm
	movb	$48, (%rax)
	movq	-56(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZN5boost5arrayIcLm40EEixEm
	movb	$0, (%rax)
	jmp	.L134
.L133:
	movq	$0, -40(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L135
.L136:
	addq	$1, -40(%rbp)
	movq	-32(%rbp), %rax
	movabsq	$-3689348814741910323, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	movq	%rax, -32(%rbp)
.L135:
	cmpq	$0, -32(%rbp)
	jne	.L136
	movq	$1, -24(%rbp)
	jmp	.L137
.L138:
	movq	-64(%rbp), %rcx
	movabsq	$-3689348814741910323, %rdx
	movq	%rcx, %rax
	mulq	%rdx
	shrq	$3, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	subq	%rax, %rcx
	movq	%rcx, %rdx
	movl	%edx, %eax
	addl	$48, %eax
	movl	%eax, %ebx
	movq	-40(%rbp), %rax
	subq	-24(%rbp), %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5boost5arrayIcLm40EEixEm
	movb	%bl, (%rax)
	movq	-64(%rbp), %rax
	movabsq	$-3689348814741910323, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	movq	%rax, -64(%rbp)
	addq	$1, -24(%rbp)
.L137:
	movq	-24(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jbe	.L138
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5boost5arrayIcLm40EEixEm
	movb	$0, (%rax)
	nop
.L134:
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14931:
	.size	_ZN5boost10stacktrace6detail12to_dec_arrayEm, .-_ZN5boost10stacktrace6detail12to_dec_arrayEm
	.section	.text._ZN5boost4core21scoped_demangled_nameC2EPKc,"axG",@progbits,_ZN5boost4core21scoped_demangled_nameC5EPKc,comdat
	.align 2
	.weak	_ZN5boost4core21scoped_demangled_nameC2EPKc
	.type	_ZN5boost4core21scoped_demangled_nameC2EPKc, @function
_ZN5boost4core21scoped_demangled_nameC2EPKc:
.LFB14967:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5boost4core14demangle_allocEPKc
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14967:
	.size	_ZN5boost4core21scoped_demangled_nameC2EPKc, .-_ZN5boost4core21scoped_demangled_nameC2EPKc
	.weak	_ZN5boost4core21scoped_demangled_nameC1EPKc
	.set	_ZN5boost4core21scoped_demangled_nameC1EPKc,_ZN5boost4core21scoped_demangled_nameC2EPKc
	.section	.text._ZN5boost4core21scoped_demangled_nameD2Ev,"axG",@progbits,_ZN5boost4core21scoped_demangled_nameD5Ev,comdat
	.align 2
	.weak	_ZN5boost4core21scoped_demangled_nameD2Ev
	.type	_ZN5boost4core21scoped_demangled_nameD2Ev, @function
_ZN5boost4core21scoped_demangled_nameD2Ev:
.LFB14970:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZN5boost4core13demangle_freeEPKc
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14970:
	.size	_ZN5boost4core21scoped_demangled_nameD2Ev, .-_ZN5boost4core21scoped_demangled_nameD2Ev
	.weak	_ZN5boost4core21scoped_demangled_nameD1Ev
	.set	_ZN5boost4core21scoped_demangled_nameD1Ev,_ZN5boost4core21scoped_demangled_nameD2Ev
	.section	.text._ZNK5boost4core21scoped_demangled_name3getEv,"axG",@progbits,_ZNK5boost4core21scoped_demangled_name3getEv,comdat
	.align 2
	.weak	_ZNK5boost4core21scoped_demangled_name3getEv
	.type	_ZNK5boost4core21scoped_demangled_name3getEv, @function
_ZNK5boost4core21scoped_demangled_name3getEv:
.LFB14972:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14972:
	.size	_ZNK5boost4core21scoped_demangled_name3getEv, .-_ZNK5boost4core21scoped_demangled_name3getEv
	.section	.text._ZN5boost4core14demangle_allocEPKc,"axG",@progbits,_ZN5boost4core14demangle_allocEPKc,comdat
	.weak	_ZN5boost4core14demangle_allocEPKc
	.type	_ZN5boost4core14demangle_allocEPKc, @function
_ZN5boost4core14demangle_allocEPKc:
.LFB14973:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA14973
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -20(%rbp)
	movq	$0, -16(%rbp)
	leaq	-20(%rbp), %rcx
	leaq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	__cxa_demangle@PLT
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L145
	call	__stack_chk_fail@PLT
.L145:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14973:
	.section	.gcc_except_table._ZN5boost4core14demangle_allocEPKc,"aG",@progbits,_ZN5boost4core14demangle_allocEPKc,comdat
.LLSDA14973:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE14973-.LLSDACSB14973
.LLSDACSB14973:
.LLSDACSE14973:
	.section	.text._ZN5boost4core14demangle_allocEPKc,"axG",@progbits,_ZN5boost4core14demangle_allocEPKc,comdat
	.size	_ZN5boost4core14demangle_allocEPKc, .-_ZN5boost4core14demangle_allocEPKc
	.section	.text._ZN5boost4core13demangle_freeEPKc,"axG",@progbits,_ZN5boost4core13demangle_freeEPKc,comdat
	.weak	_ZN5boost4core13demangle_freeEPKc
	.type	_ZN5boost4core13demangle_freeEPKc, @function
_ZN5boost4core13demangle_freeEPKc:
.LFB14974:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14974:
	.size	_ZN5boost4core13demangle_freeEPKc, .-_ZN5boost4core13demangle_freeEPKc
	.section	.text._ZN5boost4core8demangleB5cxx11EPKc,"axG",@progbits,_ZN5boost4core8demangleB5cxx11EPKc,comdat
	.weak	_ZN5boost4core8demangleB5cxx11EPKc
	.type	_ZN5boost4core8demangleB5cxx11EPKc, @function
_ZN5boost4core8demangleB5cxx11EPKc:
.LFB14975:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA14975
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-64(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5boost4core21scoped_demangled_nameC1EPKc
	leaq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5boost4core21scoped_demangled_name3getEv
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	jne	.L148
	movq	-64(%rbp), %rax
	movq	%rax, -32(%rbp)
.L148:
	leaq	-41(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev@PLT
	movq	-32(%rbp), %rcx
	leaq	-41(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB0:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE0:
	leaq	-41(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	leaq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5boost4core21scoped_demangled_nameD1Ev
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L151
	jmp	.L153
.L152:
	endbr64
	movq	%rax, %rbx
	leaq	-41(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	leaq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5boost4core21scoped_demangled_nameD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB1:
	call	_Unwind_Resume@PLT
.LEHE1:
.L153:
	call	__stack_chk_fail@PLT
.L151:
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14975:
	.section	.gcc_except_table._ZN5boost4core8demangleB5cxx11EPKc,"aG",@progbits,_ZN5boost4core8demangleB5cxx11EPKc,comdat
.LLSDA14975:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE14975-.LLSDACSB14975
.LLSDACSB14975:
	.uleb128 .LEHB0-.LFB14975
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L152-.LFB14975
	.uleb128 0
	.uleb128 .LEHB1-.LFB14975
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE14975:
	.section	.text._ZN5boost4core8demangleB5cxx11EPKc,"axG",@progbits,_ZN5boost4core8demangleB5cxx11EPKc,comdat
	.size	_ZN5boost4core8demangleB5cxx11EPKc, .-_ZN5boost4core8demangleB5cxx11EPKc
	.section	.text._ZN5boost10stacktrace6detail23to_string_using_nothing21prepare_function_nameEPKv,"axG",@progbits,_ZN5boost10stacktrace6detail23to_string_using_nothing21prepare_function_nameEPKv,comdat
	.align 2
	.weak	_ZN5boost10stacktrace6detail23to_string_using_nothing21prepare_function_nameEPKv
	.type	_ZN5boost10stacktrace6detail23to_string_using_nothing21prepare_function_nameEPKv, @function
_ZN5boost10stacktrace6detail23to_string_using_nothing21prepare_function_nameEPKv:
.LFB14976:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-80(%rbp), %rdx
	leaq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5boost10stacktrace5frameC1EPKv
	leaq	-48(%rbp), %rax
	leaq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNK5boost10stacktrace5frame4nameB5cxx11Ev
	movq	-72(%rbp), %rax
	leaq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_@PLT
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L155
	call	__stack_chk_fail@PLT
.L155:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14976:
	.size	_ZN5boost10stacktrace6detail23to_string_using_nothing21prepare_function_nameEPKv, .-_ZN5boost10stacktrace6detail23to_string_using_nothing21prepare_function_nameEPKv
	.section	.text._ZNK5boost10stacktrace6detail23to_string_using_nothing23prepare_source_locationEPKv,"axG",@progbits,_ZNK5boost10stacktrace6detail23to_string_using_nothing23prepare_source_locationEPKv,comdat
	.align 2
	.weak	_ZNK5boost10stacktrace6detail23to_string_using_nothing23prepare_source_locationEPKv
	.type	_ZNK5boost10stacktrace6detail23to_string_using_nothing23prepare_source_locationEPKv, @function
_ZNK5boost10stacktrace6detail23to_string_using_nothing23prepare_source_locationEPKv:
.LFB14980:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14980:
	.size	_ZNK5boost10stacktrace6detail23to_string_using_nothing23prepare_source_locationEPKv, .-_ZNK5boost10stacktrace6detail23to_string_using_nothing23prepare_source_locationEPKv
	.section	.text._ZN5boost10stacktrace6detail9name_implB5cxx11EPKv,"axG",@progbits,_ZN5boost10stacktrace6detail9name_implB5cxx11EPKv,comdat
	.weak	_ZN5boost10stacktrace6detail9name_implB5cxx11EPKv
	.type	_ZN5boost10stacktrace6detail9name_implB5cxx11EPKv, @function
_ZN5boost10stacktrace6detail9name_implB5cxx11EPKv:
.LFB14981:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@PLT
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14981:
	.size	_ZN5boost10stacktrace6detail9name_implB5cxx11EPKv, .-_ZN5boost10stacktrace6detail9name_implB5cxx11EPKv
	.section	.text._ZN5boost10stacktrace6detail23to_string_using_nothingC2Ev,"axG",@progbits,_ZN5boost10stacktrace6detail23to_string_using_nothingC5Ev,comdat
	.align 2
	.weak	_ZN5boost10stacktrace6detail23to_string_using_nothingC2Ev
	.type	_ZN5boost10stacktrace6detail23to_string_using_nothingC2Ev, @function
_ZN5boost10stacktrace6detail23to_string_using_nothingC2Ev:
.LFB14988:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14988:
	.size	_ZN5boost10stacktrace6detail23to_string_using_nothingC2Ev, .-_ZN5boost10stacktrace6detail23to_string_using_nothingC2Ev
	.weak	_ZN5boost10stacktrace6detail23to_string_using_nothingC1Ev
	.set	_ZN5boost10stacktrace6detail23to_string_using_nothingC1Ev,_ZN5boost10stacktrace6detail23to_string_using_nothingC2Ev
	.section	.text._ZN5boost10stacktrace6detail23to_string_using_nothingD2Ev,"axG",@progbits,_ZN5boost10stacktrace6detail23to_string_using_nothingD5Ev,comdat
	.align 2
	.weak	_ZN5boost10stacktrace6detail23to_string_using_nothingD2Ev
	.type	_ZN5boost10stacktrace6detail23to_string_using_nothingD2Ev, @function
_ZN5boost10stacktrace6detail23to_string_using_nothingD2Ev:
.LFB14991:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14991:
	.size	_ZN5boost10stacktrace6detail23to_string_using_nothingD2Ev, .-_ZN5boost10stacktrace6detail23to_string_using_nothingD2Ev
	.weak	_ZN5boost10stacktrace6detail23to_string_using_nothingD1Ev
	.set	_ZN5boost10stacktrace6detail23to_string_using_nothingD1Ev,_ZN5boost10stacktrace6detail23to_string_using_nothingD2Ev
	.section	.text._ZN5boost10stacktrace6detail19to_string_impl_baseINS1_23to_string_using_nothingEEC2Ev,"axG",@progbits,_ZN5boost10stacktrace6detail19to_string_impl_baseINS1_23to_string_using_nothingEEC5Ev,comdat
	.align 2
	.weak	_ZN5boost10stacktrace6detail19to_string_impl_baseINS1_23to_string_using_nothingEEC2Ev
	.type	_ZN5boost10stacktrace6detail19to_string_impl_baseINS1_23to_string_using_nothingEEC2Ev, @function
_ZN5boost10stacktrace6detail19to_string_impl_baseINS1_23to_string_using_nothingEEC2Ev:
.LFB14993:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5boost10stacktrace6detail23to_string_using_nothingC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14993:
	.size	_ZN5boost10stacktrace6detail19to_string_impl_baseINS1_23to_string_using_nothingEEC2Ev, .-_ZN5boost10stacktrace6detail19to_string_impl_baseINS1_23to_string_using_nothingEEC2Ev
	.weak	_ZN5boost10stacktrace6detail19to_string_impl_baseINS1_23to_string_using_nothingEEC1Ev
	.set	_ZN5boost10stacktrace6detail19to_string_impl_baseINS1_23to_string_using_nothingEEC1Ev,_ZN5boost10stacktrace6detail19to_string_impl_baseINS1_23to_string_using_nothingEEC2Ev
	.section	.text._ZN5boost10stacktrace6detail19to_string_impl_baseINS1_23to_string_using_nothingEED2Ev,"axG",@progbits,_ZN5boost10stacktrace6detail19to_string_impl_baseINS1_23to_string_using_nothingEED5Ev,comdat
	.align 2
	.weak	_ZN5boost10stacktrace6detail19to_string_impl_baseINS1_23to_string_using_nothingEED2Ev
	.type	_ZN5boost10stacktrace6detail19to_string_impl_baseINS1_23to_string_using_nothingEED2Ev, @function
_ZN5boost10stacktrace6detail19to_string_impl_baseINS1_23to_string_using_nothingEED2Ev:
.LFB14996:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5boost10stacktrace6detail23to_string_using_nothingD2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14996:
	.size	_ZN5boost10stacktrace6detail19to_string_impl_baseINS1_23to_string_using_nothingEED2Ev, .-_ZN5boost10stacktrace6detail19to_string_impl_baseINS1_23to_string_using_nothingEED2Ev
	.weak	_ZN5boost10stacktrace6detail19to_string_impl_baseINS1_23to_string_using_nothingEED1Ev
	.set	_ZN5boost10stacktrace6detail19to_string_impl_baseINS1_23to_string_using_nothingEED1Ev,_ZN5boost10stacktrace6detail19to_string_impl_baseINS1_23to_string_using_nothingEED2Ev
	.section	.text._ZN5boost10stacktrace6detail9to_stringB5cxx11EPKNS0_5frameEm,"axG",@progbits,_ZN5boost10stacktrace6detail9to_stringB5cxx11EPKNS0_5frameEm,comdat
	.weak	_ZN5boost10stacktrace6detail9to_stringB5cxx11EPKNS0_5frameEm
	.type	_ZN5boost10stacktrace6detail9to_stringB5cxx11EPKNS0_5frameEm, @function
_ZN5boost10stacktrace6detail9to_stringB5cxx11EPKNS0_5frameEm:
.LFB14985:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA14985
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$136, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@PLT
	cmpq	$0, -136(%rbp)
	je	.L178
	movq	-136(%rbp), %rax
	salq	$6, %rax
	movq	%rax, %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB2:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm@PLT
.LEHE2:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5boost10stacktrace6detail19to_string_impl_baseINS1_23to_string_using_nothingEEC1Ev
	movq	$0, -104(%rbp)
	jmp	.L167
.L169:
	cmpq	$9, -104(%rbp)
	ja	.L168
	movq	-120(%rbp), %rax
	movl	$32, %esi
	movq	%rax, %rdi
.LEHB3:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc@PLT
.L168:
	leaq	-64(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5boost10stacktrace6detail12to_dec_arrayEm
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5boost5arrayIcLm40EE4dataEv
	movq	%rax, %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc@PLT
	movq	-120(%rbp), %rax
	movl	$35, %esi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc@PLT
	movq	-120(%rbp), %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc@PLT
	movq	-104(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	_ZNK5boost10stacktrace5frame7addressEv
	movq	%rax, %rdx
	leaq	-64(%rbp), %rax
	leaq	-96(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN5boost10stacktrace6detail19to_string_impl_baseINS1_23to_string_using_nothingEEclB5cxx11EPKv
.LEHE3:
	leaq	-64(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB4:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_@PLT
.LEHE4:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movq	-120(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
.LEHB5:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc@PLT
.LEHE5:
	addq	$1, -104(%rbp)
.L167:
	movq	-104(%rbp), %rax
	cmpq	-136(%rbp), %rax
	jb	.L169
	nop
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5boost10stacktrace6detail19to_string_impl_baseINS1_23to_string_using_nothingEED1Ev
	jmp	.L164
.L177:
	endbr64
	movq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L172
.L176:
	endbr64
	movq	%rax, %rbx
.L172:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5boost10stacktrace6detail19to_string_impl_baseINS1_23to_string_using_nothingEED1Ev
	jmp	.L173
.L175:
	endbr64
	movq	%rax, %rbx
.L173:
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB6:
	call	_Unwind_Resume@PLT
.LEHE6:
.L178:
	nop
.L164:
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L174
	call	__stack_chk_fail@PLT
.L174:
	movq	-120(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14985:
	.section	.gcc_except_table._ZN5boost10stacktrace6detail9to_stringB5cxx11EPKNS0_5frameEm,"aG",@progbits,_ZN5boost10stacktrace6detail9to_stringB5cxx11EPKNS0_5frameEm,comdat
.LLSDA14985:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE14985-.LLSDACSB14985
.LLSDACSB14985:
	.uleb128 .LEHB2-.LFB14985
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L175-.LFB14985
	.uleb128 0
	.uleb128 .LEHB3-.LFB14985
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L176-.LFB14985
	.uleb128 0
	.uleb128 .LEHB4-.LFB14985
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L177-.LFB14985
	.uleb128 0
	.uleb128 .LEHB5-.LFB14985
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L176-.LFB14985
	.uleb128 0
	.uleb128 .LEHB6-.LFB14985
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSE14985:
	.section	.text._ZN5boost10stacktrace6detail9to_stringB5cxx11EPKNS0_5frameEm,"axG",@progbits,_ZN5boost10stacktrace6detail9to_stringB5cxx11EPKNS0_5frameEm,comdat
	.size	_ZN5boost10stacktrace6detail9to_stringB5cxx11EPKNS0_5frameEm, .-_ZN5boost10stacktrace6detail9to_stringB5cxx11EPKNS0_5frameEm
	.section	.text._ZNK5boost10stacktrace5frame4nameB5cxx11Ev,"axG",@progbits,_ZNK5boost10stacktrace5frame4nameB5cxx11Ev,comdat
	.align 2
	.weak	_ZNK5boost10stacktrace5frame4nameB5cxx11Ev
	.type	_ZNK5boost10stacktrace5frame4nameB5cxx11Ev, @function
_ZNK5boost10stacktrace5frame4nameB5cxx11Ev:
.LFB14998:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L180
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@PLT
	jmp	.L183
.L180:
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	leaq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	dladdr@PLT
	testl	%eax, %eax
	setne	%al
	movb	%al, -49(%rbp)
	cmpb	$0, -49(%rbp)
	je	.L182
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	je	.L182
	movq	-32(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5boost4core8demangleB5cxx11EPKc
	jmp	.L183
.L182:
	movq	-80(%rbp), %rax
	movq	(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5boost10stacktrace6detail9name_implB5cxx11EPKv
.L183:
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L184
	call	__stack_chk_fail@PLT
.L184:
	movq	-72(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14998:
	.size	_ZNK5boost10stacktrace5frame4nameB5cxx11Ev, .-_ZNK5boost10stacktrace5frame4nameB5cxx11Ev
	.section	.text._ZN4vec3C2Efff,"axG",@progbits,_ZN4vec3C5Efff,comdat
	.align 2
	.weak	_ZN4vec3C2Efff
	.type	_ZN4vec3C2Efff, @function
_ZN4vec3C2Efff:
.LFB15039:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movss	%xmm0, -12(%rbp)
	movss	%xmm1, -16(%rbp)
	movss	%xmm2, -20(%rbp)
	movq	-8(%rbp), %rax
	movss	-12(%rbp), %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	movss	-16(%rbp), %xmm0
	movss	%xmm0, 4(%rax)
	movq	-8(%rbp), %rax
	movss	-20(%rbp), %xmm0
	movss	%xmm0, 8(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15039:
	.size	_ZN4vec3C2Efff, .-_ZN4vec3C2Efff
	.weak	_ZN4vec3C1Efff
	.set	_ZN4vec3C1Efff,_ZN4vec3C2Efff
	.section	.rodata
.LC1:
	.string	"Cannot index into vec3 with "
.LC2:
	.string	"\n"
	.section	.text._ZNK4vec3ixEi,"axG",@progbits,_ZNK4vec3ixEi,comdat
	.align 2
	.weak	_ZNK4vec3ixEi
	.type	_ZNK4vec3ixEi, @function
_ZNK4vec3ixEi:
.LFB15044:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$2, -12(%rbp)
	je	.L187
	cmpl	$2, -12(%rbp)
	jg	.L188
	cmpl	$0, -12(%rbp)
	je	.L189
	cmpl	$1, -12(%rbp)
	je	.L190
	jmp	.L188
.L189:
	movq	-8(%rbp), %rax
	movss	(%rax), %xmm0
	jmp	.L191
.L190:
	movq	-8(%rbp), %rax
	movss	4(%rax), %xmm0
	jmp	.L191
.L187:
	movq	-8(%rbp), %rax
	movss	8(%rax), %xmm0
	jmp	.L191
.L188:
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cerr(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_ZNSolsEi@PLT
	movq	%rax, %rdx
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$4, %edi
	call	__cxa_allocate_exception@PLT
	movl	-12(%rbp), %edx
	movl	%edx, (%rax)
	movl	$0, %edx
	leaq	_ZTIi(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	__cxa_throw@PLT
.L191:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15044:
	.size	_ZNK4vec3ixEi, .-_ZNK4vec3ixEi
	.section	.text._ZN4vec3ixEi,"axG",@progbits,_ZN4vec3ixEi,comdat
	.align 2
	.weak	_ZN4vec3ixEi
	.type	_ZN4vec3ixEi, @function
_ZN4vec3ixEi:
.LFB15045:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$2, -12(%rbp)
	je	.L193
	cmpl	$2, -12(%rbp)
	jg	.L194
	cmpl	$0, -12(%rbp)
	je	.L195
	cmpl	$1, -12(%rbp)
	je	.L196
	jmp	.L194
.L195:
	movq	-8(%rbp), %rax
	jmp	.L197
.L196:
	movq	-8(%rbp), %rax
	addq	$4, %rax
	jmp	.L197
.L193:
	movq	-8(%rbp), %rax
	addq	$8, %rax
	jmp	.L197
.L194:
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cerr(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_ZNSolsEi@PLT
	movq	%rax, %rdx
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$4, %edi
	call	__cxa_allocate_exception@PLT
	movl	-12(%rbp), %edx
	movl	%edx, (%rax)
	movl	$0, %edx
	leaq	_ZTIi(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	__cxa_throw@PLT
.L197:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15045:
	.size	_ZN4vec3ixEi, .-_ZN4vec3ixEi
	.section	.text._ZN4vec3mLEf,"axG",@progbits,_ZN4vec3mLEf,comdat
	.align 2
	.weak	_ZN4vec3mLEf
	.type	_ZN4vec3mLEf, @function
_ZN4vec3mLEf:
.LFB15048:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movss	%xmm0, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZN4vec3ixEi
	movss	(%rax), %xmm0
	mulss	-12(%rbp), %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZN4vec3ixEi
	movss	(%rax), %xmm0
	mulss	-12(%rbp), %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	_ZN4vec3ixEi
	movss	(%rax), %xmm0
	mulss	-12(%rbp), %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15048:
	.size	_ZN4vec3mLEf, .-_ZN4vec3mLEf
	.section	.text._ZN4vec3dVEf,"axG",@progbits,_ZN4vec3dVEf,comdat
	.align 2
	.weak	_ZN4vec3dVEf
	.type	_ZN4vec3dVEf, @function
_ZN4vec3dVEf:
.LFB15049:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movss	%xmm0, -12(%rbp)
	movss	.LC3(%rip), %xmm0
	divss	-12(%rbp), %xmm0
	movd	%xmm0, %edx
	movq	-8(%rbp), %rax
	movd	%edx, %xmm0
	movq	%rax, %rdi
	call	_ZN4vec3mLEf
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15049:
	.size	_ZN4vec3dVEf, .-_ZN4vec3dVEf
	.section	.text._ZN4vec36randomER13random_seriesff,"axG",@progbits,_ZN4vec36randomER13random_seriesff,comdat
	.weak	_ZN4vec36randomER13random_seriesff
	.type	_ZN4vec36randomER13random_seriesff, @function
_ZN4vec36randomER13random_seriesff:
.LFB15052:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$64, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -56(%rbp)
	movss	%xmm0, -60(%rbp)
	movss	%xmm1, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movss	-64(%rbp), %xmm0
	movl	-60(%rbp), %edx
	movq	-56(%rbp), %rax
	movaps	%xmm0, %xmm1
	movd	%edx, %xmm0
	movq	%rax, %rdi
	call	_Z12random_floatR13random_seriesff
	movd	%xmm0, %r12d
	movss	-64(%rbp), %xmm0
	movl	-60(%rbp), %edx
	movq	-56(%rbp), %rax
	movaps	%xmm0, %xmm1
	movd	%edx, %xmm0
	movq	%rax, %rdi
	call	_Z12random_floatR13random_seriesff
	movd	%xmm0, %ebx
	movss	-64(%rbp), %xmm0
	movl	-60(%rbp), %edx
	movq	-56(%rbp), %rax
	movaps	%xmm0, %xmm1
	movd	%edx, %xmm0
	movq	%rax, %rdi
	call	_Z12random_floatR13random_seriesff
	movd	%xmm0, %eax
	leaq	-48(%rbp), %rdx
	movd	%r12d, %xmm2
	movd	%ebx, %xmm1
	movd	%eax, %xmm0
	movq	%rdx, %rdi
	call	_ZN4vec3C1Efff
	movq	-48(%rbp), %rax
	movq	%rax, -36(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-36(%rbp), %rax
	movss	-28(%rbp), %xmm0
	movq	%rax, %rdx
	movaps	%xmm0, %xmm1
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L204
	call	__stack_chk_fail@PLT
.L204:
	movq	%rdx, %xmm0
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15052:
	.size	_ZN4vec36randomER13random_seriesff, .-_ZN4vec36randomER13random_seriesff
	.section	.text._Z3dotRK4vec3S1_,"axG",@progbits,_Z3dotRK4vec3S1_,comdat
	.weak	_Z3dotRK4vec3S1_
	.type	_Z3dotRK4vec3S1_, @function
_Z3dotRK4vec3S1_:
.LFB15061:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNK4vec3ixEi
	movss	%xmm0, -20(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNK4vec3ixEi
	movaps	%xmm0, %xmm1
	mulss	-20(%rbp), %xmm1
	movss	%xmm1, -20(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZNK4vec3ixEi
	movss	%xmm0, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZNK4vec3ixEi
	mulss	-24(%rbp), %xmm0
	addss	-20(%rbp), %xmm0
	movss	%xmm0, -20(%rbp)
	movq	-8(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	_ZNK4vec3ixEi
	movss	%xmm0, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	_ZNK4vec3ixEi
	mulss	-24(%rbp), %xmm0
	addss	-20(%rbp), %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15061:
	.size	_Z3dotRK4vec3S1_, .-_Z3dotRK4vec3S1_
	.section	.text._Z14length_squaredRK4vec3,"axG",@progbits,_Z14length_squaredRK4vec3,comdat
	.weak	_Z14length_squaredRK4vec3
	.type	_Z14length_squaredRK4vec3, @function
_Z14length_squaredRK4vec3:
.LFB15062:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z3dotRK4vec3S1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15062:
	.size	_Z14length_squaredRK4vec3, .-_Z14length_squaredRK4vec3
	.section	.text._Z6lengthRK4vec3,"axG",@progbits,_Z6lengthRK4vec3,comdat
	.weak	_Z6lengthRK4vec3
	.type	_Z6lengthRK4vec3, @function
_Z6lengthRK4vec3:
.LFB15063:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_Z14length_squaredRK4vec3
	movd	%xmm0, %eax
	movd	%eax, %xmm0
	call	_ZSt4sqrtf
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15063:
	.size	_Z6lengthRK4vec3, .-_Z6lengthRK4vec3
	.section	.text._Z9normaliseR4vec3,"axG",@progbits,_Z9normaliseR4vec3,comdat
	.weak	_Z9normaliseR4vec3
	.type	_Z9normaliseR4vec3, @function
_Z9normaliseR4vec3:
.LFB15065:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_Z6lengthRK4vec3
	movd	%xmm0, %eax
	movq	-24(%rbp), %rdx
	movd	%eax, %xmm0
	movq	%rdx, %rdi
	call	_ZN4vec3dVEf
	movq	(%rax), %rdx
	movq	%rdx, -12(%rbp)
	movl	8(%rax), %eax
	movl	%eax, -4(%rbp)
	movq	-12(%rbp), %rax
	movss	-4(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	movq	%rax, %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15065:
	.size	_Z9normaliseR4vec3, .-_Z9normaliseR4vec3
	.section	.text._Z10normalised4vec3,"axG",@progbits,_Z10normalised4vec3,comdat
	.weak	_Z10normalised4vec3
	.type	_Z10normalised4vec3, @function
_Z10normalised4vec3:
.LFB15066:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%xmm0, %rax
	movaps	%xmm1, %xmm0
	movq	%rax, -32(%rbp)
	movss	%xmm0, -24(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_Z9normaliseR4vec3
	movq	%xmm0, %rax
	movaps	%xmm1, %xmm0
	movq	%rax, -12(%rbp)
	movss	%xmm0, -4(%rbp)
	movq	-12(%rbp), %rax
	movss	-4(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	movq	%rax, %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15066:
	.size	_Z10normalised4vec3, .-_Z10normalised4vec3
	.section	.text._ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev,"axG",@progbits,_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED5Ev,comdat
	.align 2
	.weak	_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev
	.type	_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev, @function
_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev:
.LFB15069:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EED1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15069:
	.size	_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev, .-_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev
	.weak	_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED1Ev
	.set	_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED1Ev,_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev
	.section	.rodata
	.align 8
.LC5:
	.string	"uniform_random_in_unit_sphere took more than 500 iterations to generate a random number!!!"
	.text
	.globl	_Z29uniform_random_in_unit_sphereR13random_series
	.type	_Z29uniform_random_in_unit_sphereR13random_series, @function
_Z29uniform_random_in_unit_sphereR13random_series:
.LFB15067:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA15067
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	$0, -64(%rbp)
	jmp	.L217
.L220:
	movq	-72(%rbp), %rax
	movss	.LC3(%rip), %xmm1
	movl	.LC4(%rip), %edx
	movd	%edx, %xmm0
	movq	%rax, %rdi
	call	_ZN4vec36randomER13random_seriesff
	movq	%xmm0, %rax
	movaps	%xmm1, %xmm0
	movq	%rax, -60(%rbp)
	movss	%xmm0, -52(%rbp)
	leaq	-60(%rbp), %rax
	movq	%rax, %rdi
.LEHB7:
	call	_Z14length_squaredRK4vec3
.LEHE7:
	movss	.LC3(%rip), %xmm1
	comiss	%xmm0, %xmm1
	seta	%al
	testb	%al, %al
	je	.L218
	movq	-60(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -40(%rbp)
	movq	-48(%rbp), %rax
	movss	-40(%rbp), %xmm0
	movq	%rax, %rdx
	movaps	%xmm0, %xmm1
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L222
	jmp	.L224
.L218:
	addl	$1, -64(%rbp)
.L217:
	cmpl	$499, -64(%rbp)
	jle	.L220
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -32(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EEC1Ev
	leaq	-48(%rbp), %rax
	movq	$-1, %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEE4initEmm
	nop
	leaq	-48(%rbp), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
.LEHB8:
	call	_ZN5boost10stacktracelsIcSt11char_traitsIcESaINS0_5frameEEEERSt13basic_ostreamIT_T0_ESA_RKNS0_16basic_stacktraceIT1_EE
.LEHE8:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED1Ev
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
.LEHB9:
	call	_ZSt17throw_with_nestedIRA91_KcEvOT_
.L223:
	endbr64
	movq	%rax, %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE9:
.L224:
	call	__stack_chk_fail@PLT
.L222:
	movq	%rdx, %xmm0
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15067:
	.section	.gcc_except_table,"a",@progbits
.LLSDA15067:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE15067-.LLSDACSB15067
.LLSDACSB15067:
	.uleb128 .LEHB7-.LFB15067
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB8-.LFB15067
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L223-.LFB15067
	.uleb128 0
	.uleb128 .LEHB9-.LFB15067
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
.LLSDACSE15067:
	.text
	.size	_Z29uniform_random_in_unit_sphereR13random_series, .-_Z29uniform_random_in_unit_sphereR13random_series
	.globl	_Z26uniform_random_unit_vectorR13random_series
	.type	_Z26uniform_random_unit_vectorR13random_series, @function
_Z26uniform_random_unit_vectorR13random_series:
.LFB15071:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_Z29uniform_random_in_unit_sphereR13random_series
	movq	%xmm0, %rax
	movaps	%xmm1, %xmm0
	movq	%rax, -12(%rbp)
	movss	%xmm0, -4(%rbp)
	movq	-12(%rbp), %rax
	movss	-4(%rbp), %xmm1
	movq	%rax, %xmm0
	call	_Z10normalised4vec3
	movq	%xmm0, %rax
	movaps	%xmm1, %xmm0
	movq	%rax, -24(%rbp)
	movss	%xmm0, -16(%rbp)
	movq	-24(%rbp), %rax
	movss	-16(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	movq	%rax, %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15071:
	.size	_Z26uniform_random_unit_vectorR13random_series, .-_Z26uniform_random_unit_vectorR13random_series
	.section	.rodata
	.align 8
.LC7:
	.string	"uniform_random_in_unit_disk took more than 500 iterations to generate a random number!!!"
	.text
	.globl	_Z27uniform_random_in_unit_diskR13random_series
	.type	_Z27uniform_random_in_unit_diskR13random_series, @function
_Z27uniform_random_in_unit_diskR13random_series:
.LFB15072:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA15072
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	$0, -96(%rbp)
	jmp	.L228
.L231:
	movq	-104(%rbp), %rax
	movss	.LC3(%rip), %xmm1
	movl	.LC4(%rip), %edx
	movd	%edx, %xmm0
	movq	%rax, %rdi
	call	_Z12random_floatR13random_seriesff
	movd	%xmm0, %ebx
	movq	-104(%rbp), %rax
	movss	.LC3(%rip), %xmm1
	movl	.LC4(%rip), %edx
	movd	%edx, %xmm0
	movq	%rax, %rdi
	call	_Z12random_floatR13random_seriesff
	movd	%xmm0, %eax
	leaq	-92(%rbp), %rdx
	pxor	%xmm2, %xmm2
	movd	%ebx, %xmm1
	movd	%eax, %xmm0
	movq	%rdx, %rdi
	call	_ZN4vec3C1Efff
	leaq	-92(%rbp), %rax
	movq	%rax, %rdi
.LEHB10:
	call	_Z14length_squaredRK4vec3
.LEHE10:
	movss	.LC3(%rip), %xmm1
	comiss	%xmm0, %xmm1
	seta	%al
	testb	%al, %al
	je	.L229
	movq	-92(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	-84(%rbp), %eax
	movl	%eax, -72(%rbp)
	movq	-80(%rbp), %rax
	movss	-72(%rbp), %xmm0
	movq	%rax, %rdx
	movaps	%xmm0, %xmm1
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L234
	jmp	.L237
.L229:
	addl	$1, -96(%rbp)
.L228:
	cmpl	$499, -96(%rbp)
	jle	.L231
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -64(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EEC1Ev
	leaq	-80(%rbp), %rax
	movq	$-1, %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEE4initEmm
	nop
	leaq	-80(%rbp), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
.LEHB11:
	call	_ZN5boost10stacktracelsIcSt11char_traitsIcESaINS0_5frameEEEERSt13basic_ostreamIT_T0_ESA_RKNS0_16basic_stacktraceIT1_EE
.LEHE11:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED1Ev
	leaq	-48(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB12:
	call	_ZNSt11range_errorC1EPKc@PLT
.LEHE12:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
.LEHB13:
	call	_ZSt17throw_with_nestedISt11range_errorEvOT_
.LEHE13:
.L235:
	endbr64
	movq	%rax, %rbx
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB14:
	call	_Unwind_Resume@PLT
.L236:
	endbr64
	movq	%rax, %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11range_errorD1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE14:
.L237:
	call	__stack_chk_fail@PLT
.L234:
	movq	%rdx, %xmm0
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15072:
	.section	.gcc_except_table
.LLSDA15072:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE15072-.LLSDACSB15072
.LLSDACSB15072:
	.uleb128 .LEHB10-.LFB15072
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB11-.LFB15072
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L235-.LFB15072
	.uleb128 0
	.uleb128 .LEHB12-.LFB15072
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB13-.LFB15072
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L236-.LFB15072
	.uleb128 0
	.uleb128 .LEHB14-.LFB15072
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
.LLSDACSE15072:
	.text
	.size	_Z27uniform_random_in_unit_diskR13random_series, .-_Z27uniform_random_in_unit_diskR13random_series
	.globl	_Z4testSt6vectorI5Vec8fSaIS0_EE
	.type	_Z4testSt6vectorI5Vec8fSaIS0_EE, @function
_Z4testSt6vectorI5Vec8fSaIS0_EE:
.LFB15082:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$248, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -248(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-224(%rbp), %rax
	movl	.LC6(%rip), %edx
	movd	%edx, %xmm0
	movq	%rax, %rdi
	call	_ZN5Vec8fC1Ef
	movl	$0, -228(%rbp)
	jmp	.L239
.L240:
	leaq	-160(%rbp), %rax
	movl	.LC6(%rip), %edx
	movd	%edx, %xmm0
	movq	%rax, %rdi
	call	_ZN5Vec8fC1Ef
	movl	-228(%rbp), %eax
	movslq	%eax, %rdx
	movq	-248(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorI5Vec8fSaIS0_EEixEm
	leaq	-128(%rbp), %rdx
	pushq	24(%rax)
	pushq	16(%rax)
	pushq	8(%rax)
	pushq	(%rax)
	movq	%rdx, %rdi
	call	_ZL4sqrt5Vec8f
	addq	$32, %rsp
	leaq	-192(%rbp), %rax
	movl	.LC6(%rip), %edx
	movd	%edx, %xmm0
	movq	%rax, %rdi
	call	_ZN5Vec8fC1Ef
	movl	-228(%rbp), %eax
	movslq	%eax, %rdx
	movq	-248(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorI5Vec8fSaIS0_EEixEm
	leaq	-96(%rbp), %rdx
	pushq	-168(%rbp)
	pushq	-176(%rbp)
	pushq	-184(%rbp)
	pushq	-192(%rbp)
	pushq	24(%rax)
	pushq	16(%rax)
	pushq	8(%rax)
	pushq	(%rax)
	movq	%rdx, %rdi
	call	_Zgt5Vec8fS_
	addq	$64, %rsp
	leaq	-64(%rbp), %rax
	pushq	-136(%rbp)
	pushq	-144(%rbp)
	pushq	-152(%rbp)
	pushq	-160(%rbp)
	pushq	-104(%rbp)
	pushq	-112(%rbp)
	pushq	-120(%rbp)
	pushq	-128(%rbp)
	pushq	-72(%rbp)
	pushq	-80(%rbp)
	pushq	-88(%rbp)
	pushq	-96(%rbp)
	movq	%rax, %rdi
	call	_ZL6select6Vec8fb5Vec8fS0_
	addq	$96, %rsp
	leaq	-224(%rbp), %rax
	pushq	-40(%rbp)
	pushq	-48(%rbp)
	pushq	-56(%rbp)
	pushq	-64(%rbp)
	movq	%rax, %rdi
	call	_ZpLR5Vec8fS_
	addq	$32, %rsp
	addl	$1, -228(%rbp)
.L239:
	movl	-228(%rbp), %eax
	movslq	%eax, %rbx
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorI5Vec8fSaIS0_EE4sizeEv
	cmpq	%rax, %rbx
	setb	%al
	testb	%al, %al
	jne	.L240
	pushq	-200(%rbp)
	pushq	-208(%rbp)
	pushq	-216(%rbp)
	pushq	-224(%rbp)
	call	_ZL14horizontal_add5Vec8f
	addq	$32, %rsp
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L242
	call	__stack_chk_fail@PLT
.L242:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15082:
	.size	_Z4testSt6vectorI5Vec8fSaIS0_EE, .-_Z4testSt6vectorI5Vec8fSaIS0_EE
	.section	.text._ZNSt12_Vector_baseI5Vec8fSaIS0_EE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseI5Vec8fSaIS0_EE12_Vector_implD5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI5Vec8fSaIS0_EE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseI5Vec8fSaIS0_EE12_Vector_implD2Ev, @function
_ZNSt12_Vector_baseI5Vec8fSaIS0_EE12_Vector_implD2Ev:
.LFB15089:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaI5Vec8fED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15089:
	.size	_ZNSt12_Vector_baseI5Vec8fSaIS0_EE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseI5Vec8fSaIS0_EE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseI5Vec8fSaIS0_EE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseI5Vec8fSaIS0_EE12_Vector_implD1Ev,_ZNSt12_Vector_baseI5Vec8fSaIS0_EE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseI5Vec8fSaIS0_EEC2Ev,"axG",@progbits,_ZNSt12_Vector_baseI5Vec8fSaIS0_EEC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI5Vec8fSaIS0_EEC2Ev
	.type	_ZNSt12_Vector_baseI5Vec8fSaIS0_EEC2Ev, @function
_ZNSt12_Vector_baseI5Vec8fSaIS0_EEC2Ev:
.LFB15091:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI5Vec8fSaIS0_EE12_Vector_implC1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15091:
	.size	_ZNSt12_Vector_baseI5Vec8fSaIS0_EEC2Ev, .-_ZNSt12_Vector_baseI5Vec8fSaIS0_EEC2Ev
	.weak	_ZNSt12_Vector_baseI5Vec8fSaIS0_EEC1Ev
	.set	_ZNSt12_Vector_baseI5Vec8fSaIS0_EEC1Ev,_ZNSt12_Vector_baseI5Vec8fSaIS0_EEC2Ev
	.section	.text._ZNSt6vectorI5Vec8fSaIS0_EEC2Ev,"axG",@progbits,_ZNSt6vectorI5Vec8fSaIS0_EEC5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorI5Vec8fSaIS0_EEC2Ev
	.type	_ZNSt6vectorI5Vec8fSaIS0_EEC2Ev, @function
_ZNSt6vectorI5Vec8fSaIS0_EEC2Ev:
.LFB15093:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI5Vec8fSaIS0_EEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15093:
	.size	_ZNSt6vectorI5Vec8fSaIS0_EEC2Ev, .-_ZNSt6vectorI5Vec8fSaIS0_EEC2Ev
	.weak	_ZNSt6vectorI5Vec8fSaIS0_EEC1Ev
	.set	_ZNSt6vectorI5Vec8fSaIS0_EEC1Ev,_ZNSt6vectorI5Vec8fSaIS0_EEC2Ev
	.section	.text._ZNSt12_Vector_baseI5Vec8fSaIS0_EEC2EOS2_,"axG",@progbits,_ZNSt12_Vector_baseI5Vec8fSaIS0_EEC5EOS2_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI5Vec8fSaIS0_EEC2EOS2_
	.type	_ZNSt12_Vector_baseI5Vec8fSaIS0_EEC2EOS2_, @function
_ZNSt12_Vector_baseI5Vec8fSaIS0_EEC2EOS2_:
.LFB15097:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI5Vec8fSaIS0_EE12_Vector_implC1EOS3_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15097:
	.size	_ZNSt12_Vector_baseI5Vec8fSaIS0_EEC2EOS2_, .-_ZNSt12_Vector_baseI5Vec8fSaIS0_EEC2EOS2_
	.weak	_ZNSt12_Vector_baseI5Vec8fSaIS0_EEC1EOS2_
	.set	_ZNSt12_Vector_baseI5Vec8fSaIS0_EEC1EOS2_,_ZNSt12_Vector_baseI5Vec8fSaIS0_EEC2EOS2_
	.section	.text._ZNSt6vectorI5Vec8fSaIS0_EEC2EOS2_,"axG",@progbits,_ZNSt6vectorI5Vec8fSaIS0_EEC5EOS2_,comdat
	.align 2
	.weak	_ZNSt6vectorI5Vec8fSaIS0_EEC2EOS2_
	.type	_ZNSt6vectorI5Vec8fSaIS0_EEC2EOS2_, @function
_ZNSt6vectorI5Vec8fSaIS0_EEC2EOS2_:
.LFB15099:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI5Vec8fSaIS0_EEC2EOS2_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15099:
	.size	_ZNSt6vectorI5Vec8fSaIS0_EEC2EOS2_, .-_ZNSt6vectorI5Vec8fSaIS0_EEC2EOS2_
	.weak	_ZNSt6vectorI5Vec8fSaIS0_EEC1EOS2_
	.set	_ZNSt6vectorI5Vec8fSaIS0_EEC1EOS2_,_ZNSt6vectorI5Vec8fSaIS0_EEC2EOS2_
	.text
	.globl	_Z5setupv
	.type	_Z5setupv, @function
_Z5setupv:
.LFB15084:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA15084
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorI5Vec8fSaIS0_EEC1Ev
	movl	$296, -76(%rbp)
	pxor	%xmm0, %xmm0
	cvtsi2ssl	-76(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LC8(%rip), %xmm2
	movapd	%xmm0, %xmm1
	subsd	%xmm2, %xmm1
	movsd	.LC9(%rip), %xmm0
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -72(%rbp)
	movl	$0, -80(%rbp)
	jmp	.L249
.L250:
	movl	-80(%rbp), %eax
	sall	$3, %eax
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	-72(%rbp), %xmm0
	movss	.LC10(%rip), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -68(%rbp)
	movss	-72(%rbp), %xmm1
	movss	.LC11(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movaps	%xmm0, %xmm6
	addss	-68(%rbp), %xmm6
	movss	-72(%rbp), %xmm1
	movss	.LC12(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movaps	%xmm0, %xmm5
	addss	-68(%rbp), %xmm5
	movss	-72(%rbp), %xmm1
	movss	.LC10(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movaps	%xmm0, %xmm4
	addss	-68(%rbp), %xmm4
	movss	-72(%rbp), %xmm1
	movss	.LC13(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movaps	%xmm0, %xmm3
	addss	-68(%rbp), %xmm3
	movss	-72(%rbp), %xmm1
	movss	.LC14(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movaps	%xmm0, %xmm2
	addss	-68(%rbp), %xmm2
	movss	-72(%rbp), %xmm0
	addss	%xmm0, %xmm0
	movaps	%xmm0, %xmm1
	addss	-68(%rbp), %xmm1
	movss	-68(%rbp), %xmm0
	addss	-72(%rbp), %xmm0
	movl	-68(%rbp), %edx
	leaq	-64(%rbp), %rax
	movaps	%xmm6, %xmm7
	movaps	%xmm5, %xmm6
	movaps	%xmm4, %xmm5
	movaps	%xmm3, %xmm4
	movaps	%xmm2, %xmm3
	movaps	%xmm1, %xmm2
	movaps	%xmm0, %xmm1
	movd	%edx, %xmm0
	movq	%rax, %rdi
	call	_ZN5Vec8fC1Effffffff
	leaq	-64(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB15:
	call	_ZNSt6vectorI5Vec8fSaIS0_EE9push_backEOS0_
.LEHE15:
	addl	$1, -80(%rbp)
.L249:
	movl	-76(%rbp), %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	cmpl	%eax, -80(%rbp)
	jl	.L250
	jmp	.L255
.L254:
	endbr64
	movq	%rax, %rbx
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorI5Vec8fSaIS0_EED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB16:
	call	_Unwind_Resume@PLT
.LEHE16:
.L255:
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L253
	call	__stack_chk_fail@PLT
.L253:
	movq	-88(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15084:
	.section	.gcc_except_table
.LLSDA15084:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE15084-.LLSDACSB15084
.LLSDACSB15084:
	.uleb128 .LEHB15-.LFB15084
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L254-.LFB15084
	.uleb128 0
	.uleb128 .LEHB16-.LFB15084
	.uleb128 .LEHE16-.LEHB16
	.uleb128 0
	.uleb128 0
.LLSDACSE15084:
	.text
	.size	_Z5setupv, .-_Z5setupv
	.align 2
	.type	_ZNKL24benchmark_uniq_2runbenchMUlRN9benchmark5StateEE_clES1_, @function
_ZNKL24benchmark_uniq_2runbenchMUlRN9benchmark5StateEE_clES1_:
.LFB15101:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA15101
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
.LEHB17:
	call	_Z5setupv
.LEHE17:
	leaq	-48(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB18:
	call	_Z8runbenchIJSt6vectorI5Vec8fSaIS1_EEEEvRN9benchmark5StateEDpOT_
.LEHE18:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorI5Vec8fSaIS0_EED1Ev
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L258
	jmp	.L260
.L259:
	endbr64
	movq	%rax, %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorI5Vec8fSaIS0_EED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB19:
	call	_Unwind_Resume@PLT
.LEHE19:
.L260:
	call	__stack_chk_fail@PLT
.L258:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15101:
	.section	.gcc_except_table
.LLSDA15101:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE15101-.LLSDACSB15101
.LLSDACSB15101:
	.uleb128 .LEHB17-.LFB15101
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB18-.LFB15101
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L259-.LFB15101
	.uleb128 0
	.uleb128 .LEHB19-.LFB15101
	.uleb128 .LEHE19-.LEHB19
	.uleb128 0
	.uleb128 0
.LLSDACSE15101:
	.text
	.size	_ZNKL24benchmark_uniq_2runbenchMUlRN9benchmark5StateEE_clES1_, .-_ZNKL24benchmark_uniq_2runbenchMUlRN9benchmark5StateEE_clES1_
	.type	_ZNL24benchmark_uniq_2runbenchMUlRN9benchmark5StateEE_4_FUNES1_, @function
_ZNL24benchmark_uniq_2runbenchMUlRN9benchmark5StateEE_4_FUNES1_:
.LFB15102:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	_ZNKL24benchmark_uniq_2runbenchMUlRN9benchmark5StateEE_clES1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15102:
	.size	_ZNL24benchmark_uniq_2runbenchMUlRN9benchmark5StateEE_4_FUNES1_, .-_ZNL24benchmark_uniq_2runbenchMUlRN9benchmark5StateEE_4_FUNES1_
	.align 2
	.type	_ZNKL24benchmark_uniq_2runbenchMUlRN9benchmark5StateEE_cvPFvS1_EEv, @function
_ZNKL24benchmark_uniq_2runbenchMUlRN9benchmark5StateEE_cvPFvS1_EEv:
.LFB15103:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	_ZNL24benchmark_uniq_2runbenchMUlRN9benchmark5StateEE_4_FUNES1_(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15103:
	.size	_ZNKL24benchmark_uniq_2runbenchMUlRN9benchmark5StateEE_cvPFvS1_EEv, .-_ZNKL24benchmark_uniq_2runbenchMUlRN9benchmark5StateEE_cvPFvS1_EEv
	.local	_ZL24benchmark_uniq_2runbench
	.comm	_ZL24benchmark_uniq_2runbench,8,8
	.globl	main
	.type	main, @function
main:
.LFB15104:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	leaq	-4(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9benchmark10InitializeEPiPPc@PLT
	movl	-4(%rbp), %eax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	_ZN9benchmark27ReportUnrecognizedArgumentsEiPPc@PLT
	testb	%al, %al
	je	.L266
	movl	$1, %eax
	jmp	.L267
.L266:
	call	_ZN9benchmark22RunSpecifiedBenchmarksEv@PLT
	call	_ZN9benchmark8ShutdownEv@PLT
	movl	$0, %eax
.L267:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15104:
	.size	main, .-main
	.section	.text._ZSt3maxImERKT_S2_S2_,"axG",@progbits,_ZSt3maxImERKT_S2_S2_,comdat
	.weak	_ZSt3maxImERKT_S2_S2_
	.type	_ZSt3maxImERKT_S2_S2_, @function
_ZSt3maxImERKT_S2_S2_:
.LFB15107:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L269
	movq	-16(%rbp), %rax
	jmp	.L270
.L269:
	movq	-8(%rbp), %rax
.L270:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15107:
	.size	_ZSt3maxImERKT_S2_S2_, .-_ZSt3maxImERKT_S2_S2_
	.section	.text._ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_,"axG",@progbits,_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_,comdat
	.weak	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	.type	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_, @function
_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_:
.LFB15116:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	sete	%al
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15116:
	.size	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_, .-_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	.section	.text._ZN9__gnu_cxx11char_traitsIcE6lengthEPKc,"axG",@progbits,_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc,comdat
	.align 2
	.weak	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	.type	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc, @function
_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc:
.LFB15115:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	$0, -16(%rbp)
	jmp	.L274
.L275:
	addq	$1, -16(%rbp)
.L274:
	movb	$0, -17(%rbp)
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	leaq	-17(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	xorl	$1, %eax
	testb	%al, %al
	jne	.L275
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L277
	call	__stack_chk_fail@PLT
.L277:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15115:
	.size	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc, .-_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD5Ev,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev:
.LFB15221:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED2Ev@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15221:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC5IS3_EEPKcRKS3_,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_:
.LFB15431:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA15431
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
.LEHB20:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv@PLT
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movq	%rbx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_@PLT
.LEHE20:
	cmpq	$0, -64(%rbp)
	je	.L280
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
.LEHB21:
	call	_ZNSt11char_traitsIcE6lengthEPKc
	movq	-64(%rbp), %rdx
	addq	%rdx, %rax
	jmp	.L281
.L280:
	movl	$1, %eax
.L281:
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
.LEHE21:
	jmp	.L285
.L284:
	endbr64
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB22:
	call	_Unwind_Resume@PLT
.LEHE22:
.L285:
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L283
	call	__stack_chk_fail@PLT
.L283:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15431:
	.section	.gcc_except_table
.LLSDA15431:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE15431-.LLSDACSB15431
.LLSDACSB15431:
	.uleb128 .LEHB20-.LFB15431
	.uleb128 .LEHE20-.LEHB20
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB21-.LFB15431
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L284-.LFB15431
	.uleb128 0
	.uleb128 .LEHB22-.LFB15431
	.uleb128 .LEHE22-.LEHB22
	.uleb128 0
	.uleb128 0
.LLSDACSE15431:
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC5IS3_EEPKcRKS3_,comdat
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.section	.text._ZN5boost10stacktrace6detail12to_hex_arrayImEENS_5arrayIcLm19EEET_,"axG",@progbits,_ZN5boost10stacktrace6detail12to_hex_arrayImEENS_5arrayIcLm19EEET_,comdat
	.weak	_ZN5boost10stacktrace6detail12to_hex_arrayImEENS_5arrayIcLm19EEET_
	.type	_ZN5boost10stacktrace6detail12to_hex_arrayImEENS_5arrayIcLm19EEET_, @function
_ZN5boost10stacktrace6detail12to_hex_arrayImEENS_5arrayIcLm19EEET_:
.LFB15700:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	$30768, (%rax)
	movq	$0, 8(%rax)
	movw	$0, 16(%rax)
	movb	$0, 18(%rax)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5boost5arrayIcLm19EE4backEv
	movb	$0, (%rax)
	movq	$8, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5boost5arrayIcLm19EE4dataEv
	addq	$17, %rax
	movq	%rax, -24(%rbp)
	movq	$0, -16(%rbp)
	jmp	.L287
.L288:
	movq	-48(%rbp), %rax
	movb	%al, -25(%rbp)
	movzbl	-25(%rbp), %eax
	andl	$15, %eax
	cltq
	leaq	_ZN5boost10stacktrace6detailL18to_hex_array_bytesE(%rip), %rdx
	movzbl	(%rax,%rdx), %edx
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
	subq	$1, -24(%rbp)
	movzbl	-25(%rbp), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	cltq
	leaq	_ZN5boost10stacktrace6detailL18to_hex_array_bytesE(%rip), %rdx
	movzbl	(%rax,%rdx), %edx
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
	subq	$1, -24(%rbp)
	shrq	$8, -48(%rbp)
	addq	$1, -16(%rbp)
.L287:
	cmpq	$7, -16(%rbp)
	jbe	.L288
	nop
	movq	-40(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15700:
	.size	_ZN5boost10stacktrace6detail12to_hex_arrayImEENS_5arrayIcLm19EEET_, .-_ZN5boost10stacktrace6detail12to_hex_arrayImEENS_5arrayIcLm19EEET_
	.section	.rodata
	.align 8
.LC15:
	.string	"T& boost::array<T, N>::operator[](boost::array<T, N>::size_type) [with T = char; long unsigned int N = 40; boost::array<T, N>::reference = char&; boost::array<T, N>::size_type = long unsigned int]"
.LC16:
	.string	"/usr/include/boost/array.hpp"
.LC17:
	.string	"(i < N)&&(\"out of range\")"
	.section	.text._ZN5boost5arrayIcLm40EEixEm,"axG",@progbits,_ZN5boost5arrayIcLm40EEixEm,comdat
	.align 2
	.weak	_ZN5boost5arrayIcLm40EEixEm
	.type	_ZN5boost5arrayIcLm40EEixEm, @function
_ZN5boost5arrayIcLm40EEixEm:
.LFB15701:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$39, -16(%rbp)
	jbe	.L291
	leaq	.LC15(%rip), %rax
	movq	%rax, %rcx
	movl	$117, %edx
	leaq	.LC16(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L291:
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15701:
	.size	_ZN5boost5arrayIcLm40EEixEm, .-_ZN5boost5arrayIcLm40EEixEm
	.section	.text._ZN5boost5arrayIcLm40EE4dataEv,"axG",@progbits,_ZN5boost5arrayIcLm40EE4dataEv,comdat
	.align 2
	.weak	_ZN5boost5arrayIcLm40EE4dataEv
	.type	_ZN5boost5arrayIcLm40EE4dataEv, @function
_ZN5boost5arrayIcLm40EE4dataEv:
.LFB15705:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15705:
	.size	_ZN5boost5arrayIcLm40EE4dataEv, .-_ZN5boost5arrayIcLm40EE4dataEv
	.section	.rodata
.LC18:
	.string	" in "
	.section	.text._ZN5boost10stacktrace6detail19to_string_impl_baseINS1_23to_string_using_nothingEEclB5cxx11EPKv,"axG",@progbits,_ZN5boost10stacktrace6detail19to_string_impl_baseINS1_23to_string_using_nothingEEclB5cxx11EPKv,comdat
	.align 2
	.weak	_ZN5boost10stacktrace6detail19to_string_impl_baseINS1_23to_string_using_nothingEEclB5cxx11EPKv
	.type	_ZN5boost10stacktrace6detail19to_string_impl_baseINS1_23to_string_using_nothingEEclB5cxx11EPKv, @function
_ZN5boost10stacktrace6detail19to_string_impl_baseINS1_23to_string_using_nothingEEclB5cxx11EPKv:
.LFB15707:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5clearEv@PLT
	movq	-96(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5boost10stacktrace6detail23to_string_using_nothing21prepare_function_nameEPKv
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L296
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv@PLT
	movq	%rax, %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5boost4core8demangleB5cxx11EPKc
	movq	-96(%rbp), %rax
	leaq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_@PLT
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L297
.L296:
	leaq	-48(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5boost10stacktrace6detail12to_hex_arrayEPKv
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5boost5arrayIcLm19EE4dataEv
	movq	%rax, %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc@PLT
.L297:
	movq	-96(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNK5boost10stacktrace6detail23to_string_using_nothing23prepare_source_locationEPKv
	testb	%al, %al
	je	.L298
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_@PLT
	jmp	.L301
.L298:
	movq	-104(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5boost10stacktrace6detail20location_from_symbolC1EPKv
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5boost10stacktrace6detail20location_from_symbol5emptyEv
	xorl	$1, %eax
	testb	%al, %al
	je	.L300
	movq	-96(%rbp), %rax
	leaq	.LC18(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc@PLT
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5boost10stacktrace6detail20location_from_symbol4nameEv
	movq	%rax, %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc@PLT
.L300:
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_@PLT
.L301:
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L302
	call	__stack_chk_fail@PLT
.L302:
	movq	-88(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15707:
	.size	_ZN5boost10stacktrace6detail19to_string_impl_baseINS1_23to_string_using_nothingEEclB5cxx11EPKv, .-_ZN5boost10stacktrace6detail19to_string_impl_baseINS1_23to_string_using_nothingEEclB5cxx11EPKv
	.section	.text._ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE12_Vector_implD5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE12_Vector_implD2Ev, @function
_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE12_Vector_implD2Ev:
.LFB15715:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIN5boost10stacktrace5frameEED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15715:
	.size	_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE12_Vector_implD1Ev,_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EEC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EEC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EEC2Ev
	.type	_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EEC2Ev, @function
_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EEC2Ev:
.LFB15717:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE12_Vector_implC1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15717:
	.size	_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EEC2Ev, .-_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EEC2Ev
	.weak	_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EEC1Ev
	.set	_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EEC1Ev,_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EEC2Ev
	.section	.text._ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EEC2Ev,"axG",@progbits,_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EEC5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EEC2Ev
	.type	_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EEC2Ev, @function
_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EEC2Ev:
.LFB15719:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15719:
	.size	_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EEC2Ev, .-_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EEC2Ev
	.weak	_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EEC1Ev
	.set	_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EEC1Ev,_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EEC2Ev
	.section	.text._ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EED2Ev,"axG",@progbits,_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EED5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EED2Ev
	.type	_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EED2Ev, @function
_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EED2Ev:
.LFB15724:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA15724
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIPN5boost10stacktrace5frameES2_EvT_S4_RSaIT0_E
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15724:
	.section	.gcc_except_table
.LLSDA15724:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE15724-.LLSDACSB15724
.LLSDACSB15724:
.LLSDACSE15724:
	.section	.text._ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EED2Ev,"axG",@progbits,_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EED5Ev,comdat
	.size	_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EED2Ev, .-_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EED2Ev
	.weak	_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EED1Ev
	.set	_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EED1Ev,_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EED2Ev
	.section	.text._ZN5boost10stacktracelsIcSt11char_traitsIcESaINS0_5frameEEEERSt13basic_ostreamIT_T0_ESA_RKNS0_16basic_stacktraceIT1_EE,"axG",@progbits,_ZN5boost10stacktracelsIcSt11char_traitsIcESaINS0_5frameEEEERSt13basic_ostreamIT_T0_ESA_RKNS0_16basic_stacktraceIT1_EE,comdat
	.weak	_ZN5boost10stacktracelsIcSt11char_traitsIcESaINS0_5frameEEEERSt13basic_ostreamIT_T0_ESA_RKNS0_16basic_stacktraceIT1_EE
	.type	_ZN5boost10stacktracelsIcSt11char_traitsIcESaINS0_5frameEEEERSt13basic_ostreamIT_T0_ESA_RKNS0_16basic_stacktraceIT1_EE, @function
_ZN5boost10stacktracelsIcSt11char_traitsIcESaINS0_5frameEEEERSt13basic_ostreamIT_T0_ESA_RKNS0_16basic_stacktraceIT1_EE:
.LFB15726:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA15726
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-64(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB23:
	call	_ZN5boost10stacktrace9to_stringISaINS0_5frameEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_16basic_stacktraceIT_EE
.LEHE23:
	leaq	-64(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB24:
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
.LEHE24:
	movq	%rax, %rbx
	nop
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movq	%rbx, %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L310
	jmp	.L312
.L311:
	endbr64
	movq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB25:
	call	_Unwind_Resume@PLT
.LEHE25:
.L312:
	call	__stack_chk_fail@PLT
.L310:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15726:
	.section	.gcc_except_table
.LLSDA15726:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE15726-.LLSDACSB15726
.LLSDACSB15726:
	.uleb128 .LEHB23-.LFB15726
	.uleb128 .LEHE23-.LEHB23
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB24-.LFB15726
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L311-.LFB15726
	.uleb128 0
	.uleb128 .LEHB25-.LFB15726
	.uleb128 .LEHE25-.LEHB25
	.uleb128 0
	.uleb128 0
.LLSDACSE15726:
	.section	.text._ZN5boost10stacktracelsIcSt11char_traitsIcESaINS0_5frameEEEERSt13basic_ostreamIT_T0_ESA_RKNS0_16basic_stacktraceIT1_EE,"axG",@progbits,_ZN5boost10stacktracelsIcSt11char_traitsIcESaINS0_5frameEEEERSt13basic_ostreamIT_T0_ESA_RKNS0_16basic_stacktraceIT1_EE,comdat
	.size	_ZN5boost10stacktracelsIcSt11char_traitsIcESaINS0_5frameEEEERSt13basic_ostreamIT_T0_ESA_RKNS0_16basic_stacktraceIT1_EE, .-_ZN5boost10stacktracelsIcSt11char_traitsIcESaINS0_5frameEEEERSt13basic_ostreamIT_T0_ESA_RKNS0_16basic_stacktraceIT1_EE
	.section	.text._ZSt17throw_with_nestedIRA91_KcEvOT_,"axG",@progbits,_ZSt17throw_with_nestedIRA91_KcEvOT_,comdat
	.weak	_ZSt17throw_with_nestedIRA91_KcEvOT_
	.type	_ZSt17throw_with_nestedIRA91_KcEvOT_, @function
_ZSt17throw_with_nestedIRA91_KcEvOT_:
.LFB15727:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRA91_KcEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %rdi
	call	_ZSt24__throw_with_nested_implIRA91_KcEvOT_St17integral_constantIbLb0EE
	.cfi_endproc
.LFE15727:
	.size	_ZSt17throw_with_nestedIRA91_KcEvOT_, .-_ZSt17throw_with_nestedIRA91_KcEvOT_
	.section	.text._ZSt17throw_with_nestedISt11range_errorEvOT_,"axG",@progbits,_ZSt17throw_with_nestedISt11range_errorEvOT_,comdat
	.weak	_ZSt17throw_with_nestedISt11range_errorEvOT_
	.type	_ZSt17throw_with_nestedISt11range_errorEvOT_, @function
_ZSt17throw_with_nestedISt11range_errorEvOT_:
.LFB15728:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt11range_errorEOT_RNSt16remove_referenceIS1_E4typeE
	movq	%rax, %rdi
	call	_ZSt24__throw_with_nested_implISt11range_errorEvOT_St17integral_constantIbLb1EE
	.cfi_endproc
.LFE15728:
	.size	_ZSt17throw_with_nestedISt11range_errorEvOT_, .-_ZSt17throw_with_nestedISt11range_errorEvOT_
	.section	.text._ZNKSt6vectorI5Vec8fSaIS0_EE4sizeEv,"axG",@progbits,_ZNKSt6vectorI5Vec8fSaIS0_EE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorI5Vec8fSaIS0_EE4sizeEv
	.type	_ZNKSt6vectorI5Vec8fSaIS0_EE4sizeEv, @function
_ZNKSt6vectorI5Vec8fSaIS0_EE4sizeEv:
.LFB15730:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rdx, %rax
	subq	%rcx, %rax
	sarq	$5, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15730:
	.size	_ZNKSt6vectorI5Vec8fSaIS0_EE4sizeEv, .-_ZNKSt6vectorI5Vec8fSaIS0_EE4sizeEv
	.section	.text._ZNSt6vectorI5Vec8fSaIS0_EEixEm,"axG",@progbits,_ZNSt6vectorI5Vec8fSaIS0_EEixEm,comdat
	.align 2
	.weak	_ZNSt6vectorI5Vec8fSaIS0_EEixEm
	.type	_ZNSt6vectorI5Vec8fSaIS0_EEixEm, @function
_ZNSt6vectorI5Vec8fSaIS0_EEixEm:
.LFB15731:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	salq	$5, %rax
	addq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15731:
	.size	_ZNSt6vectorI5Vec8fSaIS0_EEixEm, .-_ZNSt6vectorI5Vec8fSaIS0_EEixEm
	.section	.text._ZNSt12_Vector_baseI5Vec8fSaIS0_EE12_Vector_implC2Ev,"axG",@progbits,_ZNSt12_Vector_baseI5Vec8fSaIS0_EE12_Vector_implC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI5Vec8fSaIS0_EE12_Vector_implC2Ev
	.type	_ZNSt12_Vector_baseI5Vec8fSaIS0_EE12_Vector_implC2Ev, @function
_ZNSt12_Vector_baseI5Vec8fSaIS0_EE12_Vector_implC2Ev:
.LFB15733:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaI5Vec8fEC2Ev
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI5Vec8fSaIS0_EE17_Vector_impl_dataC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15733:
	.size	_ZNSt12_Vector_baseI5Vec8fSaIS0_EE12_Vector_implC2Ev, .-_ZNSt12_Vector_baseI5Vec8fSaIS0_EE12_Vector_implC2Ev
	.weak	_ZNSt12_Vector_baseI5Vec8fSaIS0_EE12_Vector_implC1Ev
	.set	_ZNSt12_Vector_baseI5Vec8fSaIS0_EE12_Vector_implC1Ev,_ZNSt12_Vector_baseI5Vec8fSaIS0_EE12_Vector_implC2Ev
	.section	.text._ZNSaI5Vec8fED2Ev,"axG",@progbits,_ZNSaI5Vec8fED5Ev,comdat
	.align 2
	.weak	_ZNSaI5Vec8fED2Ev
	.type	_ZNSaI5Vec8fED2Ev, @function
_ZNSaI5Vec8fED2Ev:
.LFB15736:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorI5Vec8fED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15736:
	.size	_ZNSaI5Vec8fED2Ev, .-_ZNSaI5Vec8fED2Ev
	.weak	_ZNSaI5Vec8fED1Ev
	.set	_ZNSaI5Vec8fED1Ev,_ZNSaI5Vec8fED2Ev
	.section	.text._ZNSt12_Vector_baseI5Vec8fSaIS0_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseI5Vec8fSaIS0_EED5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI5Vec8fSaIS0_EED2Ev
	.type	_ZNSt12_Vector_baseI5Vec8fSaIS0_EED2Ev, @function
_ZNSt12_Vector_baseI5Vec8fSaIS0_EED2Ev:
.LFB15739:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA15739
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rdx, %rax
	subq	%rcx, %rax
	sarq	$5, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI5Vec8fSaIS0_EE13_M_deallocateEPS0_m
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI5Vec8fSaIS0_EE12_Vector_implD1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15739:
	.section	.gcc_except_table
.LLSDA15739:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE15739-.LLSDACSB15739
.LLSDACSB15739:
.LLSDACSE15739:
	.section	.text._ZNSt12_Vector_baseI5Vec8fSaIS0_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseI5Vec8fSaIS0_EED5Ev,comdat
	.size	_ZNSt12_Vector_baseI5Vec8fSaIS0_EED2Ev, .-_ZNSt12_Vector_baseI5Vec8fSaIS0_EED2Ev
	.weak	_ZNSt12_Vector_baseI5Vec8fSaIS0_EED1Ev
	.set	_ZNSt12_Vector_baseI5Vec8fSaIS0_EED1Ev,_ZNSt12_Vector_baseI5Vec8fSaIS0_EED2Ev
	.section	.text._ZNSt6vectorI5Vec8fSaIS0_EED2Ev,"axG",@progbits,_ZNSt6vectorI5Vec8fSaIS0_EED5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorI5Vec8fSaIS0_EED2Ev
	.type	_ZNSt6vectorI5Vec8fSaIS0_EED2Ev, @function
_ZNSt6vectorI5Vec8fSaIS0_EED2Ev:
.LFB15742:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA15742
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI5Vec8fSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIP5Vec8fS0_EvT_S2_RSaIT0_E
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI5Vec8fSaIS0_EED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15742:
	.section	.gcc_except_table
.LLSDA15742:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE15742-.LLSDACSB15742
.LLSDACSB15742:
.LLSDACSE15742:
	.section	.text._ZNSt6vectorI5Vec8fSaIS0_EED2Ev,"axG",@progbits,_ZNSt6vectorI5Vec8fSaIS0_EED5Ev,comdat
	.size	_ZNSt6vectorI5Vec8fSaIS0_EED2Ev, .-_ZNSt6vectorI5Vec8fSaIS0_EED2Ev
	.weak	_ZNSt6vectorI5Vec8fSaIS0_EED1Ev
	.set	_ZNSt6vectorI5Vec8fSaIS0_EED1Ev,_ZNSt6vectorI5Vec8fSaIS0_EED2Ev
	.section	.text._ZNSt6vectorI5Vec8fSaIS0_EE9push_backEOS0_,"axG",@progbits,_ZNSt6vectorI5Vec8fSaIS0_EE9push_backEOS0_,comdat
	.align 2
	.weak	_ZNSt6vectorI5Vec8fSaIS0_EE9push_backEOS0_
	.type	_ZNSt6vectorI5Vec8fSaIS0_EE9push_backEOS0_, @function
_ZNSt6vectorI5Vec8fSaIS0_EE9push_backEOS0_:
.LFB15744:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIR5Vec8fEONSt16remove_referenceIT_E4typeEOS3_
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorI5Vec8fSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15744:
	.size	_ZNSt6vectorI5Vec8fSaIS0_EE9push_backEOS0_, .-_ZNSt6vectorI5Vec8fSaIS0_EE9push_backEOS0_
	.section	.text._ZNSt12_Vector_baseI5Vec8fSaIS0_EE12_Vector_implC2EOS3_,"axG",@progbits,_ZNSt12_Vector_baseI5Vec8fSaIS0_EE12_Vector_implC5EOS3_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI5Vec8fSaIS0_EE12_Vector_implC2EOS3_
	.type	_ZNSt12_Vector_baseI5Vec8fSaIS0_EE12_Vector_implC2EOS3_, @function
_ZNSt12_Vector_baseI5Vec8fSaIS0_EE12_Vector_implC2EOS3_:
.LFB15746:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRNSt12_Vector_baseI5Vec8fSaIS1_EE12_Vector_implEEONSt16remove_referenceIT_E4typeEOS7_
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSaI5Vec8fEC2ERKS0_
	movq	-24(%rbp), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRNSt12_Vector_baseI5Vec8fSaIS1_EE12_Vector_implEEONSt16remove_referenceIT_E4typeEOS7_
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt12_Vector_baseI5Vec8fSaIS0_EE17_Vector_impl_dataC2EOS3_
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15746:
	.size	_ZNSt12_Vector_baseI5Vec8fSaIS0_EE12_Vector_implC2EOS3_, .-_ZNSt12_Vector_baseI5Vec8fSaIS0_EE12_Vector_implC2EOS3_
	.weak	_ZNSt12_Vector_baseI5Vec8fSaIS0_EE12_Vector_implC1EOS3_
	.set	_ZNSt12_Vector_baseI5Vec8fSaIS0_EE12_Vector_implC1EOS3_,_ZNSt12_Vector_baseI5Vec8fSaIS0_EE12_Vector_implC2EOS3_
	.section	.text._ZNSt10_Head_baseILm0ESt6vectorI5Vec8fSaIS1_EELb0EED2Ev,"axG",@progbits,_ZNSt10_Head_baseILm0ESt6vectorI5Vec8fSaIS1_EELb0EED5Ev,comdat
	.align 2
	.weak	_ZNSt10_Head_baseILm0ESt6vectorI5Vec8fSaIS1_EELb0EED2Ev
	.type	_ZNSt10_Head_baseILm0ESt6vectorI5Vec8fSaIS1_EELb0EED2Ev, @function
_ZNSt10_Head_baseILm0ESt6vectorI5Vec8fSaIS1_EELb0EED2Ev:
.LFB15758:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorI5Vec8fSaIS0_EED1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15758:
	.size	_ZNSt10_Head_baseILm0ESt6vectorI5Vec8fSaIS1_EELb0EED2Ev, .-_ZNSt10_Head_baseILm0ESt6vectorI5Vec8fSaIS1_EELb0EED2Ev
	.weak	_ZNSt10_Head_baseILm0ESt6vectorI5Vec8fSaIS1_EELb0EED1Ev
	.set	_ZNSt10_Head_baseILm0ESt6vectorI5Vec8fSaIS1_EELb0EED1Ev,_ZNSt10_Head_baseILm0ESt6vectorI5Vec8fSaIS1_EELb0EED2Ev
	.section	.text._ZNSt11_Tuple_implILm0EJSt6vectorI5Vec8fSaIS1_EEEED2Ev,"axG",@progbits,_ZNSt11_Tuple_implILm0EJSt6vectorI5Vec8fSaIS1_EEEED5Ev,comdat
	.align 2
	.weak	_ZNSt11_Tuple_implILm0EJSt6vectorI5Vec8fSaIS1_EEEED2Ev
	.type	_ZNSt11_Tuple_implILm0EJSt6vectorI5Vec8fSaIS1_EEEED2Ev, @function
_ZNSt11_Tuple_implILm0EJSt6vectorI5Vec8fSaIS1_EEEED2Ev:
.LFB15760:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10_Head_baseILm0ESt6vectorI5Vec8fSaIS1_EELb0EED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15760:
	.size	_ZNSt11_Tuple_implILm0EJSt6vectorI5Vec8fSaIS1_EEEED2Ev, .-_ZNSt11_Tuple_implILm0EJSt6vectorI5Vec8fSaIS1_EEEED2Ev
	.weak	_ZNSt11_Tuple_implILm0EJSt6vectorI5Vec8fSaIS1_EEEED1Ev
	.set	_ZNSt11_Tuple_implILm0EJSt6vectorI5Vec8fSaIS1_EEEED1Ev,_ZNSt11_Tuple_implILm0EJSt6vectorI5Vec8fSaIS1_EEEED2Ev
	.section	.text._ZNSt5tupleIJSt6vectorI5Vec8fSaIS1_EEEED2Ev,"axG",@progbits,_ZNSt5tupleIJSt6vectorI5Vec8fSaIS1_EEEED5Ev,comdat
	.align 2
	.weak	_ZNSt5tupleIJSt6vectorI5Vec8fSaIS1_EEEED2Ev
	.type	_ZNSt5tupleIJSt6vectorI5Vec8fSaIS1_EEEED2Ev, @function
_ZNSt5tupleIJSt6vectorI5Vec8fSaIS1_EEEED2Ev:
.LFB15762:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm0EJSt6vectorI5Vec8fSaIS1_EEEED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15762:
	.size	_ZNSt5tupleIJSt6vectorI5Vec8fSaIS1_EEEED2Ev, .-_ZNSt5tupleIJSt6vectorI5Vec8fSaIS1_EEEED2Ev
	.weak	_ZNSt5tupleIJSt6vectorI5Vec8fSaIS1_EEEED1Ev
	.set	_ZNSt5tupleIJSt6vectorI5Vec8fSaIS1_EEEED1Ev,_ZNSt5tupleIJSt6vectorI5Vec8fSaIS1_EEEED2Ev
	.section	.rodata
	.align 8
.LC19:
	.string	"benchmark::State::StateIterator& benchmark::State::StateIterator::operator++()"
	.align 8
.LC20:
	.string	"/usr/include/benchmark/benchmark.h"
.LC21:
	.string	"cached_ > 0"
	.text
	.type	_Z8runbenchIJSt6vectorI5Vec8fSaIS1_EEEEvRN9benchmark5StateEDpOT_, @function
_Z8runbenchIJSt6vectorI5Vec8fSaIS1_EEEEvRN9benchmark5StateEDpOT_:
.LFB15748:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA15748
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$216, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -200(%rbp)
	movq	%rsi, -208(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRSt6vectorI5Vec8fSaIS1_EEEONSt16remove_referenceIT_E4typeEOS6_
	movq	%rax, %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB26:
	call	_ZSt10make_tupleIJSt6vectorI5Vec8fSaIS1_EEEESt5tupleIJDpNSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeEEEDpOS7_
.LEHE26:
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt3getILm0EJSt6vectorI5Vec8fSaIS1_EEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_
	movq	%rax, %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB27:
	call	_ZNSt6vectorI5Vec8fSaIS0_EEC1ERKS2_
.LEHE27:
	movq	-200(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movzbl	26(%rax), %eax
	testb	%al, %al
	je	.L331
	movl	$0, %eax
	jmp	.L332
.L331:
	movq	-152(%rbp), %rax
	movq	16(%rax), %rax
.L332:
	movq	%rax, -48(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -40(%rbp)
	nop
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, -144(%rbp)
	movq	%rdx, -136(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
.LEHB28:
	call	_ZN9benchmark5State16StartKeepRunningEv@PLT
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	nop
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, -128(%rbp)
	movq	%rdx, -120(%rbp)
	jmp	.L335
.L341:
	nop
	leaq	-80(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorI5Vec8fSaIS0_EEC1ERKS2_
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_Z4testSt6vectorI5Vec8fSaIS0_EE
	movd	%xmm0, %eax
	movl	%eax, -180(%rbp)
	movss	-180(%rbp), %xmm0
	movss	%xmm0, -212(%rbp)
	nop
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorI5Vec8fSaIS0_EED1Ev
	movq	-144(%rbp), %rax
	testq	%rax, %rax
	jne	.L337
	leaq	.LC19(%rip), %rax
	movq	%rax, %rcx
	movl	$867, %edx
	leaq	.LC20(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC21(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L337:
	movq	-144(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -144(%rbp)
	nop
.L335:
	movq	-144(%rbp), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L339
	movl	$1, %eax
	jmp	.L340
.L339:
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9benchmark5State17FinishKeepRunningEv@PLT
.LEHE28:
	movl	$0, %eax
.L340:
	testb	%al, %al
	jne	.L341
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorI5Vec8fSaIS0_EED1Ev
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt5tupleIJSt6vectorI5Vec8fSaIS1_EEEED1Ev
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L344
	jmp	.L347
.L346:
	endbr64
	movq	%rax, %rbx
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorI5Vec8fSaIS0_EED1Ev
	jmp	.L343
.L345:
	endbr64
	movq	%rax, %rbx
.L343:
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt5tupleIJSt6vectorI5Vec8fSaIS1_EEEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB29:
	call	_Unwind_Resume@PLT
.LEHE29:
.L347:
	call	__stack_chk_fail@PLT
.L344:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15748:
	.section	.gcc_except_table
.LLSDA15748:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE15748-.LLSDACSB15748
.LLSDACSB15748:
	.uleb128 .LEHB26-.LFB15748
	.uleb128 .LEHE26-.LEHB26
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB27-.LFB15748
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L345-.LFB15748
	.uleb128 0
	.uleb128 .LEHB28-.LFB15748
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L346-.LFB15748
	.uleb128 0
	.uleb128 .LEHB29-.LFB15748
	.uleb128 .LEHE29-.LEHB29
	.uleb128 0
	.uleb128 0
.LLSDACSE15748:
	.text
	.size	_Z8runbenchIJSt6vectorI5Vec8fSaIS1_EEEEvRN9benchmark5StateEDpOT_, .-_Z8runbenchIJSt6vectorI5Vec8fSaIS1_EEEEvRN9benchmark5StateEDpOT_
	.section	.text._ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_,"axG",@progbits,_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_,comdat
	.weak	_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_
	.type	_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, @function
_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_:
.LFB15838:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15838:
	.size	_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, .-_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_
	.section	.rodata
	.align 8
.LC22:
	.string	"basic_string::_M_construct null not valid"
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag:
.LFB15837:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA15837
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_
	testb	%al, %al
	je	.L351
	movq	-48(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.L351
	movl	$1, %eax
	jmp	.L352
.L351:
	movl	$0, %eax
.L352:
	testb	%al, %al
	je	.L353
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdi
.LEHB30:
	call	_ZSt19__throw_logic_errorPKc@PLT
.L353:
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$15, %rax
	jbe	.L354
	leaq	-32(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc@PLT
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm@PLT
.LEHE30:
.L354:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
.LEHB31:
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv@PLT
.LEHE31:
	movq	%rax, %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_@PLT
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB32:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm@PLT
.LEHE32:
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L357
	jmp	.L360
.L358:
	endbr64
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
.LEHB33:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	call	__cxa_rethrow@PLT
.LEHE33:
.L359:
	endbr64
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB34:
	call	_Unwind_Resume@PLT
.LEHE34:
.L360:
	call	__stack_chk_fail@PLT
.L357:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15837:
	.section	.gcc_except_table
	.align 4
.LLSDA15837:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT15837-.LLSDATTD15837
.LLSDATTD15837:
	.byte	0x1
	.uleb128 .LLSDACSE15837-.LLSDACSB15837
.LLSDACSB15837:
	.uleb128 .LEHB30-.LFB15837
	.uleb128 .LEHE30-.LEHB30
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB31-.LFB15837
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L358-.LFB15837
	.uleb128 0x1
	.uleb128 .LEHB32-.LFB15837
	.uleb128 .LEHE32-.LEHB32
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB33-.LFB15837
	.uleb128 .LEHE33-.LEHB33
	.uleb128 .L359-.LFB15837
	.uleb128 0
	.uleb128 .LEHB34-.LFB15837
	.uleb128 .LEHE34-.LEHB34
	.uleb128 0
	.uleb128 0
.LLSDACSE15837:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT15837:
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,comdat
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
	.section	.text._ZN5boost5arrayIcLm19EE4backEv,"axG",@progbits,_ZN5boost5arrayIcLm19EE4backEv,comdat
	.align 2
	.weak	_ZN5boost5arrayIcLm19EE4backEv
	.type	_ZN5boost5arrayIcLm19EE4backEv, @function
_ZN5boost5arrayIcLm19EE4backEv:
.LFB16055:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$18, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16055:
	.size	_ZN5boost5arrayIcLm19EE4backEv, .-_ZN5boost5arrayIcLm19EE4backEv
	.section	.text._ZN5boost5arrayIcLm19EE4dataEv,"axG",@progbits,_ZN5boost5arrayIcLm19EE4dataEv,comdat
	.align 2
	.weak	_ZN5boost5arrayIcLm19EE4dataEv
	.type	_ZN5boost5arrayIcLm19EE4dataEv, @function
_ZN5boost5arrayIcLm19EE4dataEv:
.LFB16056:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16056:
	.size	_ZN5boost5arrayIcLm19EE4dataEv, .-_ZN5boost5arrayIcLm19EE4dataEv
	.section	.text._ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE12_Vector_implC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE12_Vector_implC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE12_Vector_implC2Ev
	.type	_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE12_Vector_implC2Ev, @function
_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE12_Vector_implC2Ev:
.LFB16070:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIN5boost10stacktrace5frameEEC2Ev
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE17_Vector_impl_dataC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16070:
	.size	_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE12_Vector_implC2Ev, .-_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE12_Vector_implC2Ev
	.weak	_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE12_Vector_implC1Ev
	.set	_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE12_Vector_implC1Ev,_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE12_Vector_implC2Ev
	.section	.text._ZNSaIN5boost10stacktrace5frameEED2Ev,"axG",@progbits,_ZNSaIN5boost10stacktrace5frameEED5Ev,comdat
	.align 2
	.weak	_ZNSaIN5boost10stacktrace5frameEED2Ev
	.type	_ZNSaIN5boost10stacktrace5frameEED2Ev, @function
_ZNSaIN5boost10stacktrace5frameEED2Ev:
.LFB16073:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16073:
	.size	_ZNSaIN5boost10stacktrace5frameEED2Ev, .-_ZNSaIN5boost10stacktrace5frameEED2Ev
	.weak	_ZNSaIN5boost10stacktrace5frameEED1Ev
	.set	_ZNSaIN5boost10stacktrace5frameEED1Ev,_ZNSaIN5boost10stacktrace5frameEED2Ev
	.section	.text._ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EED5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EED2Ev
	.type	_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EED2Ev, @function
_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EED2Ev:
.LFB16076:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA16076
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rdx, %rax
	subq	%rcx, %rax
	sarq	$3, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE13_M_deallocateEPS2_m
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE12_Vector_implD1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16076:
	.section	.gcc_except_table
.LLSDA16076:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE16076-.LLSDACSB16076
.LLSDACSB16076:
.LLSDACSE16076:
	.section	.text._ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EED5Ev,comdat
	.size	_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EED2Ev, .-_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EED2Ev
	.weak	_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EED1Ev
	.set	_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EED1Ev,_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EED2Ev
	.section	.text._ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEE4initEmm,"axG",@progbits,_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEE4initEmm,comdat
	.align 2
	.weak	_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEE4initEmm
	.type	_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEE4initEmm, @function
_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEE4initEmm:
.LFB16078:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA16078
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$1152, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -1144(%rbp)
	movq	%rsi, -1152(%rbp)
	movq	%rdx, -1160(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	$128, -1112(%rbp)
	movq	-1160(%rbp), %rax
	testq	%rax, %rax
	je	.L391
	movq	-1152(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-1160(%rbp), %rax
	cmpq	$128, %rax
	ja	.L371
	leaq	-1160(%rbp), %rax
	movq	(%rax), %rax
	jmp	.L372
.L371:
	movl	$128, %eax
.L372:
	leaq	-1056(%rbp), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	_ZN5boost10stacktrace6detail18this_thread_frames7collectEPPKvmm
	movq	%rax, -1104(%rbp)
	cmpq	$127, -1104(%rbp)
	jbe	.L373
	movq	-1160(%rbp), %rax
	cmpq	%rax, -1104(%rbp)
	jne	.L374
.L373:
	movq	-1104(%rbp), %rdx
	leaq	-1056(%rbp), %rcx
	movq	-1144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB35:
	call	_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEE4fillEPPKvm
.LEHE35:
	nop
	jmp	.L368
.L374:
	movq	-1144(%rbp), %rdx
	leaq	-1122(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNKSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE13get_allocatorEv
	leaq	-1122(%rbp), %rdx
	leaq	-1121(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSaIPKvEC1IN5boost10stacktrace5frameEEERKSaIT_E
	movq	$0, -1120(%rbp)
	leaq	-1121(%rbp), %rcx
	leaq	-1120(%rbp), %rdx
	leaq	-1088(%rbp), %rax
	movl	$256, %esi
	movq	%rax, %rdi
.LEHB36:
	call	_ZNSt6vectorIPKvSaIS1_EEC1EmRKS1_RKS2_
.LEHE36:
	leaq	-1121(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIPKvED1Ev
	leaq	-1122(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIN5boost10stacktrace5frameEED1Ev
.L383:
	movq	-1152(%rbp), %rax
	leaq	1(%rax), %r12
	leaq	-1088(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIPKvSaIS1_EE4sizeEv
	movq	-1160(%rbp), %rdx
	cmpq	%rdx, %rax
	jnb	.L376
	leaq	-1088(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIPKvSaIS1_EE4sizeEv
	movq	%rax, %rbx
	jmp	.L377
.L376:
	movq	-1160(%rbp), %rbx
.L377:
	leaq	-1088(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIPKvSaIS1_EEixEm
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZN5boost10stacktrace6detail18this_thread_frames7collectEPPKvmm
	movq	%rax, -1096(%rbp)
	leaq	-1088(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIPKvSaIS1_EE4sizeEv
	cmpq	%rax, -1096(%rbp)
	jb	.L378
	movq	-1160(%rbp), %rax
	cmpq	%rax, -1096(%rbp)
	jne	.L379
.L378:
	movl	$1, %eax
	jmp	.L380
.L379:
	movl	$0, %eax
.L380:
	testb	%al, %al
	je	.L381
	leaq	-1088(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIPKvSaIS1_EEixEm
	movq	%rax, %rcx
	movq	-1096(%rbp), %rdx
	movq	-1144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB37:
	call	_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEE4fillEPPKvm
	movl	$0, %ebx
	jmp	.L382
.L381:
	leaq	-1088(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIPKvSaIS1_EE4sizeEv
	leaq	(%rax,%rax), %rdx
	leaq	-1088(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIPKvSaIS1_EE6resizeEm
.LEHE37:
	leaq	-1088(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIPKvSaIS1_EE4sizeEv
	movq	%rax, %rbx
	leaq	-1088(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIPKvSaIS1_EE8max_sizeEv
	cmpq	%rax, %rbx
	setb	%al
	testb	%al, %al
	jne	.L383
	movl	$1, %ebx
.L382:
	leaq	-1088(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIPKvSaIS1_EED1Ev
	cmpl	$1, %ebx
	jmp	.L368
.L389:
	endbr64
	movq	%rax, %rbx
	leaq	-1121(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIPKvED1Ev
	leaq	-1122(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIN5boost10stacktrace5frameEED1Ev
	movq	%rbx, %rax
	jmp	.L385
.L390:
	endbr64
	movq	%rax, %rbx
	leaq	-1088(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIPKvSaIS1_EED1Ev
	movq	%rbx, %rax
	jmp	.L385
.L388:
	endbr64
.L385:
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
.LEHB38:
	call	__cxa_end_catch@PLT
.LEHE38:
	jmp	.L368
.L391:
	nop
.L368:
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L387
	call	__stack_chk_fail@PLT
.L387:
	addq	$1152, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16078:
	.section	.gcc_except_table
	.align 4
.LLSDA16078:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT16078-.LLSDATTD16078
.LLSDATTD16078:
	.byte	0x1
	.uleb128 .LLSDACSE16078-.LLSDACSB16078
.LLSDACSB16078:
	.uleb128 .LEHB35-.LFB16078
	.uleb128 .LEHE35-.LEHB35
	.uleb128 .L388-.LFB16078
	.uleb128 0x1
	.uleb128 .LEHB36-.LFB16078
	.uleb128 .LEHE36-.LEHB36
	.uleb128 .L389-.LFB16078
	.uleb128 0x3
	.uleb128 .LEHB37-.LFB16078
	.uleb128 .LEHE37-.LEHB37
	.uleb128 .L390-.LFB16078
	.uleb128 0x3
	.uleb128 .LEHB38-.LFB16078
	.uleb128 .LEHE38-.LEHB38
	.uleb128 0
	.uleb128 0
.LLSDACSE16078:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align 4
	.long	0

.LLSDATT16078:
	.section	.text._ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEE4initEmm,"axG",@progbits,_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEE4initEmm,comdat
	.size	_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEE4initEmm, .-_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEE4initEmm
	.section	.text._ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE19_M_get_Tp_allocatorEv, @function
_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE19_M_get_Tp_allocatorEv:
.LFB16079:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16079:
	.size	_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE19_M_get_Tp_allocatorEv
	.section	.text._ZSt8_DestroyIPN5boost10stacktrace5frameES2_EvT_S4_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIPN5boost10stacktrace5frameES2_EvT_S4_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIPN5boost10stacktrace5frameES2_EvT_S4_RSaIT0_E
	.type	_ZSt8_DestroyIPN5boost10stacktrace5frameES2_EvT_S4_RSaIT0_E, @function
_ZSt8_DestroyIPN5boost10stacktrace5frameES2_EvT_S4_RSaIT0_E:
.LFB16080:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIPN5boost10stacktrace5frameEEvT_S4_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16080:
	.size	_ZSt8_DestroyIPN5boost10stacktrace5frameES2_EvT_S4_RSaIT0_E, .-_ZSt8_DestroyIPN5boost10stacktrace5frameES2_EvT_S4_RSaIT0_E
	.section	.text._ZN5boost10stacktrace9to_stringISaINS0_5frameEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_16basic_stacktraceIT_EE,"axG",@progbits,_ZN5boost10stacktrace9to_stringISaINS0_5frameEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_16basic_stacktraceIT_EE,comdat
	.weak	_ZN5boost10stacktrace9to_stringISaINS0_5frameEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_16basic_stacktraceIT_EE
	.type	_ZN5boost10stacktrace9to_stringISaINS0_5frameEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_16basic_stacktraceIT_EE, @function
_ZN5boost10stacktrace9to_stringISaINS0_5frameEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_16basic_stacktraceIT_EE:
.LFB16081:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5boost10stacktrace16basic_stacktraceISaINS0_5frameEEEntEv
	testb	%al, %al
	je	.L396
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@PLT
	jmp	.L397
.L396:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5boost10stacktrace16basic_stacktraceISaINS0_5frameEEE4sizeEv
	movq	%rax, %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5boost10stacktrace16basic_stacktraceISaINS0_5frameEEE9as_vectorEv
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNKSt6vectorIN5boost10stacktrace5frameESaIS2_EEixEm
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN5boost10stacktrace6detail9to_stringB5cxx11EPKNS0_5frameEm
.L397:
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L398
	call	__stack_chk_fail@PLT
.L398:
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16081:
	.size	_ZN5boost10stacktrace9to_stringISaINS0_5frameEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_16basic_stacktraceIT_EE, .-_ZN5boost10stacktrace9to_stringISaINS0_5frameEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_16basic_stacktraceIT_EE
	.section	.text._ZSt7forwardIRA91_KcEOT_RNSt16remove_referenceIS3_E4typeE,"axG",@progbits,_ZSt7forwardIRA91_KcEOT_RNSt16remove_referenceIS3_E4typeE,comdat
	.weak	_ZSt7forwardIRA91_KcEOT_RNSt16remove_referenceIS3_E4typeE
	.type	_ZSt7forwardIRA91_KcEOT_RNSt16remove_referenceIS3_E4typeE, @function
_ZSt7forwardIRA91_KcEOT_RNSt16remove_referenceIS3_E4typeE:
.LFB16083:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16083:
	.size	_ZSt7forwardIRA91_KcEOT_RNSt16remove_referenceIS3_E4typeE, .-_ZSt7forwardIRA91_KcEOT_RNSt16remove_referenceIS3_E4typeE
	.section	.text._ZSt24__throw_with_nested_implIRA91_KcEvOT_St17integral_constantIbLb0EE,"axG",@progbits,_ZSt24__throw_with_nested_implIRA91_KcEvOT_St17integral_constantIbLb0EE,comdat
	.weak	_ZSt24__throw_with_nested_implIRA91_KcEvOT_St17integral_constantIbLb0EE
	.type	_ZSt24__throw_with_nested_implIRA91_KcEvOT_St17integral_constantIbLb0EE, @function
_ZSt24__throw_with_nested_implIRA91_KcEvOT_St17integral_constantIbLb0EE:
.LFB16084:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movl	$8, %edi
	call	__cxa_allocate_exception@PLT
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRA91_KcEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, (%rbx)
	movl	$0, %edx
	leaq	_ZTIPKc(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	__cxa_throw@PLT
	.cfi_endproc
.LFE16084:
	.size	_ZSt24__throw_with_nested_implIRA91_KcEvOT_St17integral_constantIbLb0EE, .-_ZSt24__throw_with_nested_implIRA91_KcEvOT_St17integral_constantIbLb0EE
	.section	.text._ZSt7forwardISt11range_errorEOT_RNSt16remove_referenceIS1_E4typeE,"axG",@progbits,_ZSt7forwardISt11range_errorEOT_RNSt16remove_referenceIS1_E4typeE,comdat
	.weak	_ZSt7forwardISt11range_errorEOT_RNSt16remove_referenceIS1_E4typeE
	.type	_ZSt7forwardISt11range_errorEOT_RNSt16remove_referenceIS1_E4typeE, @function
_ZSt7forwardISt11range_errorEOT_RNSt16remove_referenceIS1_E4typeE:
.LFB16085:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16085:
	.size	_ZSt7forwardISt11range_errorEOT_RNSt16remove_referenceIS1_E4typeE, .-_ZSt7forwardISt11range_errorEOT_RNSt16remove_referenceIS1_E4typeE
	.section	.text._ZNSt17_Nested_exceptionISt11range_errorED2Ev,"axG",@progbits,_ZNSt17_Nested_exceptionISt11range_errorED5Ev,comdat
	.align 2
	.weak	_ZNSt17_Nested_exceptionISt11range_errorED2Ev
	.type	_ZNSt17_Nested_exceptionISt11range_errorED2Ev, @function
_ZNSt17_Nested_exceptionISt11range_errorED2Ev:
.LFB16088:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	16+_ZTVSt17_Nested_exceptionISt11range_errorE(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	leaq	56+_ZTVSt17_Nested_exceptionISt11range_errorE(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	_ZNSt16nested_exceptionD2Ev@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11range_errorD2Ev@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16088:
	.size	_ZNSt17_Nested_exceptionISt11range_errorED2Ev, .-_ZNSt17_Nested_exceptionISt11range_errorED2Ev
	.weak	_ZNSt17_Nested_exceptionISt11range_errorED1Ev
	.set	_ZNSt17_Nested_exceptionISt11range_errorED1Ev,_ZNSt17_Nested_exceptionISt11range_errorED2Ev
	.set	.LTHUNK0,_ZNSt17_Nested_exceptionISt11range_errorED1Ev
	.weak	_ZThn16_NSt17_Nested_exceptionISt11range_errorED1Ev
	.type	_ZThn16_NSt17_Nested_exceptionISt11range_errorED1Ev, @function
_ZThn16_NSt17_Nested_exceptionISt11range_errorED1Ev:
.LFB16897:
	.cfi_startproc
	endbr64
	subq	$16, %rdi
	jmp	.LTHUNK0
	.cfi_endproc
.LFE16897:
	.size	_ZThn16_NSt17_Nested_exceptionISt11range_errorED1Ev, .-_ZThn16_NSt17_Nested_exceptionISt11range_errorED1Ev
	.section	.text._ZNSt17_Nested_exceptionISt11range_errorED0Ev,"axG",@progbits,_ZNSt17_Nested_exceptionISt11range_errorED5Ev,comdat
	.align 2
	.weak	_ZNSt17_Nested_exceptionISt11range_errorED0Ev
	.type	_ZNSt17_Nested_exceptionISt11range_errorED0Ev, @function
_ZNSt17_Nested_exceptionISt11range_errorED0Ev:
.LFB16090:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt17_Nested_exceptionISt11range_errorED1Ev
	movq	-8(%rbp), %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16090:
	.size	_ZNSt17_Nested_exceptionISt11range_errorED0Ev, .-_ZNSt17_Nested_exceptionISt11range_errorED0Ev
	.set	.LTHUNK1,_ZNSt17_Nested_exceptionISt11range_errorED0Ev
	.weak	_ZThn16_NSt17_Nested_exceptionISt11range_errorED0Ev
	.type	_ZThn16_NSt17_Nested_exceptionISt11range_errorED0Ev, @function
_ZThn16_NSt17_Nested_exceptionISt11range_errorED0Ev:
.LFB16898:
	.cfi_startproc
	endbr64
	subq	$16, %rdi
	jmp	.LTHUNK1
	.cfi_endproc
.LFE16898:
	.size	_ZThn16_NSt17_Nested_exceptionISt11range_errorED0Ev, .-_ZThn16_NSt17_Nested_exceptionISt11range_errorED0Ev
	.section	.text._ZSt24__throw_with_nested_implISt11range_errorEvOT_St17integral_constantIbLb1EE,"axG",@progbits,_ZSt24__throw_with_nested_implISt11range_errorEvOT_St17integral_constantIbLb1EE,comdat
	.weak	_ZSt24__throw_with_nested_implISt11range_errorEvOT_St17integral_constantIbLb1EE
	.type	_ZSt24__throw_with_nested_implISt11range_errorEvOT_St17integral_constantIbLb1EE, @function
_ZSt24__throw_with_nested_implISt11range_errorEvOT_St17integral_constantIbLb1EE:
.LFB16086:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movl	$32, %edi
	call	__cxa_allocate_exception@PLT
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt11range_errorEOT_RNSt16remove_referenceIS1_E4typeE
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt17_Nested_exceptionISt11range_errorEC1EOS0_
	leaq	_ZNSt17_Nested_exceptionISt11range_errorED1Ev(%rip), %rax
	movq	%rax, %rdx
	leaq	_ZTISt17_Nested_exceptionISt11range_errorE(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	__cxa_throw@PLT
	.cfi_endproc
.LFE16086:
	.size	_ZSt24__throw_with_nested_implISt11range_errorEvOT_St17integral_constantIbLb1EE, .-_ZSt24__throw_with_nested_implISt11range_errorEvOT_St17integral_constantIbLb1EE
	.section	.text._ZNSaI5Vec8fEC2Ev,"axG",@progbits,_ZNSaI5Vec8fEC5Ev,comdat
	.align 2
	.weak	_ZNSaI5Vec8fEC2Ev
	.type	_ZNSaI5Vec8fEC2Ev, @function
_ZNSaI5Vec8fEC2Ev:
.LFB16092:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorI5Vec8fEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16092:
	.size	_ZNSaI5Vec8fEC2Ev, .-_ZNSaI5Vec8fEC2Ev
	.weak	_ZNSaI5Vec8fEC1Ev
	.set	_ZNSaI5Vec8fEC1Ev,_ZNSaI5Vec8fEC2Ev
	.section	.text._ZNSt12_Vector_baseI5Vec8fSaIS0_EE17_Vector_impl_dataC2Ev,"axG",@progbits,_ZNSt12_Vector_baseI5Vec8fSaIS0_EE17_Vector_impl_dataC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI5Vec8fSaIS0_EE17_Vector_impl_dataC2Ev
	.type	_ZNSt12_Vector_baseI5Vec8fSaIS0_EE17_Vector_impl_dataC2Ev, @function
_ZNSt12_Vector_baseI5Vec8fSaIS0_EE17_Vector_impl_dataC2Ev:
.LFB16095:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16095:
	.size	_ZNSt12_Vector_baseI5Vec8fSaIS0_EE17_Vector_impl_dataC2Ev, .-_ZNSt12_Vector_baseI5Vec8fSaIS0_EE17_Vector_impl_dataC2Ev
	.weak	_ZNSt12_Vector_baseI5Vec8fSaIS0_EE17_Vector_impl_dataC1Ev
	.set	_ZNSt12_Vector_baseI5Vec8fSaIS0_EE17_Vector_impl_dataC1Ev,_ZNSt12_Vector_baseI5Vec8fSaIS0_EE17_Vector_impl_dataC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorI5Vec8fED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI5Vec8fED5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorI5Vec8fED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorI5Vec8fED2Ev, @function
_ZN9__gnu_cxx13new_allocatorI5Vec8fED2Ev:
.LFB16098:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16098:
	.size	_ZN9__gnu_cxx13new_allocatorI5Vec8fED2Ev, .-_ZN9__gnu_cxx13new_allocatorI5Vec8fED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorI5Vec8fED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorI5Vec8fED1Ev,_ZN9__gnu_cxx13new_allocatorI5Vec8fED2Ev
	.section	.text._ZNSt12_Vector_baseI5Vec8fSaIS0_EE13_M_deallocateEPS0_m,"axG",@progbits,_ZNSt12_Vector_baseI5Vec8fSaIS0_EE13_M_deallocateEPS0_m,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI5Vec8fSaIS0_EE13_M_deallocateEPS0_m
	.type	_ZNSt12_Vector_baseI5Vec8fSaIS0_EE13_M_deallocateEPS0_m, @function
_ZNSt12_Vector_baseI5Vec8fSaIS0_EE13_M_deallocateEPS0_m:
.LFB16100:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L412
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaI5Vec8fEE10deallocateERS1_PS0_m
.L412:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16100:
	.size	_ZNSt12_Vector_baseI5Vec8fSaIS0_EE13_M_deallocateEPS0_m, .-_ZNSt12_Vector_baseI5Vec8fSaIS0_EE13_M_deallocateEPS0_m
	.section	.text._ZNSt12_Vector_baseI5Vec8fSaIS0_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseI5Vec8fSaIS0_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI5Vec8fSaIS0_EE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseI5Vec8fSaIS0_EE19_M_get_Tp_allocatorEv, @function
_ZNSt12_Vector_baseI5Vec8fSaIS0_EE19_M_get_Tp_allocatorEv:
.LFB16101:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16101:
	.size	_ZNSt12_Vector_baseI5Vec8fSaIS0_EE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseI5Vec8fSaIS0_EE19_M_get_Tp_allocatorEv
	.section	.text._ZSt8_DestroyIP5Vec8fS0_EvT_S2_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIP5Vec8fS0_EvT_S2_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIP5Vec8fS0_EvT_S2_RSaIT0_E
	.type	_ZSt8_DestroyIP5Vec8fS0_EvT_S2_RSaIT0_E, @function
_ZSt8_DestroyIP5Vec8fS0_EvT_S2_RSaIT0_E:
.LFB16102:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIP5Vec8fEvT_S2_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16102:
	.size	_ZSt8_DestroyIP5Vec8fS0_EvT_S2_RSaIT0_E, .-_ZSt8_DestroyIP5Vec8fS0_EvT_S2_RSaIT0_E
	.section	.text._ZSt4moveIR5Vec8fEONSt16remove_referenceIT_E4typeEOS3_,"axG",@progbits,_ZSt4moveIR5Vec8fEONSt16remove_referenceIT_E4typeEOS3_,comdat
	.weak	_ZSt4moveIR5Vec8fEONSt16remove_referenceIT_E4typeEOS3_
	.type	_ZSt4moveIR5Vec8fEONSt16remove_referenceIT_E4typeEOS3_, @function
_ZSt4moveIR5Vec8fEONSt16remove_referenceIT_E4typeEOS3_:
.LFB16103:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16103:
	.size	_ZSt4moveIR5Vec8fEONSt16remove_referenceIT_E4typeEOS3_, .-_ZSt4moveIR5Vec8fEONSt16remove_referenceIT_E4typeEOS3_
	.section	.text._ZNSt6vectorI5Vec8fSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_,"axG",@progbits,_ZNSt6vectorI5Vec8fSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_,comdat
	.align 2
	.weak	_ZNSt6vectorI5Vec8fSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_
	.type	_ZNSt6vectorI5Vec8fSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_, @function
_ZNSt6vectorI5Vec8fSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_:
.LFB16104:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	je	.L419
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardI5Vec8fEOT_RNSt16remove_referenceIS1_E4typeE
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaI5Vec8fEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L420
.L419:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardI5Vec8fEOT_RNSt16remove_referenceIS1_E4typeE
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorI5Vec8fSaIS0_EE3endEv
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorI5Vec8fSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_
.L420:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorI5Vec8fSaIS0_EE4backEv
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16104:
	.size	_ZNSt6vectorI5Vec8fSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_, .-_ZNSt6vectorI5Vec8fSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_
	.section	.text._ZSt4moveIRNSt12_Vector_baseI5Vec8fSaIS1_EE12_Vector_implEEONSt16remove_referenceIT_E4typeEOS7_,"axG",@progbits,_ZSt4moveIRNSt12_Vector_baseI5Vec8fSaIS1_EE12_Vector_implEEONSt16remove_referenceIT_E4typeEOS7_,comdat
	.weak	_ZSt4moveIRNSt12_Vector_baseI5Vec8fSaIS1_EE12_Vector_implEEONSt16remove_referenceIT_E4typeEOS7_
	.type	_ZSt4moveIRNSt12_Vector_baseI5Vec8fSaIS1_EE12_Vector_implEEONSt16remove_referenceIT_E4typeEOS7_, @function
_ZSt4moveIRNSt12_Vector_baseI5Vec8fSaIS1_EE12_Vector_implEEONSt16remove_referenceIT_E4typeEOS7_:
.LFB16106:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16106:
	.size	_ZSt4moveIRNSt12_Vector_baseI5Vec8fSaIS1_EE12_Vector_implEEONSt16remove_referenceIT_E4typeEOS7_, .-_ZSt4moveIRNSt12_Vector_baseI5Vec8fSaIS1_EE12_Vector_implEEONSt16remove_referenceIT_E4typeEOS7_
	.section	.text._ZNSaI5Vec8fEC2ERKS0_,"axG",@progbits,_ZNSaI5Vec8fEC5ERKS0_,comdat
	.align 2
	.weak	_ZNSaI5Vec8fEC2ERKS0_
	.type	_ZNSaI5Vec8fEC2ERKS0_, @function
_ZNSaI5Vec8fEC2ERKS0_:
.LFB16108:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorI5Vec8fEC2ERKS2_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16108:
	.size	_ZNSaI5Vec8fEC2ERKS0_, .-_ZNSaI5Vec8fEC2ERKS0_
	.weak	_ZNSaI5Vec8fEC1ERKS0_
	.set	_ZNSaI5Vec8fEC1ERKS0_,_ZNSaI5Vec8fEC2ERKS0_
	.section	.text._ZNSt12_Vector_baseI5Vec8fSaIS0_EE17_Vector_impl_dataC2EOS3_,"axG",@progbits,_ZNSt12_Vector_baseI5Vec8fSaIS0_EE17_Vector_impl_dataC5EOS3_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI5Vec8fSaIS0_EE17_Vector_impl_dataC2EOS3_
	.type	_ZNSt12_Vector_baseI5Vec8fSaIS0_EE17_Vector_impl_dataC2EOS3_, @function
_ZNSt12_Vector_baseI5Vec8fSaIS0_EE17_Vector_impl_dataC2EOS3_:
.LFB16111:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16111:
	.size	_ZNSt12_Vector_baseI5Vec8fSaIS0_EE17_Vector_impl_dataC2EOS3_, .-_ZNSt12_Vector_baseI5Vec8fSaIS0_EE17_Vector_impl_dataC2EOS3_
	.weak	_ZNSt12_Vector_baseI5Vec8fSaIS0_EE17_Vector_impl_dataC1EOS3_
	.set	_ZNSt12_Vector_baseI5Vec8fSaIS0_EE17_Vector_impl_dataC1EOS3_,_ZNSt12_Vector_baseI5Vec8fSaIS0_EE17_Vector_impl_dataC2EOS3_
	.section	.text._ZSt4moveIRSt6vectorI5Vec8fSaIS1_EEEONSt16remove_referenceIT_E4typeEOS6_,"axG",@progbits,_ZSt4moveIRSt6vectorI5Vec8fSaIS1_EEEONSt16remove_referenceIT_E4typeEOS6_,comdat
	.weak	_ZSt4moveIRSt6vectorI5Vec8fSaIS1_EEEONSt16remove_referenceIT_E4typeEOS6_
	.type	_ZSt4moveIRSt6vectorI5Vec8fSaIS1_EEEONSt16remove_referenceIT_E4typeEOS6_, @function
_ZSt4moveIRSt6vectorI5Vec8fSaIS1_EEEONSt16remove_referenceIT_E4typeEOS6_:
.LFB16113:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16113:
	.size	_ZSt4moveIRSt6vectorI5Vec8fSaIS1_EEEONSt16remove_referenceIT_E4typeEOS6_, .-_ZSt4moveIRSt6vectorI5Vec8fSaIS1_EEEONSt16remove_referenceIT_E4typeEOS6_
	.section	.text._ZSt10make_tupleIJSt6vectorI5Vec8fSaIS1_EEEESt5tupleIJDpNSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeEEEDpOS7_,"axG",@progbits,_ZSt10make_tupleIJSt6vectorI5Vec8fSaIS1_EEEESt5tupleIJDpNSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeEEEDpOS7_,comdat
	.weak	_ZSt10make_tupleIJSt6vectorI5Vec8fSaIS1_EEEESt5tupleIJDpNSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeEEEDpOS7_
	.type	_ZSt10make_tupleIJSt6vectorI5Vec8fSaIS1_EEEESt5tupleIJDpNSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeEEEDpOS7_, @function
_ZSt10make_tupleIJSt6vectorI5Vec8fSaIS1_EEEESt5tupleIJDpNSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeEEEDpOS7_:
.LFB16114:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt6vectorI5Vec8fSaIS1_EEEOT_RNSt16remove_referenceIS4_E4typeE
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt5tupleIJSt6vectorI5Vec8fSaIS1_EEEEC1IJS3_ELb1ELb1EEEDpOT_
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16114:
	.size	_ZSt10make_tupleIJSt6vectorI5Vec8fSaIS1_EEEESt5tupleIJDpNSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeEEEDpOS7_, .-_ZSt10make_tupleIJSt6vectorI5Vec8fSaIS1_EEEESt5tupleIJDpNSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeEEEDpOS7_
	.section	.text._ZSt3getILm0EJSt6vectorI5Vec8fSaIS1_EEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_,"axG",@progbits,_ZSt3getILm0EJSt6vectorI5Vec8fSaIS1_EEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_,comdat
	.weak	_ZSt3getILm0EJSt6vectorI5Vec8fSaIS1_EEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_
	.type	_ZSt3getILm0EJSt6vectorI5Vec8fSaIS1_EEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_, @function
_ZSt3getILm0EJSt6vectorI5Vec8fSaIS1_EEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_:
.LFB16122:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__get_helperILm0ESt6vectorI5Vec8fSaIS1_EEJEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16122:
	.size	_ZSt3getILm0EJSt6vectorI5Vec8fSaIS1_EEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_, .-_ZSt3getILm0EJSt6vectorI5Vec8fSaIS1_EEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_
	.section	.text._ZNSt6vectorI5Vec8fSaIS0_EEC2ERKS2_,"axG",@progbits,_ZNSt6vectorI5Vec8fSaIS0_EEC5ERKS2_,comdat
	.align 2
	.weak	_ZNSt6vectorI5Vec8fSaIS0_EEC2ERKS2_
	.type	_ZNSt6vectorI5Vec8fSaIS0_EEC2ERKS2_, @function
_ZNSt6vectorI5Vec8fSaIS0_EEC2ERKS2_:
.LFB16124:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA16124
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt12_Vector_baseI5Vec8fSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	leaq	-41(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB39:
	call	_ZN9__gnu_cxx14__alloc_traitsISaI5Vec8fES1_E17_S_select_on_copyERKS2_
.LEHE39:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorI5Vec8fSaIS0_EE4sizeEv
	movq	%rax, %rcx
	leaq	-41(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movq	%rbx, %rdi
.LEHB40:
	call	_ZNSt12_Vector_baseI5Vec8fSaIS0_EEC2EmRKS1_
.LEHE40:
	leaq	-41(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaI5Vec8fED1Ev
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI5Vec8fSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %r13
	movq	-56(%rbp), %rax
	movq	(%rax), %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorI5Vec8fSaIS0_EE3endEv
	movq	%rax, %r12
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorI5Vec8fSaIS0_EE5beginEv
	movq	%r13, %rcx
	movq	%rbx, %rdx
	movq	%r12, %rsi
	movq	%rax, %rdi
.LEHB41:
	call	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK5Vec8fSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E
.LEHE41:
	movq	-56(%rbp), %rdx
	movq	%rax, 8(%rdx)
	nop
	movq	-40(%rbp), %rax
	subq	%fs:40, %rax
	je	.L435
	jmp	.L438
.L436:
	endbr64
	movq	%rax, %rbx
	leaq	-41(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaI5Vec8fED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB42:
	call	_Unwind_Resume@PLT
.L437:
	endbr64
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI5Vec8fSaIS0_EED2Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE42:
.L438:
	call	__stack_chk_fail@PLT
.L435:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16124:
	.section	.gcc_except_table
.LLSDA16124:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE16124-.LLSDACSB16124
.LLSDACSB16124:
	.uleb128 .LEHB39-.LFB16124
	.uleb128 .LEHE39-.LEHB39
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB40-.LFB16124
	.uleb128 .LEHE40-.LEHB40
	.uleb128 .L436-.LFB16124
	.uleb128 0
	.uleb128 .LEHB41-.LFB16124
	.uleb128 .LEHE41-.LEHB41
	.uleb128 .L437-.LFB16124
	.uleb128 0
	.uleb128 .LEHB42-.LFB16124
	.uleb128 .LEHE42-.LEHB42
	.uleb128 0
	.uleb128 0
.LLSDACSE16124:
	.section	.text._ZNSt6vectorI5Vec8fSaIS0_EEC2ERKS2_,"axG",@progbits,_ZNSt6vectorI5Vec8fSaIS0_EEC5ERKS2_,comdat
	.size	_ZNSt6vectorI5Vec8fSaIS0_EEC2ERKS2_, .-_ZNSt6vectorI5Vec8fSaIS0_EEC2ERKS2_
	.weak	_ZNSt6vectorI5Vec8fSaIS0_EEC1ERKS2_
	.set	_ZNSt6vectorI5Vec8fSaIS0_EEC1ERKS2_,_ZNSt6vectorI5Vec8fSaIS0_EEC2ERKS2_
	.section	.text._ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_,"axG",@progbits,_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_,comdat
	.weak	_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_
	.type	_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_, @function
_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_:
.LFB16157:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	sete	%al
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16157:
	.size	_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_, .-_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_
	.section	.text._ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_,"axG",@progbits,_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_,comdat
	.weak	_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_
	.type	_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_, @function
_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_:
.LFB16158:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16158:
	.size	_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_, .-_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_
	.section	.text._ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag,"axG",@progbits,_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag,comdat
	.weak	_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag
	.type	_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, @function
_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag:
.LFB16159:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	subq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16159:
	.size	_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, .-_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag
	.section	.text._ZNSaIN5boost10stacktrace5frameEEC2Ev,"axG",@progbits,_ZNSaIN5boost10stacktrace5frameEEC5Ev,comdat
	.align 2
	.weak	_ZNSaIN5boost10stacktrace5frameEEC2Ev
	.type	_ZNSaIN5boost10stacktrace5frameEEC2Ev, @function
_ZNSaIN5boost10stacktrace5frameEEC2Ev:
.LFB16326:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16326:
	.size	_ZNSaIN5boost10stacktrace5frameEEC2Ev, .-_ZNSaIN5boost10stacktrace5frameEEC2Ev
	.weak	_ZNSaIN5boost10stacktrace5frameEEC1Ev
	.set	_ZNSaIN5boost10stacktrace5frameEEC1Ev,_ZNSaIN5boost10stacktrace5frameEEC2Ev
	.section	.text._ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE17_Vector_impl_dataC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE17_Vector_impl_dataC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE17_Vector_impl_dataC2Ev
	.type	_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE17_Vector_impl_dataC2Ev, @function
_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE17_Vector_impl_dataC2Ev:
.LFB16329:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16329:
	.size	_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE17_Vector_impl_dataC2Ev, .-_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE17_Vector_impl_dataC2Ev
	.weak	_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE17_Vector_impl_dataC1Ev
	.set	_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE17_Vector_impl_dataC1Ev,_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE17_Vector_impl_dataC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEED5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEED2Ev, @function
_ZN9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEED2Ev:
.LFB16332:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16332:
	.size	_ZN9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEED2Ev, .-_ZN9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEED1Ev,_ZN9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEED2Ev
	.section	.text._ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE13_M_deallocateEPS2_m,"axG",@progbits,_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE13_M_deallocateEPS2_m,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE13_M_deallocateEPS2_m
	.type	_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE13_M_deallocateEPS2_m, @function
_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE13_M_deallocateEPS2_m:
.LFB16334:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L450
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaIN5boost10stacktrace5frameEEE10deallocateERS3_PS2_m
.L450:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16334:
	.size	_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE13_M_deallocateEPS2_m, .-_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE13_M_deallocateEPS2_m
	.section	.text._ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEE4fillEPPKvm,"axG",@progbits,_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEE4fillEPPKvm,comdat
	.align 2
	.weak	_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEE4fillEPPKvm
	.type	_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEE4fillEPPKvm, @function
_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEE4fillEPPKvm:
.LFB16335:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	cmpq	$0, -72(%rbp)
	je	.L458
	movq	-56(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE7reserveEm
	movq	$0, -32(%rbp)
	jmp	.L454
.L456:
	movq	-32(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L459
	movq	-56(%rbp), %rbx
	movq	-32(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5boost10stacktrace5frameC1EPKv
	leaq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE9push_backEOS2_
	addq	$1, -32(%rbp)
.L454:
	movq	-32(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jb	.L456
	jmp	.L451
.L458:
	nop
	jmp	.L451
.L459:
	nop
.L451:
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L457
	call	__stack_chk_fail@PLT
.L457:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16335:
	.size	_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEE4fillEPPKvm, .-_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEE4fillEPPKvm
	.section	.text._ZNKSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE13get_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE13get_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE13get_allocatorEv
	.type	_ZNKSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE13get_allocatorEv, @function
_ZNKSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE13get_allocatorEv:
.LFB16336:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSaIN5boost10stacktrace5frameEEC1ERKS2_
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16336:
	.size	_ZNKSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE13get_allocatorEv, .-_ZNKSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE13get_allocatorEv
	.section	.text._ZNSaIPKvEC2IN5boost10stacktrace5frameEEERKSaIT_E,"axG",@progbits,_ZNSaIPKvEC5IN5boost10stacktrace5frameEEERKSaIT_E,comdat
	.align 2
	.weak	_ZNSaIPKvEC2IN5boost10stacktrace5frameEEERKSaIT_E
	.type	_ZNSaIPKvEC2IN5boost10stacktrace5frameEEERKSaIT_E, @function
_ZNSaIPKvEC2IN5boost10stacktrace5frameEEERKSaIT_E:
.LFB16338:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIPKvEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16338:
	.size	_ZNSaIPKvEC2IN5boost10stacktrace5frameEEERKSaIT_E, .-_ZNSaIPKvEC2IN5boost10stacktrace5frameEEERKSaIT_E
	.weak	_ZNSaIPKvEC1IN5boost10stacktrace5frameEEERKSaIT_E
	.set	_ZNSaIPKvEC1IN5boost10stacktrace5frameEEERKSaIT_E,_ZNSaIPKvEC2IN5boost10stacktrace5frameEEERKSaIT_E
	.section	.text._ZNSaIPKvED2Ev,"axG",@progbits,_ZNSaIPKvED5Ev,comdat
	.align 2
	.weak	_ZNSaIPKvED2Ev
	.type	_ZNSaIPKvED2Ev, @function
_ZNSaIPKvED2Ev:
.LFB16341:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIPKvED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16341:
	.size	_ZNSaIPKvED2Ev, .-_ZNSaIPKvED2Ev
	.weak	_ZNSaIPKvED1Ev
	.set	_ZNSaIPKvED1Ev,_ZNSaIPKvED2Ev
	.section	.text._ZNSt6vectorIPKvSaIS1_EEC2EmRKS1_RKS2_,"axG",@progbits,_ZNSt6vectorIPKvSaIS1_EEC5EmRKS1_RKS2_,comdat
	.align 2
	.weak	_ZNSt6vectorIPKvSaIS1_EEC2EmRKS1_RKS2_
	.type	_ZNSt6vectorIPKvSaIS1_EEC2EmRKS1_RKS2_, @function
_ZNSt6vectorIPKvSaIS1_EEC2EmRKS1_RKS2_:
.LFB16344:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA16344
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rbx
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB43:
	call	_ZNSt6vectorIPKvSaIS1_EE17_S_check_init_lenEmRKS2_
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movq	%rbx, %rdi
	call	_ZNSt12_Vector_baseIPKvSaIS1_EEC2EmRKS2_
.LEHE43:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB44:
	call	_ZNSt6vectorIPKvSaIS1_EE18_M_fill_initializeEmRKS1_
.LEHE44:
	jmp	.L467
.L466:
	endbr64
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIPKvSaIS1_EED2Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB45:
	call	_Unwind_Resume@PLT
.LEHE45:
.L467:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16344:
	.section	.gcc_except_table
.LLSDA16344:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE16344-.LLSDACSB16344
.LLSDACSB16344:
	.uleb128 .LEHB43-.LFB16344
	.uleb128 .LEHE43-.LEHB43
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB44-.LFB16344
	.uleb128 .LEHE44-.LEHB44
	.uleb128 .L466-.LFB16344
	.uleb128 0
	.uleb128 .LEHB45-.LFB16344
	.uleb128 .LEHE45-.LEHB45
	.uleb128 0
	.uleb128 0
.LLSDACSE16344:
	.section	.text._ZNSt6vectorIPKvSaIS1_EEC2EmRKS1_RKS2_,"axG",@progbits,_ZNSt6vectorIPKvSaIS1_EEC5EmRKS1_RKS2_,comdat
	.size	_ZNSt6vectorIPKvSaIS1_EEC2EmRKS1_RKS2_, .-_ZNSt6vectorIPKvSaIS1_EEC2EmRKS1_RKS2_
	.weak	_ZNSt6vectorIPKvSaIS1_EEC1EmRKS1_RKS2_
	.set	_ZNSt6vectorIPKvSaIS1_EEC1EmRKS1_RKS2_,_ZNSt6vectorIPKvSaIS1_EEC2EmRKS1_RKS2_
	.section	.text._ZNSt6vectorIPKvSaIS1_EED2Ev,"axG",@progbits,_ZNSt6vectorIPKvSaIS1_EED5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorIPKvSaIS1_EED2Ev
	.type	_ZNSt6vectorIPKvSaIS1_EED2Ev, @function
_ZNSt6vectorIPKvSaIS1_EED2Ev:
.LFB16347:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA16347
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIPKvSaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIPPKvS1_EvT_S3_RSaIT0_E
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIPKvSaIS1_EED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16347:
	.section	.gcc_except_table
.LLSDA16347:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE16347-.LLSDACSB16347
.LLSDACSB16347:
.LLSDACSE16347:
	.section	.text._ZNSt6vectorIPKvSaIS1_EED2Ev,"axG",@progbits,_ZNSt6vectorIPKvSaIS1_EED5Ev,comdat
	.size	_ZNSt6vectorIPKvSaIS1_EED2Ev, .-_ZNSt6vectorIPKvSaIS1_EED2Ev
	.weak	_ZNSt6vectorIPKvSaIS1_EED1Ev
	.set	_ZNSt6vectorIPKvSaIS1_EED1Ev,_ZNSt6vectorIPKvSaIS1_EED2Ev
	.section	.text._ZNSt6vectorIPKvSaIS1_EEixEm,"axG",@progbits,_ZNSt6vectorIPKvSaIS1_EEixEm,comdat
	.align 2
	.weak	_ZNSt6vectorIPKvSaIS1_EEixEm
	.type	_ZNSt6vectorIPKvSaIS1_EEixEm, @function
_ZNSt6vectorIPKvSaIS1_EEixEm:
.LFB16349:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	salq	$3, %rax
	addq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16349:
	.size	_ZNSt6vectorIPKvSaIS1_EEixEm, .-_ZNSt6vectorIPKvSaIS1_EEixEm
	.section	.text._ZNKSt6vectorIPKvSaIS1_EE4sizeEv,"axG",@progbits,_ZNKSt6vectorIPKvSaIS1_EE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIPKvSaIS1_EE4sizeEv
	.type	_ZNKSt6vectorIPKvSaIS1_EE4sizeEv, @function
_ZNKSt6vectorIPKvSaIS1_EE4sizeEv:
.LFB16350:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rdx, %rax
	subq	%rcx, %rax
	sarq	$3, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16350:
	.size	_ZNKSt6vectorIPKvSaIS1_EE4sizeEv, .-_ZNKSt6vectorIPKvSaIS1_EE4sizeEv
	.section	.text._ZNSt6vectorIPKvSaIS1_EE6resizeEm,"axG",@progbits,_ZNSt6vectorIPKvSaIS1_EE6resizeEm,comdat
	.align 2
	.weak	_ZNSt6vectorIPKvSaIS1_EE6resizeEm
	.type	_ZNSt6vectorIPKvSaIS1_EE6resizeEm, @function
_ZNSt6vectorIPKvSaIS1_EE6resizeEm:
.LFB16351:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIPKvSaIS1_EE4sizeEv
	cmpq	%rax, -16(%rbp)
	seta	%al
	testb	%al, %al
	je	.L474
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIPKvSaIS1_EE4sizeEv
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	subq	%rcx, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIPKvSaIS1_EE17_M_default_appendEm
	jmp	.L476
.L474:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIPKvSaIS1_EE4sizeEv
	cmpq	%rax, -16(%rbp)
	setb	%al
	testb	%al, %al
	je	.L476
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	salq	$3, %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIPKvSaIS1_EE15_M_erase_at_endEPS1_
.L476:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16351:
	.size	_ZNSt6vectorIPKvSaIS1_EE6resizeEm, .-_ZNSt6vectorIPKvSaIS1_EE6resizeEm
	.section	.text._ZNKSt6vectorIPKvSaIS1_EE8max_sizeEv,"axG",@progbits,_ZNKSt6vectorIPKvSaIS1_EE8max_sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIPKvSaIS1_EE8max_sizeEv
	.type	_ZNKSt6vectorIPKvSaIS1_EE8max_sizeEv, @function
_ZNKSt6vectorIPKvSaIS1_EE8max_sizeEv:
.LFB16352:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt12_Vector_baseIPKvSaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdi
	call	_ZNSt6vectorIPKvSaIS1_EE11_S_max_sizeERKS2_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16352:
	.size	_ZNKSt6vectorIPKvSaIS1_EE8max_sizeEv, .-_ZNKSt6vectorIPKvSaIS1_EE8max_sizeEv
	.section	.text._ZSt8_DestroyIPN5boost10stacktrace5frameEEvT_S4_,"axG",@progbits,_ZSt8_DestroyIPN5boost10stacktrace5frameEEvT_S4_,comdat
	.weak	_ZSt8_DestroyIPN5boost10stacktrace5frameEEvT_S4_
	.type	_ZSt8_DestroyIPN5boost10stacktrace5frameEEvT_S4_, @function
_ZSt8_DestroyIPN5boost10stacktrace5frameEEvT_S4_:
.LFB16353:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Destroy_auxILb1EE9__destroyIPN5boost10stacktrace5frameEEEvT_S6_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16353:
	.size	_ZSt8_DestroyIPN5boost10stacktrace5frameEEvT_S4_, .-_ZSt8_DestroyIPN5boost10stacktrace5frameEEvT_S4_
	.section	.text._ZNK5boost10stacktrace16basic_stacktraceISaINS0_5frameEEEntEv,"axG",@progbits,_ZNK5boost10stacktrace16basic_stacktraceISaINS0_5frameEEEntEv,comdat
	.align 2
	.weak	_ZNK5boost10stacktrace16basic_stacktraceISaINS0_5frameEEEntEv
	.type	_ZNK5boost10stacktrace16basic_stacktraceISaINS0_5frameEEEntEv, @function
_ZNK5boost10stacktrace16basic_stacktraceISaINS0_5frameEEEntEv:
.LFB16355:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5boost10stacktrace16basic_stacktraceISaINS0_5frameEEE4sizeEv
	testq	%rax, %rax
	sete	%al
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16355:
	.size	_ZNK5boost10stacktrace16basic_stacktraceISaINS0_5frameEEEntEv, .-_ZNK5boost10stacktrace16basic_stacktraceISaINS0_5frameEEEntEv
	.section	.text._ZNK5boost10stacktrace16basic_stacktraceISaINS0_5frameEEE9as_vectorEv,"axG",@progbits,_ZNK5boost10stacktrace16basic_stacktraceISaINS0_5frameEEE9as_vectorEv,comdat
	.align 2
	.weak	_ZNK5boost10stacktrace16basic_stacktraceISaINS0_5frameEEE9as_vectorEv
	.type	_ZNK5boost10stacktrace16basic_stacktraceISaINS0_5frameEEE9as_vectorEv, @function
_ZNK5boost10stacktrace16basic_stacktraceISaINS0_5frameEEE9as_vectorEv:
.LFB16356:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16356:
	.size	_ZNK5boost10stacktrace16basic_stacktraceISaINS0_5frameEEE9as_vectorEv, .-_ZNK5boost10stacktrace16basic_stacktraceISaINS0_5frameEEE9as_vectorEv
	.section	.text._ZNKSt6vectorIN5boost10stacktrace5frameESaIS2_EEixEm,"axG",@progbits,_ZNKSt6vectorIN5boost10stacktrace5frameESaIS2_EEixEm,comdat
	.align 2
	.weak	_ZNKSt6vectorIN5boost10stacktrace5frameESaIS2_EEixEm
	.type	_ZNKSt6vectorIN5boost10stacktrace5frameESaIS2_EEixEm, @function
_ZNKSt6vectorIN5boost10stacktrace5frameESaIS2_EEixEm:
.LFB16357:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	salq	$3, %rax
	addq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16357:
	.size	_ZNKSt6vectorIN5boost10stacktrace5frameESaIS2_EEixEm, .-_ZNKSt6vectorIN5boost10stacktrace5frameESaIS2_EEixEm
	.section	.text._ZNK5boost10stacktrace16basic_stacktraceISaINS0_5frameEEE4sizeEv,"axG",@progbits,_ZNK5boost10stacktrace16basic_stacktraceISaINS0_5frameEEE4sizeEv,comdat
	.align 2
	.weak	_ZNK5boost10stacktrace16basic_stacktraceISaINS0_5frameEEE4sizeEv
	.type	_ZNK5boost10stacktrace16basic_stacktraceISaINS0_5frameEEE4sizeEv, @function
_ZNK5boost10stacktrace16basic_stacktraceISaINS0_5frameEEE4sizeEv:
.LFB16358:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIN5boost10stacktrace5frameESaIS2_EE4sizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16358:
	.size	_ZNK5boost10stacktrace16basic_stacktraceISaINS0_5frameEEE4sizeEv, .-_ZNK5boost10stacktrace16basic_stacktraceISaINS0_5frameEEE4sizeEv
	.section	.text._ZNSt11range_errorC2EOS_,"axG",@progbits,_ZNSt11range_errorC5EOS_,comdat
	.align 2
	.weak	_ZNSt11range_errorC2EOS_
	.type	_ZNSt11range_errorC2EOS_, @function
_ZNSt11range_errorC2EOS_:
.LFB16361:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt13runtime_errorC2EOS_@PLT
	leaq	16+_ZTVSt11range_error(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16361:
	.size	_ZNSt11range_errorC2EOS_, .-_ZNSt11range_errorC2EOS_
	.weak	_ZNSt11range_errorC1EOS_
	.set	_ZNSt11range_errorC1EOS_,_ZNSt11range_errorC2EOS_
	.section	.text._ZNSt17_Nested_exceptionISt11range_errorEC2EOS0_,"axG",@progbits,_ZNSt17_Nested_exceptionISt11range_errorEC5EOS0_,comdat
	.align 2
	.weak	_ZNSt17_Nested_exceptionISt11range_errorEC2EOS0_
	.type	_ZNSt17_Nested_exceptionISt11range_errorEC2EOS0_, @function
_ZNSt17_Nested_exceptionISt11range_errorEC2EOS0_:
.LFB16363:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11range_errorC2EOS_
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	_ZNSt16nested_exceptionC2Ev
	leaq	16+_ZTVSt17_Nested_exceptionISt11range_errorE(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	leaq	56+_ZTVSt17_Nested_exceptionISt11range_errorE(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16363:
	.size	_ZNSt17_Nested_exceptionISt11range_errorEC2EOS0_, .-_ZNSt17_Nested_exceptionISt11range_errorEC2EOS0_
	.weak	_ZNSt17_Nested_exceptionISt11range_errorEC1EOS0_
	.set	_ZNSt17_Nested_exceptionISt11range_errorEC1EOS0_,_ZNSt17_Nested_exceptionISt11range_errorEC2EOS0_
	.section	.text._ZN9__gnu_cxx13new_allocatorI5Vec8fEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI5Vec8fEC5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorI5Vec8fEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorI5Vec8fEC2Ev, @function
_ZN9__gnu_cxx13new_allocatorI5Vec8fEC2Ev:
.LFB16366:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16366:
	.size	_ZN9__gnu_cxx13new_allocatorI5Vec8fEC2Ev, .-_ZN9__gnu_cxx13new_allocatorI5Vec8fEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorI5Vec8fEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorI5Vec8fEC1Ev,_ZN9__gnu_cxx13new_allocatorI5Vec8fEC2Ev
	.section	.text._ZNSt16allocator_traitsISaI5Vec8fEE10deallocateERS1_PS0_m,"axG",@progbits,_ZNSt16allocator_traitsISaI5Vec8fEE10deallocateERS1_PS0_m,comdat
	.weak	_ZNSt16allocator_traitsISaI5Vec8fEE10deallocateERS1_PS0_m
	.type	_ZNSt16allocator_traitsISaI5Vec8fEE10deallocateERS1_PS0_m, @function
_ZNSt16allocator_traitsISaI5Vec8fEE10deallocateERS1_PS0_m:
.LFB16368:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorI5Vec8fE10deallocateEPS1_m
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16368:
	.size	_ZNSt16allocator_traitsISaI5Vec8fEE10deallocateERS1_PS0_m, .-_ZNSt16allocator_traitsISaI5Vec8fEE10deallocateERS1_PS0_m
	.section	.text._ZSt8_DestroyIP5Vec8fEvT_S2_,"axG",@progbits,_ZSt8_DestroyIP5Vec8fEvT_S2_,comdat
	.weak	_ZSt8_DestroyIP5Vec8fEvT_S2_
	.type	_ZSt8_DestroyIP5Vec8fEvT_S2_, @function
_ZSt8_DestroyIP5Vec8fEvT_S2_:
.LFB16369:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Destroy_auxILb1EE9__destroyIP5Vec8fEEvT_S4_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16369:
	.size	_ZSt8_DestroyIP5Vec8fEvT_S2_, .-_ZSt8_DestroyIP5Vec8fEvT_S2_
	.section	.text._ZSt7forwardI5Vec8fEOT_RNSt16remove_referenceIS1_E4typeE,"axG",@progbits,_ZSt7forwardI5Vec8fEOT_RNSt16remove_referenceIS1_E4typeE,comdat
	.weak	_ZSt7forwardI5Vec8fEOT_RNSt16remove_referenceIS1_E4typeE
	.type	_ZSt7forwardI5Vec8fEOT_RNSt16remove_referenceIS1_E4typeE, @function
_ZSt7forwardI5Vec8fEOT_RNSt16remove_referenceIS1_E4typeE:
.LFB16370:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16370:
	.size	_ZSt7forwardI5Vec8fEOT_RNSt16remove_referenceIS1_E4typeE, .-_ZSt7forwardI5Vec8fEOT_RNSt16remove_referenceIS1_E4typeE
	.section	.text._ZNSt16allocator_traitsISaI5Vec8fEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_,"axG",@progbits,_ZNSt16allocator_traitsISaI5Vec8fEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_,comdat
	.weak	_ZNSt16allocator_traitsISaI5Vec8fEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_
	.type	_ZNSt16allocator_traitsISaI5Vec8fEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_, @function
_ZNSt16allocator_traitsISaI5Vec8fEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_:
.LFB16371:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardI5Vec8fEOT_RNSt16remove_referenceIS1_E4typeE
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorI5Vec8fE9constructIS1_JS1_EEEvPT_DpOT0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16371:
	.size	_ZNSt16allocator_traitsISaI5Vec8fEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_, .-_ZNSt16allocator_traitsISaI5Vec8fEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_
	.section	.text._ZNSt6vectorI5Vec8fSaIS0_EE3endEv,"axG",@progbits,_ZNSt6vectorI5Vec8fSaIS0_EE3endEv,comdat
	.align 2
	.weak	_ZNSt6vectorI5Vec8fSaIS0_EE3endEv
	.type	_ZNSt6vectorI5Vec8fSaIS0_EE3endEv, @function
_ZNSt6vectorI5Vec8fSaIS0_EE3endEv:
.LFB16372:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIP5Vec8fSt6vectorIS1_SaIS1_EEEC1ERKS2_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L498
	call	__stack_chk_fail@PLT
.L498:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16372:
	.size	_ZNSt6vectorI5Vec8fSaIS0_EE3endEv, .-_ZNSt6vectorI5Vec8fSaIS0_EE3endEv
	.section	.rodata
.LC23:
	.string	"vector::_M_realloc_insert"
	.section	.text._ZNSt6vectorI5Vec8fSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_,"axG",@progbits,_ZNSt6vectorI5Vec8fSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_,comdat
	.align 2
	.weak	_ZNSt6vectorI5Vec8fSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_
	.type	_ZNSt6vectorI5Vec8fSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_, @function
_ZNSt6vectorI5Vec8fSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_:
.LFB16373:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-88(%rbp), %rax
	leaq	.LC23(%rip), %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZNKSt6vectorI5Vec8fSaIS0_EE12_M_check_lenEmPKc
	movq	%rax, -72(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorI5Vec8fSaIS0_EE5beginEv
	movq	%rax, -80(%rbp)
	leaq	-80(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxmiIP5Vec8fSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	movq	%rax, -48(%rbp)
	movq	-88(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI5Vec8fSaIS0_EE11_M_allocateEm
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardI5Vec8fEOT_RNSt16remove_referenceIS1_E4typeE
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	addq	%rax, %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaI5Vec8fEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_
	movq	$0, -32(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI5Vec8fSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP5Vec8fSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rsi
	movq	-40(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	_ZNSt6vectorI5Vec8fSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_
	movq	%rax, -32(%rbp)
	addq	$32, -32(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI5Vec8fSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP5Vec8fSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	_ZNSt6vectorI5Vec8fSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_
	movq	%rax, -32(%rbp)
	movq	-88(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	16(%rdx), %rdx
	subq	-64(%rbp), %rdx
	sarq	$5, %rdx
	movq	-64(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI5Vec8fSaIS0_EE13_M_deallocateEPS0_m
	movq	-88(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-88(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-72(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L500
	call	__stack_chk_fail@PLT
.L500:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16373:
	.size	_ZNSt6vectorI5Vec8fSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_, .-_ZNSt6vectorI5Vec8fSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_
	.section	.text._ZNSt6vectorI5Vec8fSaIS0_EE4backEv,"axG",@progbits,_ZNSt6vectorI5Vec8fSaIS0_EE4backEv,comdat
	.align 2
	.weak	_ZNSt6vectorI5Vec8fSaIS0_EE4backEv
	.type	_ZNSt6vectorI5Vec8fSaIS0_EE4backEv, @function
_ZNSt6vectorI5Vec8fSaIS0_EE4backEv:
.LFB16377:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorI5Vec8fSaIS0_EE3endEv
	movq	%rax, -24(%rbp)
	leaq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP5Vec8fSt6vectorIS1_SaIS1_EEEmiEl
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP5Vec8fSt6vectorIS1_SaIS1_EEEdeEv
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L503
	call	__stack_chk_fail@PLT
.L503:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16377:
	.size	_ZNSt6vectorI5Vec8fSaIS0_EE4backEv, .-_ZNSt6vectorI5Vec8fSaIS0_EE4backEv
	.section	.text._ZN9__gnu_cxx13new_allocatorI5Vec8fEC2ERKS2_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI5Vec8fEC5ERKS2_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorI5Vec8fEC2ERKS2_
	.type	_ZN9__gnu_cxx13new_allocatorI5Vec8fEC2ERKS2_, @function
_ZN9__gnu_cxx13new_allocatorI5Vec8fEC2ERKS2_:
.LFB16379:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16379:
	.size	_ZN9__gnu_cxx13new_allocatorI5Vec8fEC2ERKS2_, .-_ZN9__gnu_cxx13new_allocatorI5Vec8fEC2ERKS2_
	.weak	_ZN9__gnu_cxx13new_allocatorI5Vec8fEC1ERKS2_
	.set	_ZN9__gnu_cxx13new_allocatorI5Vec8fEC1ERKS2_,_ZN9__gnu_cxx13new_allocatorI5Vec8fEC2ERKS2_
	.section	.text._ZSt7forwardISt6vectorI5Vec8fSaIS1_EEEOT_RNSt16remove_referenceIS4_E4typeE,"axG",@progbits,_ZSt7forwardISt6vectorI5Vec8fSaIS1_EEEOT_RNSt16remove_referenceIS4_E4typeE,comdat
	.weak	_ZSt7forwardISt6vectorI5Vec8fSaIS1_EEEOT_RNSt16remove_referenceIS4_E4typeE
	.type	_ZSt7forwardISt6vectorI5Vec8fSaIS1_EEEOT_RNSt16remove_referenceIS4_E4typeE, @function
_ZSt7forwardISt6vectorI5Vec8fSaIS1_EEEOT_RNSt16remove_referenceIS4_E4typeE:
.LFB16381:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16381:
	.size	_ZSt7forwardISt6vectorI5Vec8fSaIS1_EEEOT_RNSt16remove_referenceIS4_E4typeE, .-_ZSt7forwardISt6vectorI5Vec8fSaIS1_EEEOT_RNSt16remove_referenceIS4_E4typeE
	.section	.text._ZNSt5tupleIJSt6vectorI5Vec8fSaIS1_EEEEC2IJS3_ELb1ELb1EEEDpOT_,"axG",@progbits,_ZNSt5tupleIJSt6vectorI5Vec8fSaIS1_EEEEC5IJS3_ELb1ELb1EEEDpOT_,comdat
	.align 2
	.weak	_ZNSt5tupleIJSt6vectorI5Vec8fSaIS1_EEEEC2IJS3_ELb1ELb1EEEDpOT_
	.type	_ZNSt5tupleIJSt6vectorI5Vec8fSaIS1_EEEEC2IJS3_ELb1ELb1EEEDpOT_, @function
_ZNSt5tupleIJSt6vectorI5Vec8fSaIS1_EEEEC2IJS3_ELb1ELb1EEEDpOT_:
.LFB16383:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA16383
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt6vectorI5Vec8fSaIS1_EEEOT_RNSt16remove_referenceIS4_E4typeE
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt11_Tuple_implILm0EJSt6vectorI5Vec8fSaIS1_EEEEC2IS3_EEOT_
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16383:
	.section	.gcc_except_table
.LLSDA16383:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE16383-.LLSDACSB16383
.LLSDACSB16383:
.LLSDACSE16383:
	.section	.text._ZNSt5tupleIJSt6vectorI5Vec8fSaIS1_EEEEC2IJS3_ELb1ELb1EEEDpOT_,"axG",@progbits,_ZNSt5tupleIJSt6vectorI5Vec8fSaIS1_EEEEC5IJS3_ELb1ELb1EEEDpOT_,comdat
	.size	_ZNSt5tupleIJSt6vectorI5Vec8fSaIS1_EEEEC2IJS3_ELb1ELb1EEEDpOT_, .-_ZNSt5tupleIJSt6vectorI5Vec8fSaIS1_EEEEC2IJS3_ELb1ELb1EEEDpOT_
	.weak	_ZNSt5tupleIJSt6vectorI5Vec8fSaIS1_EEEEC1IJS3_ELb1ELb1EEEDpOT_
	.set	_ZNSt5tupleIJSt6vectorI5Vec8fSaIS1_EEEEC1IJS3_ELb1ELb1EEEDpOT_,_ZNSt5tupleIJSt6vectorI5Vec8fSaIS1_EEEEC2IJS3_ELb1ELb1EEEDpOT_
	.section	.text._ZSt12__get_helperILm0ESt6vectorI5Vec8fSaIS1_EEJEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE,"axG",@progbits,_ZSt12__get_helperILm0ESt6vectorI5Vec8fSaIS1_EEJEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE,comdat
	.weak	_ZSt12__get_helperILm0ESt6vectorI5Vec8fSaIS1_EEJEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE
	.type	_ZSt12__get_helperILm0ESt6vectorI5Vec8fSaIS1_EEJEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE, @function
_ZSt12__get_helperILm0ESt6vectorI5Vec8fSaIS1_EEJEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE:
.LFB16385:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm0EJSt6vectorI5Vec8fSaIS1_EEEE7_M_headERS4_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16385:
	.size	_ZSt12__get_helperILm0ESt6vectorI5Vec8fSaIS1_EEJEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE, .-_ZSt12__get_helperILm0ESt6vectorI5Vec8fSaIS1_EEJEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE
	.section	.text._ZN9__gnu_cxx14__alloc_traitsISaI5Vec8fES1_E17_S_select_on_copyERKS2_,"axG",@progbits,_ZN9__gnu_cxx14__alloc_traitsISaI5Vec8fES1_E17_S_select_on_copyERKS2_,comdat
	.weak	_ZN9__gnu_cxx14__alloc_traitsISaI5Vec8fES1_E17_S_select_on_copyERKS2_
	.type	_ZN9__gnu_cxx14__alloc_traitsISaI5Vec8fES1_E17_S_select_on_copyERKS2_, @function
_ZN9__gnu_cxx14__alloc_traitsISaI5Vec8fES1_E17_S_select_on_copyERKS2_:
.LFB16386:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaI5Vec8fEE37select_on_container_copy_constructionERKS1_
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L512
	call	__stack_chk_fail@PLT
.L512:
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16386:
	.size	_ZN9__gnu_cxx14__alloc_traitsISaI5Vec8fES1_E17_S_select_on_copyERKS2_, .-_ZN9__gnu_cxx14__alloc_traitsISaI5Vec8fES1_E17_S_select_on_copyERKS2_
	.section	.text._ZNKSt12_Vector_baseI5Vec8fSaIS0_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseI5Vec8fSaIS0_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt12_Vector_baseI5Vec8fSaIS0_EE19_M_get_Tp_allocatorEv
	.type	_ZNKSt12_Vector_baseI5Vec8fSaIS0_EE19_M_get_Tp_allocatorEv, @function
_ZNKSt12_Vector_baseI5Vec8fSaIS0_EE19_M_get_Tp_allocatorEv:
.LFB16387:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16387:
	.size	_ZNKSt12_Vector_baseI5Vec8fSaIS0_EE19_M_get_Tp_allocatorEv, .-_ZNKSt12_Vector_baseI5Vec8fSaIS0_EE19_M_get_Tp_allocatorEv
	.section	.text._ZNSt12_Vector_baseI5Vec8fSaIS0_EEC2EmRKS1_,"axG",@progbits,_ZNSt12_Vector_baseI5Vec8fSaIS0_EEC5EmRKS1_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI5Vec8fSaIS0_EEC2EmRKS1_
	.type	_ZNSt12_Vector_baseI5Vec8fSaIS0_EEC2EmRKS1_, @function
_ZNSt12_Vector_baseI5Vec8fSaIS0_EEC2EmRKS1_:
.LFB16389:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA16389
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI5Vec8fSaIS0_EE12_Vector_implC1ERKS1_
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB46:
	call	_ZNSt12_Vector_baseI5Vec8fSaIS0_EE17_M_create_storageEm
.LEHE46:
	jmp	.L518
.L517:
	endbr64
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI5Vec8fSaIS0_EE12_Vector_implD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB47:
	call	_Unwind_Resume@PLT
.LEHE47:
.L518:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16389:
	.section	.gcc_except_table
.LLSDA16389:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE16389-.LLSDACSB16389
.LLSDACSB16389:
	.uleb128 .LEHB46-.LFB16389
	.uleb128 .LEHE46-.LEHB46
	.uleb128 .L517-.LFB16389
	.uleb128 0
	.uleb128 .LEHB47-.LFB16389
	.uleb128 .LEHE47-.LEHB47
	.uleb128 0
	.uleb128 0
.LLSDACSE16389:
	.section	.text._ZNSt12_Vector_baseI5Vec8fSaIS0_EEC2EmRKS1_,"axG",@progbits,_ZNSt12_Vector_baseI5Vec8fSaIS0_EEC5EmRKS1_,comdat
	.size	_ZNSt12_Vector_baseI5Vec8fSaIS0_EEC2EmRKS1_, .-_ZNSt12_Vector_baseI5Vec8fSaIS0_EEC2EmRKS1_
	.weak	_ZNSt12_Vector_baseI5Vec8fSaIS0_EEC1EmRKS1_
	.set	_ZNSt12_Vector_baseI5Vec8fSaIS0_EEC1EmRKS1_,_ZNSt12_Vector_baseI5Vec8fSaIS0_EEC2EmRKS1_
	.section	.text._ZNKSt6vectorI5Vec8fSaIS0_EE5beginEv,"axG",@progbits,_ZNKSt6vectorI5Vec8fSaIS0_EE5beginEv,comdat
	.align 2
	.weak	_ZNKSt6vectorI5Vec8fSaIS0_EE5beginEv
	.type	_ZNKSt6vectorI5Vec8fSaIS0_EE5beginEv, @function
_ZNKSt6vectorI5Vec8fSaIS0_EE5beginEv:
.LFB16391:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPK5Vec8fSt6vectorIS1_SaIS1_EEEC1ERKS3_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L521
	call	__stack_chk_fail@PLT
.L521:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16391:
	.size	_ZNKSt6vectorI5Vec8fSaIS0_EE5beginEv, .-_ZNKSt6vectorI5Vec8fSaIS0_EE5beginEv
	.section	.text._ZNKSt6vectorI5Vec8fSaIS0_EE3endEv,"axG",@progbits,_ZNKSt6vectorI5Vec8fSaIS0_EE3endEv,comdat
	.align 2
	.weak	_ZNKSt6vectorI5Vec8fSaIS0_EE3endEv
	.type	_ZNKSt6vectorI5Vec8fSaIS0_EE3endEv, @function
_ZNKSt6vectorI5Vec8fSaIS0_EE3endEv:
.LFB16392:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPK5Vec8fSt6vectorIS1_SaIS1_EEEC1ERKS3_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L524
	call	__stack_chk_fail@PLT
.L524:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16392:
	.size	_ZNKSt6vectorI5Vec8fSaIS0_EE3endEv, .-_ZNKSt6vectorI5Vec8fSaIS0_EE3endEv
	.section	.text._ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK5Vec8fSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E,"axG",@progbits,_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK5Vec8fSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E,comdat
	.weak	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK5Vec8fSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E
	.type	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK5Vec8fSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E, @function
_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK5Vec8fSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E:
.LFB16393:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPK5Vec8fSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16393:
	.size	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK5Vec8fSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E, .-_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK5Vec8fSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E
	.section	.text._ZN9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEEC5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEEC2Ev, @function
_ZN9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEEC2Ev:
.LFB16530:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16530:
	.size	_ZN9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEEC2Ev, .-_ZN9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEEC1Ev,_ZN9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEEC2Ev
	.section	.text._ZNSt16allocator_traitsISaIN5boost10stacktrace5frameEEE10deallocateERS3_PS2_m,"axG",@progbits,_ZNSt16allocator_traitsISaIN5boost10stacktrace5frameEEE10deallocateERS3_PS2_m,comdat
	.weak	_ZNSt16allocator_traitsISaIN5boost10stacktrace5frameEEE10deallocateERS3_PS2_m
	.type	_ZNSt16allocator_traitsISaIN5boost10stacktrace5frameEEE10deallocateERS3_PS2_m, @function
_ZNSt16allocator_traitsISaIN5boost10stacktrace5frameEEE10deallocateERS3_PS2_m:
.LFB16532:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEE10deallocateEPS3_m
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16532:
	.size	_ZNSt16allocator_traitsISaIN5boost10stacktrace5frameEEE10deallocateERS3_PS2_m, .-_ZNSt16allocator_traitsISaIN5boost10stacktrace5frameEEE10deallocateERS3_PS2_m
	.section	.rodata
.LC24:
	.string	"vector::reserve"
	.section	.text._ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE7reserveEm,"axG",@progbits,_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE7reserveEm,comdat
	.align 2
	.weak	_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE7reserveEm
	.type	_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE7reserveEm, @function
_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE7reserveEm:
.LFB16533:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIN5boost10stacktrace5frameESaIS2_EE8max_sizeEv
	cmpq	%rax, -32(%rbp)
	seta	%al
	testb	%al, %al
	je	.L530
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
.L530:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIN5boost10stacktrace5frameESaIS2_EE8capacityEv
	cmpq	%rax, -32(%rbp)
	seta	%al
	testb	%al, %al
	je	.L532
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIN5boost10stacktrace5frameESaIS2_EE4sizeEv
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE11_M_allocateEm
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	call	_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_
	movq	-24(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	16(%rdx), %rcx
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rsi
	subq	%rsi, %rcx
	movq	%rcx, %rdx
	sarq	$3, %rdx
	movq	%rdx, %rsi
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	%rsi, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE13_M_deallocateEPS2_m
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	salq	$3, %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 16(%rax)
.L532:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16533:
	.size	_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE7reserveEm, .-_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE7reserveEm
	.section	.text._ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE9push_backEOS2_,"axG",@progbits,_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE9push_backEOS2_,comdat
	.align 2
	.weak	_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE9push_backEOS2_
	.type	_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE9push_backEOS2_, @function
_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE9push_backEOS2_:
.LFB16537:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRN5boost10stacktrace5frameEEONSt16remove_referenceIT_E4typeEOS5_
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16537:
	.size	_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE9push_backEOS2_, .-_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE9push_backEOS2_
	.section	.text._ZNKSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE19_M_get_Tp_allocatorEv
	.type	_ZNKSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE19_M_get_Tp_allocatorEv, @function
_ZNKSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE19_M_get_Tp_allocatorEv:
.LFB16538:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16538:
	.size	_ZNKSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE19_M_get_Tp_allocatorEv, .-_ZNKSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE19_M_get_Tp_allocatorEv
	.section	.text._ZNSaIN5boost10stacktrace5frameEEC2ERKS2_,"axG",@progbits,_ZNSaIN5boost10stacktrace5frameEEC5ERKS2_,comdat
	.align 2
	.weak	_ZNSaIN5boost10stacktrace5frameEEC2ERKS2_
	.type	_ZNSaIN5boost10stacktrace5frameEEC2ERKS2_, @function
_ZNSaIN5boost10stacktrace5frameEEC2ERKS2_:
.LFB16540:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEEC2ERKS4_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16540:
	.size	_ZNSaIN5boost10stacktrace5frameEEC2ERKS2_, .-_ZNSaIN5boost10stacktrace5frameEEC2ERKS2_
	.weak	_ZNSaIN5boost10stacktrace5frameEEC1ERKS2_
	.set	_ZNSaIN5boost10stacktrace5frameEEC1ERKS2_,_ZNSaIN5boost10stacktrace5frameEEC2ERKS2_
	.section	.text._ZN9__gnu_cxx13new_allocatorIPKvEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIPKvEC5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIPKvEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIPKvEC2Ev, @function
_ZN9__gnu_cxx13new_allocatorIPKvEC2Ev:
.LFB16543:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16543:
	.size	_ZN9__gnu_cxx13new_allocatorIPKvEC2Ev, .-_ZN9__gnu_cxx13new_allocatorIPKvEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIPKvEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIPKvEC1Ev,_ZN9__gnu_cxx13new_allocatorIPKvEC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorIPKvED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIPKvED5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIPKvED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIPKvED2Ev, @function
_ZN9__gnu_cxx13new_allocatorIPKvED2Ev:
.LFB16546:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16546:
	.size	_ZN9__gnu_cxx13new_allocatorIPKvED2Ev, .-_ZN9__gnu_cxx13new_allocatorIPKvED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIPKvED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIPKvED1Ev,_ZN9__gnu_cxx13new_allocatorIPKvED2Ev
	.section	.rodata
	.align 8
.LC25:
	.string	"cannot create std::vector larger than max_size()"
	.section	.text._ZNSt6vectorIPKvSaIS1_EE17_S_check_init_lenEmRKS2_,"axG",@progbits,_ZNSt6vectorIPKvSaIS1_EE17_S_check_init_lenEmRKS2_,comdat
	.weak	_ZNSt6vectorIPKvSaIS1_EE17_S_check_init_lenEmRKS2_
	.type	_ZNSt6vectorIPKvSaIS1_EE17_S_check_init_lenEmRKS2_, @function
_ZNSt6vectorIPKvSaIS1_EE17_S_check_init_lenEmRKS2_:
.LFB16548:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-48(%rbp), %rdx
	leaq	-25(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSaIPKvEC1ERKS1_
	leaq	-25(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIPKvSaIS1_EE11_S_max_sizeERKS2_
	cmpq	%rax, -40(%rbp)
	seta	%bl
	leaq	-25(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIPKvED1Ev
	testb	%bl, %bl
	je	.L540
	leaq	.LC25(%rip), %rax
	movq	%rax, %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
.L540:
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L542
	call	__stack_chk_fail@PLT
.L542:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16548:
	.size	_ZNSt6vectorIPKvSaIS1_EE17_S_check_init_lenEmRKS2_, .-_ZNSt6vectorIPKvSaIS1_EE17_S_check_init_lenEmRKS2_
	.section	.text._ZNSt12_Vector_baseIPKvSaIS1_EE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseIPKvSaIS1_EE12_Vector_implD5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIPKvSaIS1_EE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseIPKvSaIS1_EE12_Vector_implD2Ev, @function
_ZNSt12_Vector_baseIPKvSaIS1_EE12_Vector_implD2Ev:
.LFB16551:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIPKvED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16551:
	.size	_ZNSt12_Vector_baseIPKvSaIS1_EE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseIPKvSaIS1_EE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseIPKvSaIS1_EE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseIPKvSaIS1_EE12_Vector_implD1Ev,_ZNSt12_Vector_baseIPKvSaIS1_EE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseIPKvSaIS1_EEC2EmRKS2_,"axG",@progbits,_ZNSt12_Vector_baseIPKvSaIS1_EEC5EmRKS2_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIPKvSaIS1_EEC2EmRKS2_
	.type	_ZNSt12_Vector_baseIPKvSaIS1_EEC2EmRKS2_, @function
_ZNSt12_Vector_baseIPKvSaIS1_EEC2EmRKS2_:
.LFB16553:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA16553
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIPKvSaIS1_EE12_Vector_implC1ERKS2_
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB48:
	call	_ZNSt12_Vector_baseIPKvSaIS1_EE17_M_create_storageEm
.LEHE48:
	jmp	.L547
.L546:
	endbr64
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIPKvSaIS1_EE12_Vector_implD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB49:
	call	_Unwind_Resume@PLT
.LEHE49:
.L547:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16553:
	.section	.gcc_except_table
.LLSDA16553:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE16553-.LLSDACSB16553
.LLSDACSB16553:
	.uleb128 .LEHB48-.LFB16553
	.uleb128 .LEHE48-.LEHB48
	.uleb128 .L546-.LFB16553
	.uleb128 0
	.uleb128 .LEHB49-.LFB16553
	.uleb128 .LEHE49-.LEHB49
	.uleb128 0
	.uleb128 0
.LLSDACSE16553:
	.section	.text._ZNSt12_Vector_baseIPKvSaIS1_EEC2EmRKS2_,"axG",@progbits,_ZNSt12_Vector_baseIPKvSaIS1_EEC5EmRKS2_,comdat
	.size	_ZNSt12_Vector_baseIPKvSaIS1_EEC2EmRKS2_, .-_ZNSt12_Vector_baseIPKvSaIS1_EEC2EmRKS2_
	.weak	_ZNSt12_Vector_baseIPKvSaIS1_EEC1EmRKS2_
	.set	_ZNSt12_Vector_baseIPKvSaIS1_EEC1EmRKS2_,_ZNSt12_Vector_baseIPKvSaIS1_EEC2EmRKS2_
	.section	.text._ZNSt12_Vector_baseIPKvSaIS1_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIPKvSaIS1_EED5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIPKvSaIS1_EED2Ev
	.type	_ZNSt12_Vector_baseIPKvSaIS1_EED2Ev, @function
_ZNSt12_Vector_baseIPKvSaIS1_EED2Ev:
.LFB16556:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA16556
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rdx, %rax
	subq	%rcx, %rax
	sarq	$3, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIPKvSaIS1_EE13_M_deallocateEPS1_m
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIPKvSaIS1_EE12_Vector_implD1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16556:
	.section	.gcc_except_table
.LLSDA16556:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE16556-.LLSDACSB16556
.LLSDACSB16556:
.LLSDACSE16556:
	.section	.text._ZNSt12_Vector_baseIPKvSaIS1_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIPKvSaIS1_EED5Ev,comdat
	.size	_ZNSt12_Vector_baseIPKvSaIS1_EED2Ev, .-_ZNSt12_Vector_baseIPKvSaIS1_EED2Ev
	.weak	_ZNSt12_Vector_baseIPKvSaIS1_EED1Ev
	.set	_ZNSt12_Vector_baseIPKvSaIS1_EED1Ev,_ZNSt12_Vector_baseIPKvSaIS1_EED2Ev
	.section	.text._ZNSt6vectorIPKvSaIS1_EE18_M_fill_initializeEmRKS1_,"axG",@progbits,_ZNSt6vectorIPKvSaIS1_EE18_M_fill_initializeEmRKS1_,comdat
	.align 2
	.weak	_ZNSt6vectorIPKvSaIS1_EE18_M_fill_initializeEmRKS1_
	.type	_ZNSt6vectorIPKvSaIS1_EE18_M_fill_initializeEmRKS1_, @function
_ZNSt6vectorIPKvSaIS1_EE18_M_fill_initializeEmRKS1_:
.LFB16558:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIPKvSaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	call	_ZSt24__uninitialized_fill_n_aIPPKvmS1_S1_ET_S3_T0_RKT1_RSaIT2_E
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16558:
	.size	_ZNSt6vectorIPKvSaIS1_EE18_M_fill_initializeEmRKS1_, .-_ZNSt6vectorIPKvSaIS1_EE18_M_fill_initializeEmRKS1_
	.section	.text._ZNSt12_Vector_baseIPKvSaIS1_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseIPKvSaIS1_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIPKvSaIS1_EE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseIPKvSaIS1_EE19_M_get_Tp_allocatorEv, @function
_ZNSt12_Vector_baseIPKvSaIS1_EE19_M_get_Tp_allocatorEv:
.LFB16559:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16559:
	.size	_ZNSt12_Vector_baseIPKvSaIS1_EE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseIPKvSaIS1_EE19_M_get_Tp_allocatorEv
	.section	.text._ZSt8_DestroyIPPKvS1_EvT_S3_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIPPKvS1_EvT_S3_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIPPKvS1_EvT_S3_RSaIT0_E
	.type	_ZSt8_DestroyIPPKvS1_EvT_S3_RSaIT0_E, @function
_ZSt8_DestroyIPPKvS1_EvT_S3_RSaIT0_E:
.LFB16560:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIPPKvEvT_S3_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16560:
	.size	_ZSt8_DestroyIPPKvS1_EvT_S3_RSaIT0_E, .-_ZSt8_DestroyIPPKvS1_EvT_S3_RSaIT0_E
	.section	.rodata
.LC26:
	.string	"vector::_M_default_append"
	.section	.text._ZNSt6vectorIPKvSaIS1_EE17_M_default_appendEm,"axG",@progbits,_ZNSt6vectorIPKvSaIS1_EE17_M_default_appendEm,comdat
	.align 2
	.weak	_ZNSt6vectorIPKvSaIS1_EE17_M_default_appendEm
	.type	_ZNSt6vectorIPKvSaIS1_EE17_M_default_appendEm, @function
_ZNSt6vectorIPKvSaIS1_EE17_M_default_appendEm:
.LFB16561:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA16561
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L564
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIPKvSaIS1_EE4sizeEv
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rcx
	movq	%rdx, %rax
	subq	%rcx, %rax
	sarq	$3, %rax
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIPKvSaIS1_EE8max_sizeEv
	cmpq	%rax, -48(%rbp)
	ja	.L555
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIPKvSaIS1_EE8max_sizeEv
	subq	-48(%rbp), %rax
	cmpq	%rax, -40(%rbp)
	jbe	.L556
.L555:
	movl	$1, %eax
	jmp	.L557
.L556:
	movl	$0, %eax
.L557:
	testb	%al, %al
	movq	-40(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jb	.L559
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIPKvSaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	-64(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB50:
	call	_ZSt27__uninitialized_default_n_aIPPKvmS1_ET_S3_T0_RSaIT1_E
	movq	-56(%rbp), %rdx
	movq	%rax, 8(%rdx)
	jmp	.L564
.L559:
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rax
	leaq	.LC26(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIPKvSaIS1_EE11_M_allocateEm
.LEHE50:
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIPKvSaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	leaq	0(,%rax,8), %rcx
	movq	-24(%rbp), %rax
	addq	%rax, %rcx
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
.LEHB51:
	call	_ZSt27__uninitialized_default_n_aIPPKvmS1_ET_S3_T0_RSaIT1_E
.LEHE51:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIPKvSaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	call	_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_
	movq	-56(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	16(%rdx), %rcx
	movq	-56(%rbp), %rdx
	movq	(%rdx), %rsi
	subq	%rsi, %rcx
	movq	%rcx, %rdx
	sarq	$3, %rdx
	movq	%rdx, %rsi
	movq	-56(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	%rsi, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB52:
	call	_ZNSt12_Vector_baseIPKvSaIS1_EE13_M_deallocateEPS1_m
.LEHE52:
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-48(%rbp), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-32(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 16(%rax)
	jmp	.L564
.L562:
	endbr64
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB53:
	call	_ZNSt12_Vector_baseIPKvSaIS1_EE13_M_deallocateEPS1_m
	call	__cxa_rethrow@PLT
.LEHE53:
.L563:
	endbr64
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB54:
	call	_Unwind_Resume@PLT
.LEHE54:
.L564:
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16561:
	.section	.gcc_except_table
	.align 4
.LLSDA16561:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT16561-.LLSDATTD16561
.LLSDATTD16561:
	.byte	0x1
	.uleb128 .LLSDACSE16561-.LLSDACSB16561
.LLSDACSB16561:
	.uleb128 .LEHB50-.LFB16561
	.uleb128 .LEHE50-.LEHB50
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB51-.LFB16561
	.uleb128 .LEHE51-.LEHB51
	.uleb128 .L562-.LFB16561
	.uleb128 0x1
	.uleb128 .LEHB52-.LFB16561
	.uleb128 .LEHE52-.LEHB52
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB53-.LFB16561
	.uleb128 .LEHE53-.LEHB53
	.uleb128 .L563-.LFB16561
	.uleb128 0
	.uleb128 .LEHB54-.LFB16561
	.uleb128 .LEHE54-.LEHB54
	.uleb128 0
	.uleb128 0
.LLSDACSE16561:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT16561:
	.section	.text._ZNSt6vectorIPKvSaIS1_EE17_M_default_appendEm,"axG",@progbits,_ZNSt6vectorIPKvSaIS1_EE17_M_default_appendEm,comdat
	.size	_ZNSt6vectorIPKvSaIS1_EE17_M_default_appendEm, .-_ZNSt6vectorIPKvSaIS1_EE17_M_default_appendEm
	.section	.text._ZNSt6vectorIPKvSaIS1_EE15_M_erase_at_endEPS1_,"axG",@progbits,_ZNSt6vectorIPKvSaIS1_EE15_M_erase_at_endEPS1_,comdat
	.align 2
	.weak	_ZNSt6vectorIPKvSaIS1_EE15_M_erase_at_endEPS1_
	.type	_ZNSt6vectorIPKvSaIS1_EE15_M_erase_at_endEPS1_, @function
_ZNSt6vectorIPKvSaIS1_EE15_M_erase_at_endEPS1_:
.LFB16566:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA16566
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	subq	-32(%rbp), %rax
	sarq	$3, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L567
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIPKvSaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIPPKvS1_EvT_S3_RSaIT0_E
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L567:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16566:
	.section	.gcc_except_table
.LLSDA16566:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE16566-.LLSDACSB16566
.LLSDACSB16566:
.LLSDACSE16566:
	.section	.text._ZNSt6vectorIPKvSaIS1_EE15_M_erase_at_endEPS1_,"axG",@progbits,_ZNSt6vectorIPKvSaIS1_EE15_M_erase_at_endEPS1_,comdat
	.size	_ZNSt6vectorIPKvSaIS1_EE15_M_erase_at_endEPS1_, .-_ZNSt6vectorIPKvSaIS1_EE15_M_erase_at_endEPS1_
	.section	.text._ZNSt6vectorIPKvSaIS1_EE11_S_max_sizeERKS2_,"axG",@progbits,_ZNSt6vectorIPKvSaIS1_EE11_S_max_sizeERKS2_,comdat
	.weak	_ZNSt6vectorIPKvSaIS1_EE11_S_max_sizeERKS2_
	.type	_ZNSt6vectorIPKvSaIS1_EE11_S_max_sizeERKS2_, @function
_ZNSt6vectorIPKvSaIS1_EE11_S_max_sizeERKS2_:
.LFB16567:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movabsq	$1152921504606846975, %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaIPKvEE8max_sizeERKS2_
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt3minImERKT_S2_S2_
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L570
	call	__stack_chk_fail@PLT
.L570:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16567:
	.size	_ZNSt6vectorIPKvSaIS1_EE11_S_max_sizeERKS2_, .-_ZNSt6vectorIPKvSaIS1_EE11_S_max_sizeERKS2_
	.section	.text._ZNKSt12_Vector_baseIPKvSaIS1_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseIPKvSaIS1_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt12_Vector_baseIPKvSaIS1_EE19_M_get_Tp_allocatorEv
	.type	_ZNKSt12_Vector_baseIPKvSaIS1_EE19_M_get_Tp_allocatorEv, @function
_ZNKSt12_Vector_baseIPKvSaIS1_EE19_M_get_Tp_allocatorEv:
.LFB16568:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16568:
	.size	_ZNKSt12_Vector_baseIPKvSaIS1_EE19_M_get_Tp_allocatorEv, .-_ZNKSt12_Vector_baseIPKvSaIS1_EE19_M_get_Tp_allocatorEv
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIPN5boost10stacktrace5frameEEEvT_S6_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIPN5boost10stacktrace5frameEEEvT_S6_,comdat
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIPN5boost10stacktrace5frameEEEvT_S6_
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIPN5boost10stacktrace5frameEEEvT_S6_, @function
_ZNSt12_Destroy_auxILb1EE9__destroyIPN5boost10stacktrace5frameEEEvT_S6_:
.LFB16569:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16569:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIPN5boost10stacktrace5frameEEEvT_S6_, .-_ZNSt12_Destroy_auxILb1EE9__destroyIPN5boost10stacktrace5frameEEEvT_S6_
	.section	.text._ZNKSt6vectorIN5boost10stacktrace5frameESaIS2_EE4sizeEv,"axG",@progbits,_ZNKSt6vectorIN5boost10stacktrace5frameESaIS2_EE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIN5boost10stacktrace5frameESaIS2_EE4sizeEv
	.type	_ZNKSt6vectorIN5boost10stacktrace5frameESaIS2_EE4sizeEv, @function
_ZNKSt6vectorIN5boost10stacktrace5frameESaIS2_EE4sizeEv:
.LFB16570:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rdx, %rax
	subq	%rcx, %rax
	sarq	$3, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16570:
	.size	_ZNKSt6vectorIN5boost10stacktrace5frameESaIS2_EE4sizeEv, .-_ZNKSt6vectorIN5boost10stacktrace5frameESaIS2_EE4sizeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorI5Vec8fE10deallocateEPS1_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI5Vec8fE10deallocateEPS1_m,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorI5Vec8fE10deallocateEPS1_m
	.type	_ZN9__gnu_cxx13new_allocatorI5Vec8fE10deallocateEPS1_m, @function
_ZN9__gnu_cxx13new_allocatorI5Vec8fE10deallocateEPS1_m:
.LFB16571:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16571:
	.size	_ZN9__gnu_cxx13new_allocatorI5Vec8fE10deallocateEPS1_m, .-_ZN9__gnu_cxx13new_allocatorI5Vec8fE10deallocateEPS1_m
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIP5Vec8fEEvT_S4_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIP5Vec8fEEvT_S4_,comdat
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIP5Vec8fEEvT_S4_
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIP5Vec8fEEvT_S4_, @function
_ZNSt12_Destroy_auxILb1EE9__destroyIP5Vec8fEEvT_S4_:
.LFB16572:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16572:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIP5Vec8fEEvT_S4_, .-_ZNSt12_Destroy_auxILb1EE9__destroyIP5Vec8fEEvT_S4_
	.section	.text._ZN9__gnu_cxx13new_allocatorI5Vec8fE9constructIS1_JS1_EEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI5Vec8fE9constructIS1_JS1_EEEvPT_DpOT0_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorI5Vec8fE9constructIS1_JS1_EEEvPT_DpOT0_
	.type	_ZN9__gnu_cxx13new_allocatorI5Vec8fE9constructIS1_JS1_EEEvPT_DpOT0_, @function
_ZN9__gnu_cxx13new_allocatorI5Vec8fE9constructIS1_JS1_EEEvPT_DpOT0_:
.LFB16573:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardI5Vec8fEOT_RNSt16remove_referenceIS1_E4typeE
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$32, %edi
	call	_ZnwmPv
	movq	%rax, %rcx
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	16(%rbx), %rax
	movq	24(%rbx), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16573:
	.size	_ZN9__gnu_cxx13new_allocatorI5Vec8fE9constructIS1_JS1_EEEvPT_DpOT0_, .-_ZN9__gnu_cxx13new_allocatorI5Vec8fE9constructIS1_JS1_EEEvPT_DpOT0_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIP5Vec8fSt6vectorIS1_SaIS1_EEEC2ERKS2_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIP5Vec8fSt6vectorIS1_SaIS1_EEEC5ERKS2_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIP5Vec8fSt6vectorIS1_SaIS1_EEEC2ERKS2_
	.type	_ZN9__gnu_cxx17__normal_iteratorIP5Vec8fSt6vectorIS1_SaIS1_EEEC2ERKS2_, @function
_ZN9__gnu_cxx17__normal_iteratorIP5Vec8fSt6vectorIS1_SaIS1_EEEC2ERKS2_:
.LFB16575:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16575:
	.size	_ZN9__gnu_cxx17__normal_iteratorIP5Vec8fSt6vectorIS1_SaIS1_EEEC2ERKS2_, .-_ZN9__gnu_cxx17__normal_iteratorIP5Vec8fSt6vectorIS1_SaIS1_EEEC2ERKS2_
	.weak	_ZN9__gnu_cxx17__normal_iteratorIP5Vec8fSt6vectorIS1_SaIS1_EEEC1ERKS2_
	.set	_ZN9__gnu_cxx17__normal_iteratorIP5Vec8fSt6vectorIS1_SaIS1_EEEC1ERKS2_,_ZN9__gnu_cxx17__normal_iteratorIP5Vec8fSt6vectorIS1_SaIS1_EEEC2ERKS2_
	.section	.text._ZNKSt6vectorI5Vec8fSaIS0_EE12_M_check_lenEmPKc,"axG",@progbits,_ZNKSt6vectorI5Vec8fSaIS0_EE12_M_check_lenEmPKc,comdat
	.align 2
	.weak	_ZNKSt6vectorI5Vec8fSaIS0_EE12_M_check_lenEmPKc
	.type	_ZNKSt6vectorI5Vec8fSaIS0_EE12_M_check_lenEmPKc, @function
_ZNKSt6vectorI5Vec8fSaIS0_EE12_M_check_lenEmPKc:
.LFB16577:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorI5Vec8fSaIS0_EE8max_sizeEv
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorI5Vec8fSaIS0_EE4sizeEv
	subq	%rax, %rbx
	movq	%rbx, %rdx
	movq	-64(%rbp), %rax
	cmpq	%rax, %rdx
	setb	%al
	testb	%al, %al
	je	.L582
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
.L582:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorI5Vec8fSaIS0_EE4sizeEv
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorI5Vec8fSaIS0_EE4sizeEv
	movq	%rax, -40(%rbp)
	leaq	-64(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt3maxImERKT_S2_S2_
	movq	(%rax), %rax
	addq	%rbx, %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorI5Vec8fSaIS0_EE4sizeEv
	cmpq	%rax, -32(%rbp)
	jb	.L583
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorI5Vec8fSaIS0_EE8max_sizeEv
	cmpq	%rax, -32(%rbp)
	jbe	.L584
.L583:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorI5Vec8fSaIS0_EE8max_sizeEv
	jmp	.L585
.L584:
	movq	-32(%rbp), %rax
.L585:
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L587
	call	__stack_chk_fail@PLT
.L587:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16577:
	.size	_ZNKSt6vectorI5Vec8fSaIS0_EE12_M_check_lenEmPKc, .-_ZNKSt6vectorI5Vec8fSaIS0_EE12_M_check_lenEmPKc
	.section	.text._ZNSt6vectorI5Vec8fSaIS0_EE5beginEv,"axG",@progbits,_ZNSt6vectorI5Vec8fSaIS0_EE5beginEv,comdat
	.align 2
	.weak	_ZNSt6vectorI5Vec8fSaIS0_EE5beginEv
	.type	_ZNSt6vectorI5Vec8fSaIS0_EE5beginEv, @function
_ZNSt6vectorI5Vec8fSaIS0_EE5beginEv:
.LFB16578:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIP5Vec8fSt6vectorIS1_SaIS1_EEEC1ERKS2_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L590
	call	__stack_chk_fail@PLT
.L590:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16578:
	.size	_ZNSt6vectorI5Vec8fSaIS0_EE5beginEv, .-_ZNSt6vectorI5Vec8fSaIS0_EE5beginEv
	.section	.text._ZN9__gnu_cxxmiIP5Vec8fSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_,"axG",@progbits,_ZN9__gnu_cxxmiIP5Vec8fSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_,comdat
	.weak	_ZN9__gnu_cxxmiIP5Vec8fSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	.type	_ZN9__gnu_cxxmiIP5Vec8fSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_, @function
_ZN9__gnu_cxxmiIP5Vec8fSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_:
.LFB16579:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP5Vec8fSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP5Vec8fSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rdx
	movq	%rbx, %rax
	subq	%rdx, %rax
	sarq	$5, %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16579:
	.size	_ZN9__gnu_cxxmiIP5Vec8fSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_, .-_ZN9__gnu_cxxmiIP5Vec8fSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	.section	.text._ZNSt12_Vector_baseI5Vec8fSaIS0_EE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseI5Vec8fSaIS0_EE11_M_allocateEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI5Vec8fSaIS0_EE11_M_allocateEm
	.type	_ZNSt12_Vector_baseI5Vec8fSaIS0_EE11_M_allocateEm, @function
_ZNSt12_Vector_baseI5Vec8fSaIS0_EE11_M_allocateEm:
.LFB16580:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L594
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaI5Vec8fEE8allocateERS1_m
	jmp	.L596
.L594:
	movl	$0, %eax
.L596:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16580:
	.size	_ZNSt12_Vector_baseI5Vec8fSaIS0_EE11_M_allocateEm, .-_ZNSt12_Vector_baseI5Vec8fSaIS0_EE11_M_allocateEm
	.section	.text._ZNSt6vectorI5Vec8fSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_,"axG",@progbits,_ZNSt6vectorI5Vec8fSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_,comdat
	.weak	_ZNSt6vectorI5Vec8fSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_
	.type	_ZNSt6vectorI5Vec8fSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_, @function
_ZNSt6vectorI5Vec8fSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_:
.LFB16581:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorI5Vec8fSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16581:
	.size	_ZNSt6vectorI5Vec8fSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_, .-_ZNSt6vectorI5Vec8fSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIP5Vec8fSt6vectorIS1_SaIS1_EEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIP5Vec8fSt6vectorIS1_SaIS1_EEE4baseEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIP5Vec8fSt6vectorIS1_SaIS1_EEE4baseEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIP5Vec8fSt6vectorIS1_SaIS1_EEE4baseEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIP5Vec8fSt6vectorIS1_SaIS1_EEE4baseEv:
.LFB16582:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16582:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIP5Vec8fSt6vectorIS1_SaIS1_EEE4baseEv, .-_ZNK9__gnu_cxx17__normal_iteratorIP5Vec8fSt6vectorIS1_SaIS1_EEE4baseEv
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIP5Vec8fSt6vectorIS1_SaIS1_EEEmiEl,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIP5Vec8fSt6vectorIS1_SaIS1_EEEmiEl,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIP5Vec8fSt6vectorIS1_SaIS1_EEEmiEl
	.type	_ZNK9__gnu_cxx17__normal_iteratorIP5Vec8fSt6vectorIS1_SaIS1_EEEmiEl, @function
_ZNK9__gnu_cxx17__normal_iteratorIP5Vec8fSt6vectorIS1_SaIS1_EEEmiEl:
.LFB16584:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	salq	$5, %rax
	negq	%rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	leaq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIP5Vec8fSt6vectorIS1_SaIS1_EEEC1ERKS2_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L603
	call	__stack_chk_fail@PLT
.L603:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16584:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIP5Vec8fSt6vectorIS1_SaIS1_EEEmiEl, .-_ZNK9__gnu_cxx17__normal_iteratorIP5Vec8fSt6vectorIS1_SaIS1_EEEmiEl
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIP5Vec8fSt6vectorIS1_SaIS1_EEEdeEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIP5Vec8fSt6vectorIS1_SaIS1_EEEdeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIP5Vec8fSt6vectorIS1_SaIS1_EEEdeEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIP5Vec8fSt6vectorIS1_SaIS1_EEEdeEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIP5Vec8fSt6vectorIS1_SaIS1_EEEdeEv:
.LFB16585:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16585:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIP5Vec8fSt6vectorIS1_SaIS1_EEEdeEv, .-_ZNK9__gnu_cxx17__normal_iteratorIP5Vec8fSt6vectorIS1_SaIS1_EEEdeEv
	.section	.text._ZNSt11_Tuple_implILm0EJSt6vectorI5Vec8fSaIS1_EEEEC2IS3_EEOT_,"axG",@progbits,_ZNSt11_Tuple_implILm0EJSt6vectorI5Vec8fSaIS1_EEEEC5IS3_EEOT_,comdat
	.align 2
	.weak	_ZNSt11_Tuple_implILm0EJSt6vectorI5Vec8fSaIS1_EEEEC2IS3_EEOT_
	.type	_ZNSt11_Tuple_implILm0EJSt6vectorI5Vec8fSaIS1_EEEEC2IS3_EEOT_, @function
_ZNSt11_Tuple_implILm0EJSt6vectorI5Vec8fSaIS1_EEEEC2IS3_EEOT_:
.LFB16587:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt6vectorI5Vec8fSaIS1_EEEOT_RNSt16remove_referenceIS4_E4typeE
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt10_Head_baseILm0ESt6vectorI5Vec8fSaIS1_EELb0EEC2IS3_EEOT_
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16587:
	.size	_ZNSt11_Tuple_implILm0EJSt6vectorI5Vec8fSaIS1_EEEEC2IS3_EEOT_, .-_ZNSt11_Tuple_implILm0EJSt6vectorI5Vec8fSaIS1_EEEEC2IS3_EEOT_
	.weak	_ZNSt11_Tuple_implILm0EJSt6vectorI5Vec8fSaIS1_EEEEC1IS3_EEOT_
	.set	_ZNSt11_Tuple_implILm0EJSt6vectorI5Vec8fSaIS1_EEEEC1IS3_EEOT_,_ZNSt11_Tuple_implILm0EJSt6vectorI5Vec8fSaIS1_EEEEC2IS3_EEOT_
	.section	.text._ZNSt11_Tuple_implILm0EJSt6vectorI5Vec8fSaIS1_EEEE7_M_headERS4_,"axG",@progbits,_ZNSt11_Tuple_implILm0EJSt6vectorI5Vec8fSaIS1_EEEE7_M_headERS4_,comdat
	.weak	_ZNSt11_Tuple_implILm0EJSt6vectorI5Vec8fSaIS1_EEEE7_M_headERS4_
	.type	_ZNSt11_Tuple_implILm0EJSt6vectorI5Vec8fSaIS1_EEEE7_M_headERS4_, @function
_ZNSt11_Tuple_implILm0EJSt6vectorI5Vec8fSaIS1_EEEE7_M_headERS4_:
.LFB16589:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10_Head_baseILm0ESt6vectorI5Vec8fSaIS1_EELb0EE7_M_headERS4_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16589:
	.size	_ZNSt11_Tuple_implILm0EJSt6vectorI5Vec8fSaIS1_EEEE7_M_headERS4_, .-_ZNSt11_Tuple_implILm0EJSt6vectorI5Vec8fSaIS1_EEEE7_M_headERS4_
	.section	.text._ZNSt16allocator_traitsISaI5Vec8fEE37select_on_container_copy_constructionERKS1_,"axG",@progbits,_ZNSt16allocator_traitsISaI5Vec8fEE37select_on_container_copy_constructionERKS1_,comdat
	.weak	_ZNSt16allocator_traitsISaI5Vec8fEE37select_on_container_copy_constructionERKS1_
	.type	_ZNSt16allocator_traitsISaI5Vec8fEE37select_on_container_copy_constructionERKS1_, @function
_ZNSt16allocator_traitsISaI5Vec8fEE37select_on_container_copy_constructionERKS1_:
.LFB16590:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSaI5Vec8fEC1ERKS0_
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16590:
	.size	_ZNSt16allocator_traitsISaI5Vec8fEE37select_on_container_copy_constructionERKS1_, .-_ZNSt16allocator_traitsISaI5Vec8fEE37select_on_container_copy_constructionERKS1_
	.section	.text._ZNSt12_Vector_baseI5Vec8fSaIS0_EE12_Vector_implC2ERKS1_,"axG",@progbits,_ZNSt12_Vector_baseI5Vec8fSaIS0_EE12_Vector_implC5ERKS1_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI5Vec8fSaIS0_EE12_Vector_implC2ERKS1_
	.type	_ZNSt12_Vector_baseI5Vec8fSaIS0_EE12_Vector_implC2ERKS1_, @function
_ZNSt12_Vector_baseI5Vec8fSaIS0_EE12_Vector_implC2ERKS1_:
.LFB16592:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSaI5Vec8fEC2ERKS0_
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI5Vec8fSaIS0_EE17_Vector_impl_dataC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16592:
	.size	_ZNSt12_Vector_baseI5Vec8fSaIS0_EE12_Vector_implC2ERKS1_, .-_ZNSt12_Vector_baseI5Vec8fSaIS0_EE12_Vector_implC2ERKS1_
	.weak	_ZNSt12_Vector_baseI5Vec8fSaIS0_EE12_Vector_implC1ERKS1_
	.set	_ZNSt12_Vector_baseI5Vec8fSaIS0_EE12_Vector_implC1ERKS1_,_ZNSt12_Vector_baseI5Vec8fSaIS0_EE12_Vector_implC2ERKS1_
	.section	.text._ZNSt12_Vector_baseI5Vec8fSaIS0_EE17_M_create_storageEm,"axG",@progbits,_ZNSt12_Vector_baseI5Vec8fSaIS0_EE17_M_create_storageEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI5Vec8fSaIS0_EE17_M_create_storageEm
	.type	_ZNSt12_Vector_baseI5Vec8fSaIS0_EE17_M_create_storageEm, @function
_ZNSt12_Vector_baseI5Vec8fSaIS0_EE17_M_create_storageEm:
.LFB16594:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI5Vec8fSaIS0_EE11_M_allocateEm
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	salq	$5, %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16594:
	.size	_ZNSt12_Vector_baseI5Vec8fSaIS0_EE17_M_create_storageEm, .-_ZNSt12_Vector_baseI5Vec8fSaIS0_EE17_M_create_storageEm
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPK5Vec8fSt6vectorIS1_SaIS1_EEEC2ERKS3_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPK5Vec8fSt6vectorIS1_SaIS1_EEEC5ERKS3_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPK5Vec8fSt6vectorIS1_SaIS1_EEEC2ERKS3_
	.type	_ZN9__gnu_cxx17__normal_iteratorIPK5Vec8fSt6vectorIS1_SaIS1_EEEC2ERKS3_, @function
_ZN9__gnu_cxx17__normal_iteratorIPK5Vec8fSt6vectorIS1_SaIS1_EEEC2ERKS3_:
.LFB16596:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16596:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPK5Vec8fSt6vectorIS1_SaIS1_EEEC2ERKS3_, .-_ZN9__gnu_cxx17__normal_iteratorIPK5Vec8fSt6vectorIS1_SaIS1_EEEC2ERKS3_
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPK5Vec8fSt6vectorIS1_SaIS1_EEEC1ERKS3_
	.set	_ZN9__gnu_cxx17__normal_iteratorIPK5Vec8fSt6vectorIS1_SaIS1_EEEC1ERKS3_,_ZN9__gnu_cxx17__normal_iteratorIPK5Vec8fSt6vectorIS1_SaIS1_EEEC2ERKS3_
	.section	.text._ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPK5Vec8fSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_,"axG",@progbits,_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPK5Vec8fSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_,comdat
	.weak	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPK5Vec8fSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_
	.type	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPK5Vec8fSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_, @function
_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPK5Vec8fSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_:
.LFB16598:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movb	$1, -1(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPK5Vec8fSt6vectorIS4_SaIS4_EEEEPS4_EET0_T_SD_SC_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16598:
	.size	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPK5Vec8fSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_, .-_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPK5Vec8fSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_
	.section	.text._ZN9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEE10deallocateEPS3_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEE10deallocateEPS3_m,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEE10deallocateEPS3_m
	.type	_ZN9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEE10deallocateEPS3_m, @function
_ZN9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEE10deallocateEPS3_m:
.LFB16681:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16681:
	.size	_ZN9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEE10deallocateEPS3_m, .-_ZN9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEE10deallocateEPS3_m
	.section	.text._ZNKSt6vectorIN5boost10stacktrace5frameESaIS2_EE8max_sizeEv,"axG",@progbits,_ZNKSt6vectorIN5boost10stacktrace5frameESaIS2_EE8max_sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIN5boost10stacktrace5frameESaIS2_EE8max_sizeEv
	.type	_ZNKSt6vectorIN5boost10stacktrace5frameESaIS2_EE8max_sizeEv, @function
_ZNKSt6vectorIN5boost10stacktrace5frameESaIS2_EE8max_sizeEv:
.LFB16682:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdi
	call	_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE11_S_max_sizeERKS3_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16682:
	.size	_ZNKSt6vectorIN5boost10stacktrace5frameESaIS2_EE8max_sizeEv, .-_ZNKSt6vectorIN5boost10stacktrace5frameESaIS2_EE8max_sizeEv
	.section	.text._ZNKSt6vectorIN5boost10stacktrace5frameESaIS2_EE8capacityEv,"axG",@progbits,_ZNKSt6vectorIN5boost10stacktrace5frameESaIS2_EE8capacityEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIN5boost10stacktrace5frameESaIS2_EE8capacityEv
	.type	_ZNKSt6vectorIN5boost10stacktrace5frameESaIS2_EE8capacityEv, @function
_ZNKSt6vectorIN5boost10stacktrace5frameESaIS2_EE8capacityEv:
.LFB16683:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rdx, %rax
	subq	%rcx, %rax
	sarq	$3, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16683:
	.size	_ZNKSt6vectorIN5boost10stacktrace5frameESaIS2_EE8capacityEv, .-_ZNKSt6vectorIN5boost10stacktrace5frameESaIS2_EE8capacityEv
	.section	.text._ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE11_M_allocateEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE11_M_allocateEm
	.type	_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE11_M_allocateEm, @function
_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE11_M_allocateEm:
.LFB16684:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L623
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaIN5boost10stacktrace5frameEEE8allocateERS3_m
	jmp	.L625
.L623:
	movl	$0, %eax
.L625:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16684:
	.size	_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE11_M_allocateEm, .-_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE11_M_allocateEm
	.section	.text._ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_,"axG",@progbits,_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_,comdat
	.weak	_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_
	.type	_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_, @function
_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_:
.LFB16685:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE14_S_do_relocateEPS2_S5_S5_RS3_St17integral_constantIbLb1EE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16685:
	.size	_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_, .-_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_
	.section	.text._ZSt4moveIRN5boost10stacktrace5frameEEONSt16remove_referenceIT_E4typeEOS5_,"axG",@progbits,_ZSt4moveIRN5boost10stacktrace5frameEEONSt16remove_referenceIT_E4typeEOS5_,comdat
	.weak	_ZSt4moveIRN5boost10stacktrace5frameEEONSt16remove_referenceIT_E4typeEOS5_
	.type	_ZSt4moveIRN5boost10stacktrace5frameEEONSt16remove_referenceIT_E4typeEOS5_, @function
_ZSt4moveIRN5boost10stacktrace5frameEEONSt16remove_referenceIT_E4typeEOS5_:
.LFB16686:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16686:
	.size	_ZSt4moveIRN5boost10stacktrace5frameEEONSt16remove_referenceIT_E4typeEOS5_, .-_ZSt4moveIRN5boost10stacktrace5frameEEONSt16remove_referenceIT_E4typeEOS5_
	.section	.text._ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_,"axG",@progbits,_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_,comdat
	.align 2
	.weak	_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_
	.type	_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_, @function
_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_:
.LFB16687:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	je	.L631
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIN5boost10stacktrace5frameEEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaIN5boost10stacktrace5frameEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L632
.L631:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIN5boost10stacktrace5frameEEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE3endEv
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_
.L632:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE4backEv
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16687:
	.size	_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_, .-_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_
	.section	.text._ZN9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEEC2ERKS4_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEEC5ERKS4_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEEC2ERKS4_
	.type	_ZN9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEEC2ERKS4_, @function
_ZN9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEEC2ERKS4_:
.LFB16689:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16689:
	.size	_ZN9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEEC2ERKS4_, .-_ZN9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEEC2ERKS4_
	.weak	_ZN9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEEC1ERKS4_
	.set	_ZN9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEEC1ERKS4_,_ZN9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEEC2ERKS4_
	.section	.text._ZNSaIPKvEC2ERKS1_,"axG",@progbits,_ZNSaIPKvEC5ERKS1_,comdat
	.align 2
	.weak	_ZNSaIPKvEC2ERKS1_
	.type	_ZNSaIPKvEC2ERKS1_, @function
_ZNSaIPKvEC2ERKS1_:
.LFB16692:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIPKvEC2ERKS3_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16692:
	.size	_ZNSaIPKvEC2ERKS1_, .-_ZNSaIPKvEC2ERKS1_
	.weak	_ZNSaIPKvEC1ERKS1_
	.set	_ZNSaIPKvEC1ERKS1_,_ZNSaIPKvEC2ERKS1_
	.section	.text._ZNSt12_Vector_baseIPKvSaIS1_EE12_Vector_implC2ERKS2_,"axG",@progbits,_ZNSt12_Vector_baseIPKvSaIS1_EE12_Vector_implC5ERKS2_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIPKvSaIS1_EE12_Vector_implC2ERKS2_
	.type	_ZNSt12_Vector_baseIPKvSaIS1_EE12_Vector_implC2ERKS2_, @function
_ZNSt12_Vector_baseIPKvSaIS1_EE12_Vector_implC2ERKS2_:
.LFB16695:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSaIPKvEC2ERKS1_
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIPKvSaIS1_EE17_Vector_impl_dataC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16695:
	.size	_ZNSt12_Vector_baseIPKvSaIS1_EE12_Vector_implC2ERKS2_, .-_ZNSt12_Vector_baseIPKvSaIS1_EE12_Vector_implC2ERKS2_
	.weak	_ZNSt12_Vector_baseIPKvSaIS1_EE12_Vector_implC1ERKS2_
	.set	_ZNSt12_Vector_baseIPKvSaIS1_EE12_Vector_implC1ERKS2_,_ZNSt12_Vector_baseIPKvSaIS1_EE12_Vector_implC2ERKS2_
	.section	.text._ZNSt12_Vector_baseIPKvSaIS1_EE17_M_create_storageEm,"axG",@progbits,_ZNSt12_Vector_baseIPKvSaIS1_EE17_M_create_storageEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIPKvSaIS1_EE17_M_create_storageEm
	.type	_ZNSt12_Vector_baseIPKvSaIS1_EE17_M_create_storageEm, @function
_ZNSt12_Vector_baseIPKvSaIS1_EE17_M_create_storageEm:
.LFB16697:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIPKvSaIS1_EE11_M_allocateEm
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	salq	$3, %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16697:
	.size	_ZNSt12_Vector_baseIPKvSaIS1_EE17_M_create_storageEm, .-_ZNSt12_Vector_baseIPKvSaIS1_EE17_M_create_storageEm
	.section	.text._ZNSt12_Vector_baseIPKvSaIS1_EE13_M_deallocateEPS1_m,"axG",@progbits,_ZNSt12_Vector_baseIPKvSaIS1_EE13_M_deallocateEPS1_m,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIPKvSaIS1_EE13_M_deallocateEPS1_m
	.type	_ZNSt12_Vector_baseIPKvSaIS1_EE13_M_deallocateEPS1_m, @function
_ZNSt12_Vector_baseIPKvSaIS1_EE13_M_deallocateEPS1_m:
.LFB16698:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L640
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaIPKvEE10deallocateERS2_PS1_m
.L640:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16698:
	.size	_ZNSt12_Vector_baseIPKvSaIS1_EE13_M_deallocateEPS1_m, .-_ZNSt12_Vector_baseIPKvSaIS1_EE13_M_deallocateEPS1_m
	.section	.text._ZSt24__uninitialized_fill_n_aIPPKvmS1_S1_ET_S3_T0_RKT1_RSaIT2_E,"axG",@progbits,_ZSt24__uninitialized_fill_n_aIPPKvmS1_S1_ET_S3_T0_RKT1_RSaIT2_E,comdat
	.weak	_ZSt24__uninitialized_fill_n_aIPPKvmS1_S1_ET_S3_T0_RKT1_RSaIT2_E
	.type	_ZSt24__uninitialized_fill_n_aIPPKvmS1_S1_ET_S3_T0_RKT1_RSaIT2_E, @function
_ZSt24__uninitialized_fill_n_aIPPKvmS1_S1_ET_S3_T0_RKT1_RSaIT2_E:
.LFB16699:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt20uninitialized_fill_nIPPKvmS1_ET_S3_T0_RKT1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16699:
	.size	_ZSt24__uninitialized_fill_n_aIPPKvmS1_S1_ET_S3_T0_RKT1_RSaIT2_E, .-_ZSt24__uninitialized_fill_n_aIPPKvmS1_S1_ET_S3_T0_RKT1_RSaIT2_E
	.section	.text._ZSt8_DestroyIPPKvEvT_S3_,"axG",@progbits,_ZSt8_DestroyIPPKvEvT_S3_,comdat
	.weak	_ZSt8_DestroyIPPKvEvT_S3_
	.type	_ZSt8_DestroyIPPKvEvT_S3_, @function
_ZSt8_DestroyIPPKvEvT_S3_:
.LFB16700:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Destroy_auxILb1EE9__destroyIPPKvEEvT_S5_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16700:
	.size	_ZSt8_DestroyIPPKvEvT_S3_, .-_ZSt8_DestroyIPPKvEvT_S3_
	.section	.text._ZSt27__uninitialized_default_n_aIPPKvmS1_ET_S3_T0_RSaIT1_E,"axG",@progbits,_ZSt27__uninitialized_default_n_aIPPKvmS1_ET_S3_T0_RSaIT1_E,comdat
	.weak	_ZSt27__uninitialized_default_n_aIPPKvmS1_ET_S3_T0_RSaIT1_E
	.type	_ZSt27__uninitialized_default_n_aIPPKvmS1_ET_S3_T0_RSaIT1_E, @function
_ZSt27__uninitialized_default_n_aIPPKvmS1_ET_S3_T0_RSaIT1_E:
.LFB16701:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt25__uninitialized_default_nIPPKvmET_S3_T0_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16701:
	.size	_ZSt27__uninitialized_default_n_aIPPKvmS1_ET_S3_T0_RSaIT1_E, .-_ZSt27__uninitialized_default_n_aIPPKvmS1_ET_S3_T0_RSaIT1_E
	.section	.text._ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc,"axG",@progbits,_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc,comdat
	.align 2
	.weak	_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc
	.type	_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc, @function
_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc:
.LFB16702:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIPKvSaIS1_EE8max_sizeEv
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIPKvSaIS1_EE4sizeEv
	subq	%rax, %rbx
	movq	%rbx, %rdx
	movq	-64(%rbp), %rax
	cmpq	%rax, %rdx
	setb	%al
	testb	%al, %al
	je	.L647
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
.L647:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIPKvSaIS1_EE4sizeEv
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIPKvSaIS1_EE4sizeEv
	movq	%rax, -40(%rbp)
	leaq	-64(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt3maxImERKT_S2_S2_
	movq	(%rax), %rax
	addq	%rbx, %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIPKvSaIS1_EE4sizeEv
	cmpq	%rax, -32(%rbp)
	jb	.L648
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIPKvSaIS1_EE8max_sizeEv
	cmpq	%rax, -32(%rbp)
	jbe	.L649
.L648:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIPKvSaIS1_EE8max_sizeEv
	jmp	.L650
.L649:
	movq	-32(%rbp), %rax
.L650:
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L652
	call	__stack_chk_fail@PLT
.L652:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16702:
	.size	_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc, .-_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc
	.section	.text._ZNSt12_Vector_baseIPKvSaIS1_EE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseIPKvSaIS1_EE11_M_allocateEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIPKvSaIS1_EE11_M_allocateEm
	.type	_ZNSt12_Vector_baseIPKvSaIS1_EE11_M_allocateEm, @function
_ZNSt12_Vector_baseIPKvSaIS1_EE11_M_allocateEm:
.LFB16703:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L654
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaIPKvEE8allocateERS2_m
	jmp	.L656
.L654:
	movl	$0, %eax
.L656:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16703:
	.size	_ZNSt12_Vector_baseIPKvSaIS1_EE11_M_allocateEm, .-_ZNSt12_Vector_baseIPKvSaIS1_EE11_M_allocateEm
	.section	.text._ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_,"axG",@progbits,_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_,comdat
	.weak	_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_
	.type	_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_, @function
_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_:
.LFB16704:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIPKvSaIS1_EE14_S_do_relocateEPS1_S4_S4_RS2_St17integral_constantIbLb1EE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16704:
	.size	_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_, .-_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_
	.section	.text._ZNSt16allocator_traitsISaIPKvEE8max_sizeERKS2_,"axG",@progbits,_ZNSt16allocator_traitsISaIPKvEE8max_sizeERKS2_,comdat
	.weak	_ZNSt16allocator_traitsISaIPKvEE8max_sizeERKS2_
	.type	_ZNSt16allocator_traitsISaIPKvEE8max_sizeERKS2_, @function
_ZNSt16allocator_traitsISaIPKvEE8max_sizeERKS2_:
.LFB16705:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx13new_allocatorIPKvE8max_sizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16705:
	.size	_ZNSt16allocator_traitsISaIPKvEE8max_sizeERKS2_, .-_ZNSt16allocator_traitsISaIPKvEE8max_sizeERKS2_
	.section	.text._ZNKSt6vectorI5Vec8fSaIS0_EE8max_sizeEv,"axG",@progbits,_ZNKSt6vectorI5Vec8fSaIS0_EE8max_sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorI5Vec8fSaIS0_EE8max_sizeEv
	.type	_ZNKSt6vectorI5Vec8fSaIS0_EE8max_sizeEv, @function
_ZNKSt6vectorI5Vec8fSaIS0_EE8max_sizeEv:
.LFB16706:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt12_Vector_baseI5Vec8fSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdi
	call	_ZNSt6vectorI5Vec8fSaIS0_EE11_S_max_sizeERKS1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16706:
	.size	_ZNKSt6vectorI5Vec8fSaIS0_EE8max_sizeEv, .-_ZNKSt6vectorI5Vec8fSaIS0_EE8max_sizeEv
	.section	.text._ZNSt16allocator_traitsISaI5Vec8fEE8allocateERS1_m,"axG",@progbits,_ZNSt16allocator_traitsISaI5Vec8fEE8allocateERS1_m,comdat
	.weak	_ZNSt16allocator_traitsISaI5Vec8fEE8allocateERS1_m
	.type	_ZNSt16allocator_traitsISaI5Vec8fEE8allocateERS1_m, @function
_ZNSt16allocator_traitsISaI5Vec8fEE8allocateERS1_m:
.LFB16707:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorI5Vec8fE8allocateEmPKv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16707:
	.size	_ZNSt16allocator_traitsISaI5Vec8fEE8allocateERS1_m, .-_ZNSt16allocator_traitsISaI5Vec8fEE8allocateERS1_m
	.section	.text._ZNSt6vectorI5Vec8fSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE,"axG",@progbits,_ZNSt6vectorI5Vec8fSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE,comdat
	.weak	_ZNSt6vectorI5Vec8fSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE
	.type	_ZNSt6vectorI5Vec8fSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE, @function
_ZNSt6vectorI5Vec8fSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE:
.LFB16708:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__relocate_aIP5Vec8fS1_SaIS0_EET0_T_S4_S3_RT1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16708:
	.size	_ZNSt6vectorI5Vec8fSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE, .-_ZNSt6vectorI5Vec8fSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE
	.section	.text._ZNSt10_Head_baseILm0ESt6vectorI5Vec8fSaIS1_EELb0EEC2IS3_EEOT_,"axG",@progbits,_ZNSt10_Head_baseILm0ESt6vectorI5Vec8fSaIS1_EELb0EEC5IS3_EEOT_,comdat
	.align 2
	.weak	_ZNSt10_Head_baseILm0ESt6vectorI5Vec8fSaIS1_EELb0EEC2IS3_EEOT_
	.type	_ZNSt10_Head_baseILm0ESt6vectorI5Vec8fSaIS1_EELb0EEC2IS3_EEOT_, @function
_ZNSt10_Head_baseILm0ESt6vectorI5Vec8fSaIS1_EELb0EEC2IS3_EEOT_:
.LFB16711:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt6vectorI5Vec8fSaIS1_EEEOT_RNSt16remove_referenceIS4_E4typeE
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt6vectorI5Vec8fSaIS0_EEC1EOS2_
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16711:
	.size	_ZNSt10_Head_baseILm0ESt6vectorI5Vec8fSaIS1_EELb0EEC2IS3_EEOT_, .-_ZNSt10_Head_baseILm0ESt6vectorI5Vec8fSaIS1_EELb0EEC2IS3_EEOT_
	.weak	_ZNSt10_Head_baseILm0ESt6vectorI5Vec8fSaIS1_EELb0EEC1IS3_EEOT_
	.set	_ZNSt10_Head_baseILm0ESt6vectorI5Vec8fSaIS1_EELb0EEC1IS3_EEOT_,_ZNSt10_Head_baseILm0ESt6vectorI5Vec8fSaIS1_EELb0EEC2IS3_EEOT_
	.section	.text._ZNSt10_Head_baseILm0ESt6vectorI5Vec8fSaIS1_EELb0EE7_M_headERS4_,"axG",@progbits,_ZNSt10_Head_baseILm0ESt6vectorI5Vec8fSaIS1_EELb0EE7_M_headERS4_,comdat
	.weak	_ZNSt10_Head_baseILm0ESt6vectorI5Vec8fSaIS1_EELb0EE7_M_headERS4_
	.type	_ZNSt10_Head_baseILm0ESt6vectorI5Vec8fSaIS1_EELb0EE7_M_headERS4_, @function
_ZNSt10_Head_baseILm0ESt6vectorI5Vec8fSaIS1_EELb0EE7_M_headERS4_:
.LFB16713:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16713:
	.size	_ZNSt10_Head_baseILm0ESt6vectorI5Vec8fSaIS1_EELb0EE7_M_headERS4_, .-_ZNSt10_Head_baseILm0ESt6vectorI5Vec8fSaIS1_EELb0EE7_M_headERS4_
	.section	.text._ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPK5Vec8fSt6vectorIS4_SaIS4_EEEEPS4_EET0_T_SD_SC_,"axG",@progbits,_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPK5Vec8fSt6vectorIS4_SaIS4_EEEEPS4_EET0_T_SD_SC_,comdat
	.weak	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPK5Vec8fSt6vectorIS4_SaIS4_EEEEPS4_EET0_T_SD_SC_
	.type	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPK5Vec8fSt6vectorIS4_SaIS4_EEEEPS4_EET0_T_SD_SC_, @function
_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPK5Vec8fSt6vectorIS4_SaIS4_EEEEPS4_EET0_T_SD_SC_:
.LFB16714:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK5Vec8fSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16714:
	.size	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPK5Vec8fSt6vectorIS4_SaIS4_EEEEPS4_EET0_T_SD_SC_, .-_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPK5Vec8fSt6vectorIS4_SaIS4_EEEEPS4_EET0_T_SD_SC_
	.section	.text._ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE11_S_max_sizeERKS3_,"axG",@progbits,_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE11_S_max_sizeERKS3_,comdat
	.weak	_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE11_S_max_sizeERKS3_
	.type	_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE11_S_max_sizeERKS3_, @function
_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE11_S_max_sizeERKS3_:
.LFB16761:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movabsq	$1152921504606846975, %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaIN5boost10stacktrace5frameEEE8max_sizeERKS3_
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt3minImERKT_S2_S2_
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L674
	call	__stack_chk_fail@PLT
.L674:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16761:
	.size	_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE11_S_max_sizeERKS3_, .-_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE11_S_max_sizeERKS3_
	.section	.text._ZNSt16allocator_traitsISaIN5boost10stacktrace5frameEEE8allocateERS3_m,"axG",@progbits,_ZNSt16allocator_traitsISaIN5boost10stacktrace5frameEEE8allocateERS3_m,comdat
	.weak	_ZNSt16allocator_traitsISaIN5boost10stacktrace5frameEEE8allocateERS3_m
	.type	_ZNSt16allocator_traitsISaIN5boost10stacktrace5frameEEE8allocateERS3_m, @function
_ZNSt16allocator_traitsISaIN5boost10stacktrace5frameEEE8allocateERS3_m:
.LFB16762:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEE8allocateEmPKv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16762:
	.size	_ZNSt16allocator_traitsISaIN5boost10stacktrace5frameEEE8allocateERS3_m, .-_ZNSt16allocator_traitsISaIN5boost10stacktrace5frameEEE8allocateERS3_m
	.section	.text._ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE14_S_do_relocateEPS2_S5_S5_RS3_St17integral_constantIbLb1EE,"axG",@progbits,_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE14_S_do_relocateEPS2_S5_S5_RS3_St17integral_constantIbLb1EE,comdat
	.weak	_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE14_S_do_relocateEPS2_S5_S5_RS3_St17integral_constantIbLb1EE
	.type	_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE14_S_do_relocateEPS2_S5_S5_RS3_St17integral_constantIbLb1EE, @function
_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE14_S_do_relocateEPS2_S5_S5_RS3_St17integral_constantIbLb1EE:
.LFB16763:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__relocate_aIPN5boost10stacktrace5frameES3_SaIS2_EET0_T_S6_S5_RT1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16763:
	.size	_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE14_S_do_relocateEPS2_S5_S5_RS3_St17integral_constantIbLb1EE, .-_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE14_S_do_relocateEPS2_S5_S5_RS3_St17integral_constantIbLb1EE
	.section	.text._ZSt7forwardIN5boost10stacktrace5frameEEOT_RNSt16remove_referenceIS3_E4typeE,"axG",@progbits,_ZSt7forwardIN5boost10stacktrace5frameEEOT_RNSt16remove_referenceIS3_E4typeE,comdat
	.weak	_ZSt7forwardIN5boost10stacktrace5frameEEOT_RNSt16remove_referenceIS3_E4typeE
	.type	_ZSt7forwardIN5boost10stacktrace5frameEEOT_RNSt16remove_referenceIS3_E4typeE, @function
_ZSt7forwardIN5boost10stacktrace5frameEEOT_RNSt16remove_referenceIS3_E4typeE:
.LFB16764:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16764:
	.size	_ZSt7forwardIN5boost10stacktrace5frameEEOT_RNSt16remove_referenceIS3_E4typeE, .-_ZSt7forwardIN5boost10stacktrace5frameEEOT_RNSt16remove_referenceIS3_E4typeE
	.section	.text._ZNSt16allocator_traitsISaIN5boost10stacktrace5frameEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_,"axG",@progbits,_ZNSt16allocator_traitsISaIN5boost10stacktrace5frameEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_,comdat
	.weak	_ZNSt16allocator_traitsISaIN5boost10stacktrace5frameEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_
	.type	_ZNSt16allocator_traitsISaIN5boost10stacktrace5frameEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_, @function
_ZNSt16allocator_traitsISaIN5boost10stacktrace5frameEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_:
.LFB16765:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIN5boost10stacktrace5frameEEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEE9constructIS3_JS3_EEEvPT_DpOT0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16765:
	.size	_ZNSt16allocator_traitsISaIN5boost10stacktrace5frameEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_, .-_ZNSt16allocator_traitsISaIN5boost10stacktrace5frameEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_
	.section	.text._ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE3endEv,"axG",@progbits,_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE3endEv,comdat
	.align 2
	.weak	_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE3endEv
	.type	_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE3endEv, @function
_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE3endEv:
.LFB16766:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPN5boost10stacktrace5frameESt6vectorIS3_SaIS3_EEEC1ERKS4_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L684
	call	__stack_chk_fail@PLT
.L684:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16766:
	.size	_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE3endEv, .-_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE3endEv
	.section	.text._ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_,"axG",@progbits,_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_,comdat
	.align 2
	.weak	_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_
	.type	_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_, @function
_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_:
.LFB16767:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-88(%rbp), %rax
	leaq	.LC23(%rip), %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZNKSt6vectorIN5boost10stacktrace5frameESaIS2_EE12_M_check_lenEmPKc
	movq	%rax, -72(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE5beginEv
	movq	%rax, -80(%rbp)
	leaq	-80(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxmiIPN5boost10stacktrace5frameESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_
	movq	%rax, -48(%rbp)
	movq	-88(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE11_M_allocateEm
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIN5boost10stacktrace5frameEEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	leaq	0(,%rax,8), %rcx
	movq	-40(%rbp), %rax
	addq	%rax, %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaIN5boost10stacktrace5frameEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_
	movq	$0, -32(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPN5boost10stacktrace5frameESt6vectorIS3_SaIS3_EEE4baseEv
	movq	(%rax), %rsi
	movq	-40(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_
	movq	%rax, -32(%rbp)
	addq	$8, -32(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPN5boost10stacktrace5frameESt6vectorIS3_SaIS3_EEE4baseEv
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_
	movq	%rax, -32(%rbp)
	movq	-88(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	16(%rdx), %rdx
	subq	-64(%rbp), %rdx
	sarq	$3, %rdx
	movq	-64(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE13_M_deallocateEPS2_m
	movq	-88(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-88(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-72(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L686
	call	__stack_chk_fail@PLT
.L686:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16767:
	.size	_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_, .-_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_
	.section	.text._ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE4backEv,"axG",@progbits,_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE4backEv,comdat
	.align 2
	.weak	_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE4backEv
	.type	_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE4backEv, @function
_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE4backEv:
.LFB16768:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE3endEv
	movq	%rax, -24(%rbp)
	leaq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPN5boost10stacktrace5frameESt6vectorIS3_SaIS3_EEEmiEl
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPN5boost10stacktrace5frameESt6vectorIS3_SaIS3_EEEdeEv
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L689
	call	__stack_chk_fail@PLT
.L689:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16768:
	.size	_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE4backEv, .-_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE4backEv
	.section	.text._ZN9__gnu_cxx13new_allocatorIPKvEC2ERKS3_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIPKvEC5ERKS3_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIPKvEC2ERKS3_
	.type	_ZN9__gnu_cxx13new_allocatorIPKvEC2ERKS3_, @function
_ZN9__gnu_cxx13new_allocatorIPKvEC2ERKS3_:
.LFB16770:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16770:
	.size	_ZN9__gnu_cxx13new_allocatorIPKvEC2ERKS3_, .-_ZN9__gnu_cxx13new_allocatorIPKvEC2ERKS3_
	.weak	_ZN9__gnu_cxx13new_allocatorIPKvEC1ERKS3_
	.set	_ZN9__gnu_cxx13new_allocatorIPKvEC1ERKS3_,_ZN9__gnu_cxx13new_allocatorIPKvEC2ERKS3_
	.section	.text._ZNSt12_Vector_baseIPKvSaIS1_EE17_Vector_impl_dataC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIPKvSaIS1_EE17_Vector_impl_dataC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIPKvSaIS1_EE17_Vector_impl_dataC2Ev
	.type	_ZNSt12_Vector_baseIPKvSaIS1_EE17_Vector_impl_dataC2Ev, @function
_ZNSt12_Vector_baseIPKvSaIS1_EE17_Vector_impl_dataC2Ev:
.LFB16773:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16773:
	.size	_ZNSt12_Vector_baseIPKvSaIS1_EE17_Vector_impl_dataC2Ev, .-_ZNSt12_Vector_baseIPKvSaIS1_EE17_Vector_impl_dataC2Ev
	.weak	_ZNSt12_Vector_baseIPKvSaIS1_EE17_Vector_impl_dataC1Ev
	.set	_ZNSt12_Vector_baseIPKvSaIS1_EE17_Vector_impl_dataC1Ev,_ZNSt12_Vector_baseIPKvSaIS1_EE17_Vector_impl_dataC2Ev
	.section	.text._ZNSt16allocator_traitsISaIPKvEE10deallocateERS2_PS1_m,"axG",@progbits,_ZNSt16allocator_traitsISaIPKvEE10deallocateERS2_PS1_m,comdat
	.weak	_ZNSt16allocator_traitsISaIPKvEE10deallocateERS2_PS1_m
	.type	_ZNSt16allocator_traitsISaIPKvEE10deallocateERS2_PS1_m, @function
_ZNSt16allocator_traitsISaIPKvEE10deallocateERS2_PS1_m:
.LFB16775:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIPKvE10deallocateEPS2_m
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16775:
	.size	_ZNSt16allocator_traitsISaIPKvEE10deallocateERS2_PS1_m, .-_ZNSt16allocator_traitsISaIPKvEE10deallocateERS2_PS1_m
	.section	.text._ZSt20uninitialized_fill_nIPPKvmS1_ET_S3_T0_RKT1_,"axG",@progbits,_ZSt20uninitialized_fill_nIPPKvmS1_ET_S3_T0_RKT1_,comdat
	.weak	_ZSt20uninitialized_fill_nIPPKvmS1_ET_S3_T0_RKT1_
	.type	_ZSt20uninitialized_fill_nIPPKvmS1_ET_S3_T0_RKT1_, @function
_ZSt20uninitialized_fill_nIPPKvmS1_ET_S3_T0_RKT1_:
.LFB16776:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movb	$1, -1(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPPKvmS3_EET_S5_T0_RKT1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16776:
	.size	_ZSt20uninitialized_fill_nIPPKvmS1_ET_S3_T0_RKT1_, .-_ZSt20uninitialized_fill_nIPPKvmS1_ET_S3_T0_RKT1_
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIPPKvEEvT_S5_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIPPKvEEvT_S5_,comdat
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIPPKvEEvT_S5_
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIPPKvEEvT_S5_, @function
_ZNSt12_Destroy_auxILb1EE9__destroyIPPKvEEvT_S5_:
.LFB16777:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16777:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIPPKvEEvT_S5_, .-_ZNSt12_Destroy_auxILb1EE9__destroyIPPKvEEvT_S5_
	.section	.text._ZSt25__uninitialized_default_nIPPKvmET_S3_T0_,"axG",@progbits,_ZSt25__uninitialized_default_nIPPKvmET_S3_T0_,comdat
	.weak	_ZSt25__uninitialized_default_nIPPKvmET_S3_T0_
	.type	_ZSt25__uninitialized_default_nIPPKvmET_S3_T0_, @function
_ZSt25__uninitialized_default_nIPPKvmET_S3_T0_:
.LFB16778:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movb	$1, -1(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPPKvmEET_S5_T0_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16778:
	.size	_ZSt25__uninitialized_default_nIPPKvmET_S3_T0_, .-_ZSt25__uninitialized_default_nIPPKvmET_S3_T0_
	.section	.text._ZNSt16allocator_traitsISaIPKvEE8allocateERS2_m,"axG",@progbits,_ZNSt16allocator_traitsISaIPKvEE8allocateERS2_m,comdat
	.weak	_ZNSt16allocator_traitsISaIPKvEE8allocateERS2_m
	.type	_ZNSt16allocator_traitsISaIPKvEE8allocateERS2_m, @function
_ZNSt16allocator_traitsISaIPKvEE8allocateERS2_m:
.LFB16779:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIPKvE8allocateEmS2_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16779:
	.size	_ZNSt16allocator_traitsISaIPKvEE8allocateERS2_m, .-_ZNSt16allocator_traitsISaIPKvEE8allocateERS2_m
	.section	.text._ZNSt6vectorIPKvSaIS1_EE14_S_do_relocateEPS1_S4_S4_RS2_St17integral_constantIbLb1EE,"axG",@progbits,_ZNSt6vectorIPKvSaIS1_EE14_S_do_relocateEPS1_S4_S4_RS2_St17integral_constantIbLb1EE,comdat
	.weak	_ZNSt6vectorIPKvSaIS1_EE14_S_do_relocateEPS1_S4_S4_RS2_St17integral_constantIbLb1EE
	.type	_ZNSt6vectorIPKvSaIS1_EE14_S_do_relocateEPS1_S4_S4_RS2_St17integral_constantIbLb1EE, @function
_ZNSt6vectorIPKvSaIS1_EE14_S_do_relocateEPS1_S4_S4_RS2_St17integral_constantIbLb1EE:
.LFB16780:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__relocate_aIPPKvS2_SaIS1_EET0_T_S5_S4_RT1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16780:
	.size	_ZNSt6vectorIPKvSaIS1_EE14_S_do_relocateEPS1_S4_S4_RS2_St17integral_constantIbLb1EE, .-_ZNSt6vectorIPKvSaIS1_EE14_S_do_relocateEPS1_S4_S4_RS2_St17integral_constantIbLb1EE
	.section	.text._ZNK9__gnu_cxx13new_allocatorIPKvE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIPKvE8max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorIPKvE8max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIPKvE8max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorIPKvE8max_sizeEv:
.LFB16781:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx13new_allocatorIPKvE11_M_max_sizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16781:
	.size	_ZNK9__gnu_cxx13new_allocatorIPKvE8max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIPKvE8max_sizeEv
	.section	.text._ZNSt6vectorI5Vec8fSaIS0_EE11_S_max_sizeERKS1_,"axG",@progbits,_ZNSt6vectorI5Vec8fSaIS0_EE11_S_max_sizeERKS1_,comdat
	.weak	_ZNSt6vectorI5Vec8fSaIS0_EE11_S_max_sizeERKS1_
	.type	_ZNSt6vectorI5Vec8fSaIS0_EE11_S_max_sizeERKS1_, @function
_ZNSt6vectorI5Vec8fSaIS0_EE11_S_max_sizeERKS1_:
.LFB16782:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movabsq	$288230376151711743, %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaI5Vec8fEE8max_sizeERKS1_
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt3minImERKT_S2_S2_
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L706
	call	__stack_chk_fail@PLT
.L706:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16782:
	.size	_ZNSt6vectorI5Vec8fSaIS0_EE11_S_max_sizeERKS1_, .-_ZNSt6vectorI5Vec8fSaIS0_EE11_S_max_sizeERKS1_
	.section	.text._ZNK9__gnu_cxx13new_allocatorI5Vec8fE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorI5Vec8fE11_M_max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorI5Vec8fE11_M_max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorI5Vec8fE11_M_max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorI5Vec8fE11_M_max_sizeEv:
.LFB16784:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movabsq	$288230376151711743, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16784:
	.size	_ZNK9__gnu_cxx13new_allocatorI5Vec8fE11_M_max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorI5Vec8fE11_M_max_sizeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorI5Vec8fE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI5Vec8fE8allocateEmPKv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorI5Vec8fE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorI5Vec8fE8allocateEmPKv, @function
_ZN9__gnu_cxx13new_allocatorI5Vec8fE8allocateEmPKv:
.LFB16783:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx13new_allocatorI5Vec8fE11_M_max_sizeEv
	cmpq	%rax, -16(%rbp)
	seta	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	je	.L710
	movabsq	$576460752303423487, %rax
	cmpq	%rax, -16(%rbp)
	jbe	.L711
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L711:
	call	_ZSt17__throw_bad_allocv@PLT
.L710:
	movq	-16(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdi
	call	_Znwm@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16783:
	.size	_ZN9__gnu_cxx13new_allocatorI5Vec8fE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorI5Vec8fE8allocateEmPKv
	.section	.text._ZSt12__relocate_aIP5Vec8fS1_SaIS0_EET0_T_S4_S3_RT1_,"axG",@progbits,_ZSt12__relocate_aIP5Vec8fS1_SaIS0_EET0_T_S4_S3_RT1_,comdat
	.weak	_ZSt12__relocate_aIP5Vec8fS1_SaIS0_EET0_T_S4_S3_RT1_
	.type	_ZSt12__relocate_aIP5Vec8fS1_SaIS0_EET0_T_S4_S3_RT1_, @function
_ZSt12__relocate_aIP5Vec8fS1_SaIS0_EET0_T_S4_S3_RT1_:
.LFB16785:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIP5Vec8fET_S2_
	movq	%rax, %r12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIP5Vec8fET_S2_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIP5Vec8fET_S2_
	movq	%rax, %rdi
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	movq	%r12, %rdx
	movq	%rbx, %rsi
	call	_ZSt14__relocate_a_1I5Vec8fS0_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS3_E4typeES5_S5_S5_RSaIT0_E
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16785:
	.size	_ZSt12__relocate_aIP5Vec8fS1_SaIS0_EET0_T_S4_S3_RT1_, .-_ZSt12__relocate_aIP5Vec8fS1_SaIS0_EET0_T_S4_S3_RT1_
	.section	.text._ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK5Vec8fSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_,"axG",@progbits,_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK5Vec8fSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_,comdat
	.weak	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK5Vec8fSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_
	.type	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK5Vec8fSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_, @function
_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK5Vec8fSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_:
.LFB16786:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPK5Vec8fSt6vectorIS2_SaIS2_EEEEET_S9_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPK5Vec8fSt6vectorIS2_SaIS2_EEEEET_S9_
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	%rbx, %rsi
	movq	%rcx, %rdi
	call	_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPK5Vec8fSt6vectorIS2_SaIS2_EEEEPS2_ET1_T0_SB_SA_
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16786:
	.size	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK5Vec8fSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_, .-_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK5Vec8fSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_
	.section	.text._ZNSt16allocator_traitsISaIN5boost10stacktrace5frameEEE8max_sizeERKS3_,"axG",@progbits,_ZNSt16allocator_traitsISaIN5boost10stacktrace5frameEEE8max_sizeERKS3_,comdat
	.weak	_ZNSt16allocator_traitsISaIN5boost10stacktrace5frameEEE8max_sizeERKS3_
	.type	_ZNSt16allocator_traitsISaIN5boost10stacktrace5frameEEE8max_sizeERKS3_, @function
_ZNSt16allocator_traitsISaIN5boost10stacktrace5frameEEE8max_sizeERKS3_:
.LFB16811:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEE8max_sizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16811:
	.size	_ZNSt16allocator_traitsISaIN5boost10stacktrace5frameEEE8max_sizeERKS3_, .-_ZNSt16allocator_traitsISaIN5boost10stacktrace5frameEEE8max_sizeERKS3_
	.section	.text._ZNK9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEE11_M_max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEE11_M_max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEE11_M_max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEE11_M_max_sizeEv:
.LFB16813:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movabsq	$1152921504606846975, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16813:
	.size	_ZNK9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEE11_M_max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEE11_M_max_sizeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEE8allocateEmPKv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEE8allocateEmPKv, @function
_ZN9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEE8allocateEmPKv:
.LFB16812:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEE11_M_max_sizeEv
	cmpq	%rax, -16(%rbp)
	seta	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	je	.L722
	movabsq	$2305843009213693951, %rax
	cmpq	%rax, -16(%rbp)
	jbe	.L723
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L723:
	call	_ZSt17__throw_bad_allocv@PLT
.L722:
	movq	-16(%rbp), %rax
	salq	$3, %rax
	movq	%rax, %rdi
	call	_Znwm@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16812:
	.size	_ZN9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEE8allocateEmPKv
	.section	.text._ZSt12__relocate_aIPN5boost10stacktrace5frameES3_SaIS2_EET0_T_S6_S5_RT1_,"axG",@progbits,_ZSt12__relocate_aIPN5boost10stacktrace5frameES3_SaIS2_EET0_T_S6_S5_RT1_,comdat
	.weak	_ZSt12__relocate_aIPN5boost10stacktrace5frameES3_SaIS2_EET0_T_S6_S5_RT1_
	.type	_ZSt12__relocate_aIPN5boost10stacktrace5frameES3_SaIS2_EET0_T_S6_S5_RT1_, @function
_ZSt12__relocate_aIPN5boost10stacktrace5frameES3_SaIS2_EET0_T_S6_S5_RT1_:
.LFB16814:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPN5boost10stacktrace5frameEET_S4_
	movq	%rax, %r12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPN5boost10stacktrace5frameEET_S4_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPN5boost10stacktrace5frameEET_S4_
	movq	%rax, %rdi
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	movq	%r12, %rdx
	movq	%rbx, %rsi
	call	_ZSt14__relocate_a_1IPN5boost10stacktrace5frameES3_SaIS2_EET0_T_S6_S5_RT1_
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16814:
	.size	_ZSt12__relocate_aIPN5boost10stacktrace5frameES3_SaIS2_EET0_T_S6_S5_RT1_, .-_ZSt12__relocate_aIPN5boost10stacktrace5frameES3_SaIS2_EET0_T_S6_S5_RT1_
	.section	.text._ZN9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEE9constructIS3_JS3_EEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEE9constructIS3_JS3_EEEvPT_DpOT0_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEE9constructIS3_JS3_EEEvPT_DpOT0_
	.type	_ZN9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEE9constructIS3_JS3_EEEvPT_DpOT0_, @function
_ZN9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEE9constructIS3_JS3_EEEvPT_DpOT0_:
.LFB16815:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIN5boost10stacktrace5frameEEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$8, %edi
	call	_ZnwmPv
	movq	(%rbx), %rdx
	movq	%rdx, (%rax)
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16815:
	.size	_ZN9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEE9constructIS3_JS3_EEEvPT_DpOT0_, .-_ZN9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEE9constructIS3_JS3_EEEvPT_DpOT0_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPN5boost10stacktrace5frameESt6vectorIS3_SaIS3_EEEC2ERKS4_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPN5boost10stacktrace5frameESt6vectorIS3_SaIS3_EEEC5ERKS4_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPN5boost10stacktrace5frameESt6vectorIS3_SaIS3_EEEC2ERKS4_
	.type	_ZN9__gnu_cxx17__normal_iteratorIPN5boost10stacktrace5frameESt6vectorIS3_SaIS3_EEEC2ERKS4_, @function
_ZN9__gnu_cxx17__normal_iteratorIPN5boost10stacktrace5frameESt6vectorIS3_SaIS3_EEEC2ERKS4_:
.LFB16817:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16817:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPN5boost10stacktrace5frameESt6vectorIS3_SaIS3_EEEC2ERKS4_, .-_ZN9__gnu_cxx17__normal_iteratorIPN5boost10stacktrace5frameESt6vectorIS3_SaIS3_EEEC2ERKS4_
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPN5boost10stacktrace5frameESt6vectorIS3_SaIS3_EEEC1ERKS4_
	.set	_ZN9__gnu_cxx17__normal_iteratorIPN5boost10stacktrace5frameESt6vectorIS3_SaIS3_EEEC1ERKS4_,_ZN9__gnu_cxx17__normal_iteratorIPN5boost10stacktrace5frameESt6vectorIS3_SaIS3_EEEC2ERKS4_
	.section	.text._ZNKSt6vectorIN5boost10stacktrace5frameESaIS2_EE12_M_check_lenEmPKc,"axG",@progbits,_ZNKSt6vectorIN5boost10stacktrace5frameESaIS2_EE12_M_check_lenEmPKc,comdat
	.align 2
	.weak	_ZNKSt6vectorIN5boost10stacktrace5frameESaIS2_EE12_M_check_lenEmPKc
	.type	_ZNKSt6vectorIN5boost10stacktrace5frameESaIS2_EE12_M_check_lenEmPKc, @function
_ZNKSt6vectorIN5boost10stacktrace5frameESaIS2_EE12_M_check_lenEmPKc:
.LFB16819:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIN5boost10stacktrace5frameESaIS2_EE8max_sizeEv
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIN5boost10stacktrace5frameESaIS2_EE4sizeEv
	subq	%rax, %rbx
	movq	%rbx, %rdx
	movq	-64(%rbp), %rax
	cmpq	%rax, %rdx
	setb	%al
	testb	%al, %al
	je	.L730
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
.L730:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIN5boost10stacktrace5frameESaIS2_EE4sizeEv
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIN5boost10stacktrace5frameESaIS2_EE4sizeEv
	movq	%rax, -40(%rbp)
	leaq	-64(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt3maxImERKT_S2_S2_
	movq	(%rax), %rax
	addq	%rbx, %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIN5boost10stacktrace5frameESaIS2_EE4sizeEv
	cmpq	%rax, -32(%rbp)
	jb	.L731
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIN5boost10stacktrace5frameESaIS2_EE8max_sizeEv
	cmpq	%rax, -32(%rbp)
	jbe	.L732
.L731:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIN5boost10stacktrace5frameESaIS2_EE8max_sizeEv
	jmp	.L733
.L732:
	movq	-32(%rbp), %rax
.L733:
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L735
	call	__stack_chk_fail@PLT
.L735:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16819:
	.size	_ZNKSt6vectorIN5boost10stacktrace5frameESaIS2_EE12_M_check_lenEmPKc, .-_ZNKSt6vectorIN5boost10stacktrace5frameESaIS2_EE12_M_check_lenEmPKc
	.section	.text._ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE5beginEv,"axG",@progbits,_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE5beginEv,comdat
	.align 2
	.weak	_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE5beginEv
	.type	_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE5beginEv, @function
_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE5beginEv:
.LFB16820:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPN5boost10stacktrace5frameESt6vectorIS3_SaIS3_EEEC1ERKS4_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L738
	call	__stack_chk_fail@PLT
.L738:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16820:
	.size	_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE5beginEv, .-_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE5beginEv
	.section	.text._ZN9__gnu_cxxmiIPN5boost10stacktrace5frameESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_,"axG",@progbits,_ZN9__gnu_cxxmiIPN5boost10stacktrace5frameESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_,comdat
	.weak	_ZN9__gnu_cxxmiIPN5boost10stacktrace5frameESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_
	.type	_ZN9__gnu_cxxmiIPN5boost10stacktrace5frameESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_, @function
_ZN9__gnu_cxxmiIPN5boost10stacktrace5frameESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_:
.LFB16821:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPN5boost10stacktrace5frameESt6vectorIS3_SaIS3_EEE4baseEv
	movq	(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPN5boost10stacktrace5frameESt6vectorIS3_SaIS3_EEE4baseEv
	movq	(%rax), %rdx
	movq	%rbx, %rax
	subq	%rdx, %rax
	sarq	$3, %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16821:
	.size	_ZN9__gnu_cxxmiIPN5boost10stacktrace5frameESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_, .-_ZN9__gnu_cxxmiIPN5boost10stacktrace5frameESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPN5boost10stacktrace5frameESt6vectorIS3_SaIS3_EEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPN5boost10stacktrace5frameESt6vectorIS3_SaIS3_EEE4baseEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPN5boost10stacktrace5frameESt6vectorIS3_SaIS3_EEE4baseEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPN5boost10stacktrace5frameESt6vectorIS3_SaIS3_EEE4baseEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIPN5boost10stacktrace5frameESt6vectorIS3_SaIS3_EEE4baseEv:
.LFB16822:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16822:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPN5boost10stacktrace5frameESt6vectorIS3_SaIS3_EEE4baseEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPN5boost10stacktrace5frameESt6vectorIS3_SaIS3_EEE4baseEv
	.section	.text._ZNSt16allocator_traitsISaIN5boost10stacktrace5frameEEE7destroyIS2_EEvRS3_PT_,"axG",@progbits,_ZNSt16allocator_traitsISaIN5boost10stacktrace5frameEEE7destroyIS2_EEvRS3_PT_,comdat
	.weak	_ZNSt16allocator_traitsISaIN5boost10stacktrace5frameEEE7destroyIS2_EEvRS3_PT_
	.type	_ZNSt16allocator_traitsISaIN5boost10stacktrace5frameEEE7destroyIS2_EEvRS3_PT_, @function
_ZNSt16allocator_traitsISaIN5boost10stacktrace5frameEEE7destroyIS2_EEvRS3_PT_:
.LFB16823:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEE7destroyIS3_EEvPT_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16823:
	.size	_ZNSt16allocator_traitsISaIN5boost10stacktrace5frameEEE7destroyIS2_EEvRS3_PT_, .-_ZNSt16allocator_traitsISaIN5boost10stacktrace5frameEEE7destroyIS2_EEvRS3_PT_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPN5boost10stacktrace5frameESt6vectorIS3_SaIS3_EEEmiEl,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPN5boost10stacktrace5frameESt6vectorIS3_SaIS3_EEEmiEl,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPN5boost10stacktrace5frameESt6vectorIS3_SaIS3_EEEmiEl
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPN5boost10stacktrace5frameESt6vectorIS3_SaIS3_EEEmiEl, @function
_ZNK9__gnu_cxx17__normal_iteratorIPN5boost10stacktrace5frameESt6vectorIS3_SaIS3_EEEmiEl:
.LFB16824:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	salq	$3, %rax
	negq	%rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	leaq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPN5boost10stacktrace5frameESt6vectorIS3_SaIS3_EEEC1ERKS4_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L746
	call	__stack_chk_fail@PLT
.L746:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16824:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPN5boost10stacktrace5frameESt6vectorIS3_SaIS3_EEEmiEl, .-_ZNK9__gnu_cxx17__normal_iteratorIPN5boost10stacktrace5frameESt6vectorIS3_SaIS3_EEEmiEl
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPN5boost10stacktrace5frameESt6vectorIS3_SaIS3_EEEdeEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPN5boost10stacktrace5frameESt6vectorIS3_SaIS3_EEEdeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPN5boost10stacktrace5frameESt6vectorIS3_SaIS3_EEEdeEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPN5boost10stacktrace5frameESt6vectorIS3_SaIS3_EEEdeEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIPN5boost10stacktrace5frameESt6vectorIS3_SaIS3_EEEdeEv:
.LFB16825:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16825:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPN5boost10stacktrace5frameESt6vectorIS3_SaIS3_EEEdeEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPN5boost10stacktrace5frameESt6vectorIS3_SaIS3_EEEdeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorIPKvE10deallocateEPS2_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIPKvE10deallocateEPS2_m,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIPKvE10deallocateEPS2_m
	.type	_ZN9__gnu_cxx13new_allocatorIPKvE10deallocateEPS2_m, @function
_ZN9__gnu_cxx13new_allocatorIPKvE10deallocateEPS2_m:
.LFB16826:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16826:
	.size	_ZN9__gnu_cxx13new_allocatorIPKvE10deallocateEPS2_m, .-_ZN9__gnu_cxx13new_allocatorIPKvE10deallocateEPS2_m
	.section	.text._ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPPKvmS3_EET_S5_T0_RKT1_,"axG",@progbits,_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPPKvmS3_EET_S5_T0_RKT1_,comdat
	.weak	_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPPKvmS3_EET_S5_T0_RKT1_
	.type	_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPPKvmS3_EET_S5_T0_RKT1_, @function
_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPPKvmS3_EET_S5_T0_RKT1_:
.LFB16827:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt6fill_nIPPKvmS1_ET_S3_T0_RKT1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16827:
	.size	_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPPKvmS3_EET_S5_T0_RKT1_, .-_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPPKvmS3_EET_S5_T0_RKT1_
	.section	.text._ZSt11__addressofIPKvEPT_RS2_,"axG",@progbits,_ZSt11__addressofIPKvEPT_RS2_,comdat
	.weak	_ZSt11__addressofIPKvEPT_RS2_
	.type	_ZSt11__addressofIPKvEPT_RS2_, @function
_ZSt11__addressofIPKvEPT_RS2_:
.LFB16829:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16829:
	.size	_ZSt11__addressofIPKvEPT_RS2_, .-_ZSt11__addressofIPKvEPT_RS2_
	.section	.text._ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPPKvmEET_S5_T0_,"axG",@progbits,_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPPKvmEET_S5_T0_,comdat
	.weak	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPPKvmEET_S5_T0_
	.type	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPPKvmEET_S5_T0_, @function
_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPPKvmEET_S5_T0_:
.LFB16828:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L756
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt11__addressofIPKvEPT_RS2_
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt10_ConstructIPKvJEEvPT_DpOT0_
	addq	$8, -24(%rbp)
	movq	-32(%rbp), %rax
	leaq	-1(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt6fill_nIPPKvmS1_ET_S3_T0_RKT1_
	movq	%rax, -24(%rbp)
.L756:
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16828:
	.size	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPPKvmEET_S5_T0_, .-_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPPKvmEET_S5_T0_
	.section	.text._ZNK9__gnu_cxx13new_allocatorIPKvE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIPKvE11_M_max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorIPKvE11_M_max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIPKvE11_M_max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorIPKvE11_M_max_sizeEv:
.LFB16831:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movabsq	$1152921504606846975, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16831:
	.size	_ZNK9__gnu_cxx13new_allocatorIPKvE11_M_max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIPKvE11_M_max_sizeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorIPKvE8allocateEmS2_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIPKvE8allocateEmS2_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIPKvE8allocateEmS2_
	.type	_ZN9__gnu_cxx13new_allocatorIPKvE8allocateEmS2_, @function
_ZN9__gnu_cxx13new_allocatorIPKvE8allocateEmS2_:
.LFB16830:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx13new_allocatorIPKvE11_M_max_sizeEv
	cmpq	%rax, -16(%rbp)
	seta	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	je	.L761
	movabsq	$2305843009213693951, %rax
	cmpq	%rax, -16(%rbp)
	jbe	.L762
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L762:
	call	_ZSt17__throw_bad_allocv@PLT
.L761:
	movq	-16(%rbp), %rax
	salq	$3, %rax
	movq	%rax, %rdi
	call	_Znwm@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16830:
	.size	_ZN9__gnu_cxx13new_allocatorIPKvE8allocateEmS2_, .-_ZN9__gnu_cxx13new_allocatorIPKvE8allocateEmS2_
	.section	.text._ZSt12__relocate_aIPPKvS2_SaIS1_EET0_T_S5_S4_RT1_,"axG",@progbits,_ZSt12__relocate_aIPPKvS2_SaIS1_EET0_T_S5_S4_RT1_,comdat
	.weak	_ZSt12__relocate_aIPPKvS2_SaIS1_EET0_T_S5_S4_RT1_
	.type	_ZSt12__relocate_aIPPKvS2_SaIS1_EET0_T_S5_S4_RT1_, @function
_ZSt12__relocate_aIPPKvS2_SaIS1_EET0_T_S5_S4_RT1_:
.LFB16832:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPPKvET_S3_
	movq	%rax, %r12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPPKvET_S3_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPPKvET_S3_
	movq	%rax, %rdi
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	movq	%r12, %rdx
	movq	%rbx, %rsi
	call	_ZSt14__relocate_a_1IPKvS1_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS4_E4typeES6_S6_S6_RSaIT0_E
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16832:
	.size	_ZSt12__relocate_aIPPKvS2_SaIS1_EET0_T_S5_S4_RT1_, .-_ZSt12__relocate_aIPPKvS2_SaIS1_EET0_T_S5_S4_RT1_
	.section	.text._ZNSt16allocator_traitsISaI5Vec8fEE8max_sizeERKS1_,"axG",@progbits,_ZNSt16allocator_traitsISaI5Vec8fEE8max_sizeERKS1_,comdat
	.weak	_ZNSt16allocator_traitsISaI5Vec8fEE8max_sizeERKS1_
	.type	_ZNSt16allocator_traitsISaI5Vec8fEE8max_sizeERKS1_, @function
_ZNSt16allocator_traitsISaI5Vec8fEE8max_sizeERKS1_:
.LFB16833:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx13new_allocatorI5Vec8fE8max_sizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16833:
	.size	_ZNSt16allocator_traitsISaI5Vec8fEE8max_sizeERKS1_, .-_ZNSt16allocator_traitsISaI5Vec8fEE8max_sizeERKS1_
	.section	.text._ZSt12__niter_baseIP5Vec8fET_S2_,"axG",@progbits,_ZSt12__niter_baseIP5Vec8fET_S2_,comdat
	.weak	_ZSt12__niter_baseIP5Vec8fET_S2_
	.type	_ZSt12__niter_baseIP5Vec8fET_S2_, @function
_ZSt12__niter_baseIP5Vec8fET_S2_:
.LFB16834:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16834:
	.size	_ZSt12__niter_baseIP5Vec8fET_S2_, .-_ZSt12__niter_baseIP5Vec8fET_S2_
	.section	.text._ZSt14__relocate_a_1I5Vec8fS0_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS3_E4typeES5_S5_S5_RSaIT0_E,"axG",@progbits,_ZSt14__relocate_a_1I5Vec8fS0_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS3_E4typeES5_S5_S5_RSaIT0_E,comdat
	.weak	_ZSt14__relocate_a_1I5Vec8fS0_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS3_E4typeES5_S5_S5_RSaIT0_E
	.type	_ZSt14__relocate_a_1I5Vec8fS0_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS3_E4typeES5_S5_S5_RSaIT0_E, @function
_ZSt14__relocate_a_1I5Vec8fS0_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS3_E4typeES5_S5_S5_RSaIT0_E:
.LFB16835:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-32(%rbp), %rax
	subq	-24(%rbp), %rax
	sarq	$5, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jle	.L771
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
.L771:
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16835:
	.size	_ZSt14__relocate_a_1I5Vec8fS0_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS3_E4typeES5_S5_S5_RSaIT0_E, .-_ZSt14__relocate_a_1I5Vec8fS0_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS3_E4typeES5_S5_S5_RSaIT0_E
	.section	.text._ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPK5Vec8fSt6vectorIS2_SaIS2_EEEEET_S9_,"axG",@progbits,_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPK5Vec8fSt6vectorIS2_SaIS2_EEEEET_S9_,comdat
	.weak	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPK5Vec8fSt6vectorIS2_SaIS2_EEEEET_S9_
	.type	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPK5Vec8fSt6vectorIS2_SaIS2_EEEEET_S9_, @function
_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPK5Vec8fSt6vectorIS2_SaIS2_EEEEET_S9_:
.LFB16836:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16836:
	.size	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPK5Vec8fSt6vectorIS2_SaIS2_EEEEET_S9_, .-_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPK5Vec8fSt6vectorIS2_SaIS2_EEEEET_S9_
	.section	.text._ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPK5Vec8fSt6vectorIS2_SaIS2_EEEEPS2_ET1_T0_SB_SA_,"axG",@progbits,_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPK5Vec8fSt6vectorIS2_SaIS2_EEEEPS2_ET1_T0_SB_SA_,comdat
	.weak	_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPK5Vec8fSt6vectorIS2_SaIS2_EEEEPS2_ET1_T0_SB_SA_
	.type	_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPK5Vec8fSt6vectorIS2_SaIS2_EEEEPS2_ET1_T0_SB_SA_, @function
_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPK5Vec8fSt6vectorIS2_SaIS2_EEEEPS2_ET1_T0_SB_SA_:
.LFB16837:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIP5Vec8fET_S2_
	movq	%rax, %r12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPK5Vec8fSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS6_T0_EE
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPK5Vec8fSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS6_T0_EE
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt14__copy_move_a1ILb0EPK5Vec8fPS0_ET1_T0_S5_S4_
	movq	%rax, %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt12__niter_wrapIP5Vec8fET_RKS2_S2_
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16837:
	.size	_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPK5Vec8fSt6vectorIS2_SaIS2_EEEEPS2_ET1_T0_SB_SA_, .-_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPK5Vec8fSt6vectorIS2_SaIS2_EEEEPS2_ET1_T0_SB_SA_
	.section	.text._ZNK9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEE8max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEE8max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEE8max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEE8max_sizeEv:
.LFB16848:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEE11_M_max_sizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16848:
	.size	_ZNK9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEE8max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEE8max_sizeEv
	.section	.text._ZSt12__niter_baseIPN5boost10stacktrace5frameEET_S4_,"axG",@progbits,_ZSt12__niter_baseIPN5boost10stacktrace5frameEET_S4_,comdat
	.weak	_ZSt12__niter_baseIPN5boost10stacktrace5frameEET_S4_
	.type	_ZSt12__niter_baseIPN5boost10stacktrace5frameEET_S4_, @function
_ZSt12__niter_baseIPN5boost10stacktrace5frameEET_S4_:
.LFB16849:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16849:
	.size	_ZSt12__niter_baseIPN5boost10stacktrace5frameEET_S4_, .-_ZSt12__niter_baseIPN5boost10stacktrace5frameEET_S4_
	.section	.text._ZSt14__relocate_a_1IPN5boost10stacktrace5frameES3_SaIS2_EET0_T_S6_S5_RT1_,"axG",@progbits,_ZSt14__relocate_a_1IPN5boost10stacktrace5frameES3_SaIS2_EET0_T_S6_S5_RT1_,comdat
	.weak	_ZSt14__relocate_a_1IPN5boost10stacktrace5frameES3_SaIS2_EET0_T_S6_S5_RT1_
	.type	_ZSt14__relocate_a_1IPN5boost10stacktrace5frameES3_SaIS2_EET0_T_S6_S5_RT1_, @function
_ZSt14__relocate_a_1IPN5boost10stacktrace5frameES3_SaIS2_EET0_T_S6_S5_RT1_:
.LFB16850:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L782
.L783:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt11__addressofIN5boost10stacktrace5frameEEPT_RS3_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt11__addressofIN5boost10stacktrace5frameEEPT_RS3_
	movq	%rax, %rcx
	movq	-64(%rbp), %rax
	movq	%rax, %rdx
	movq	%rbx, %rsi
	movq	%rcx, %rdi
	call	_ZSt19__relocate_object_aIN5boost10stacktrace5frameES2_SaIS2_EEvPT_PT0_RT1_
	addq	$8, -40(%rbp)
	addq	$8, -24(%rbp)
.L782:
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jne	.L783
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16850:
	.size	_ZSt14__relocate_a_1IPN5boost10stacktrace5frameES3_SaIS2_EET0_T_S6_S5_RT1_, .-_ZSt14__relocate_a_1IPN5boost10stacktrace5frameES3_SaIS2_EET0_T_S6_S5_RT1_
	.section	.text._ZN9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEE7destroyIS3_EEvPT_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEE7destroyIS3_EEvPT_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEE7destroyIS3_EEvPT_
	.type	_ZN9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEE7destroyIS3_EEvPT_, @function
_ZN9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEE7destroyIS3_EEvPT_:
.LFB16851:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16851:
	.size	_ZN9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEE7destroyIS3_EEvPT_, .-_ZN9__gnu_cxx13new_allocatorIN5boost10stacktrace5frameEE7destroyIS3_EEvPT_
	.section	.text._ZSt6fill_nIPPKvmS1_ET_S3_T0_RKT1_,"axG",@progbits,_ZSt6fill_nIPPKvmS1_ET_S3_T0_RKT1_,comdat
	.weak	_ZSt6fill_nIPPKvmS1_ET_S3_T0_RKT1_
	.type	_ZSt6fill_nIPPKvmS1_ET_S3_T0_RKT1_, @function
_ZSt6fill_nIPPKvmS1_ET_S3_T0_RKT1_:
.LFB16852:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt19__iterator_categoryIPPKvENSt15iterator_traitsIT_E17iterator_categoryERKS4_
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt17__size_to_integerm
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt10__fill_n_aIPPKvmS1_ET_S3_T0_RKT1_St26random_access_iterator_tag
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16852:
	.size	_ZSt6fill_nIPPKvmS1_ET_S3_T0_RKT1_, .-_ZSt6fill_nIPPKvmS1_ET_S3_T0_RKT1_
	.section	.text._ZSt10_ConstructIPKvJEEvPT_DpOT0_,"axG",@progbits,_ZSt10_ConstructIPKvJEEvPT_DpOT0_,comdat
	.weak	_ZSt10_ConstructIPKvJEEvPT_DpOT0_
	.type	_ZSt10_ConstructIPKvJEEvPT_DpOT0_, @function
_ZSt10_ConstructIPKvJEEvPT_DpOT0_:
.LFB16853:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$8, %edi
	call	_ZnwmPv
	movq	$0, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16853:
	.size	_ZSt10_ConstructIPKvJEEvPT_DpOT0_, .-_ZSt10_ConstructIPKvJEEvPT_DpOT0_
	.section	.text._ZSt12__niter_baseIPPKvET_S3_,"axG",@progbits,_ZSt12__niter_baseIPPKvET_S3_,comdat
	.weak	_ZSt12__niter_baseIPPKvET_S3_
	.type	_ZSt12__niter_baseIPPKvET_S3_, @function
_ZSt12__niter_baseIPPKvET_S3_:
.LFB16854:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16854:
	.size	_ZSt12__niter_baseIPPKvET_S3_, .-_ZSt12__niter_baseIPPKvET_S3_
	.section	.text._ZSt14__relocate_a_1IPKvS1_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS4_E4typeES6_S6_S6_RSaIT0_E,"axG",@progbits,_ZSt14__relocate_a_1IPKvS1_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS4_E4typeES6_S6_S6_RSaIT0_E,comdat
	.weak	_ZSt14__relocate_a_1IPKvS1_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS4_E4typeES6_S6_S6_RSaIT0_E
	.type	_ZSt14__relocate_a_1IPKvS1_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS4_E4typeES6_S6_S6_RSaIT0_E, @function
_ZSt14__relocate_a_1IPKvS1_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS4_E4typeES6_S6_S6_RSaIT0_E:
.LFB16855:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-32(%rbp), %rax
	subq	-24(%rbp), %rax
	sarq	$3, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jle	.L792
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
.L792:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16855:
	.size	_ZSt14__relocate_a_1IPKvS1_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS4_E4typeES6_S6_S6_RSaIT0_E, .-_ZSt14__relocate_a_1IPKvS1_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS4_E4typeES6_S6_S6_RSaIT0_E
	.section	.text._ZNK9__gnu_cxx13new_allocatorI5Vec8fE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorI5Vec8fE8max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorI5Vec8fE8max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorI5Vec8fE8max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorI5Vec8fE8max_sizeEv:
.LFB16856:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx13new_allocatorI5Vec8fE11_M_max_sizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16856:
	.size	_ZNK9__gnu_cxx13new_allocatorI5Vec8fE8max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorI5Vec8fE8max_sizeEv
	.section	.text._ZSt12__niter_baseIPK5Vec8fSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS6_T0_EE,"axG",@progbits,_ZSt12__niter_baseIPK5Vec8fSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS6_T0_EE,comdat
	.weak	_ZSt12__niter_baseIPK5Vec8fSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS6_T0_EE
	.type	_ZSt12__niter_baseIPK5Vec8fSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS6_T0_EE, @function
_ZSt12__niter_baseIPK5Vec8fSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS6_T0_EE:
.LFB16857:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPK5Vec8fSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16857:
	.size	_ZSt12__niter_baseIPK5Vec8fSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS6_T0_EE, .-_ZSt12__niter_baseIPK5Vec8fSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS6_T0_EE
	.section	.text._ZSt14__copy_move_a1ILb0EPK5Vec8fPS0_ET1_T0_S5_S4_,"axG",@progbits,_ZSt14__copy_move_a1ILb0EPK5Vec8fPS0_ET1_T0_S5_S4_,comdat
	.weak	_ZSt14__copy_move_a1ILb0EPK5Vec8fPS0_ET1_T0_S5_S4_
	.type	_ZSt14__copy_move_a1ILb0EPK5Vec8fPS0_ET1_T0_S5_S4_, @function
_ZSt14__copy_move_a1ILb0EPK5Vec8fPS0_ET1_T0_S5_S4_:
.LFB16858:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt14__copy_move_a2ILb0EPK5Vec8fPS0_ET1_T0_S5_S4_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16858:
	.size	_ZSt14__copy_move_a1ILb0EPK5Vec8fPS0_ET1_T0_S5_S4_, .-_ZSt14__copy_move_a1ILb0EPK5Vec8fPS0_ET1_T0_S5_S4_
	.section	.text._ZSt12__niter_wrapIP5Vec8fET_RKS2_S2_,"axG",@progbits,_ZSt12__niter_wrapIP5Vec8fET_RKS2_S2_,comdat
	.weak	_ZSt12__niter_wrapIP5Vec8fET_RKS2_S2_
	.type	_ZSt12__niter_wrapIP5Vec8fET_RKS2_S2_, @function
_ZSt12__niter_wrapIP5Vec8fET_RKS2_S2_:
.LFB16859:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16859:
	.size	_ZSt12__niter_wrapIP5Vec8fET_RKS2_S2_, .-_ZSt12__niter_wrapIP5Vec8fET_RKS2_S2_
	.section	.text._ZSt11__addressofIN5boost10stacktrace5frameEEPT_RS3_,"axG",@progbits,_ZSt11__addressofIN5boost10stacktrace5frameEEPT_RS3_,comdat
	.weak	_ZSt11__addressofIN5boost10stacktrace5frameEEPT_RS3_
	.type	_ZSt11__addressofIN5boost10stacktrace5frameEEPT_RS3_, @function
_ZSt11__addressofIN5boost10stacktrace5frameEEPT_RS3_:
.LFB16863:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16863:
	.size	_ZSt11__addressofIN5boost10stacktrace5frameEEPT_RS3_, .-_ZSt11__addressofIN5boost10stacktrace5frameEEPT_RS3_
	.section	.text._ZSt19__relocate_object_aIN5boost10stacktrace5frameES2_SaIS2_EEvPT_PT0_RT1_,"axG",@progbits,_ZSt19__relocate_object_aIN5boost10stacktrace5frameES2_SaIS2_EEvPT_PT0_RT1_,comdat
	.weak	_ZSt19__relocate_object_aIN5boost10stacktrace5frameES2_SaIS2_EEvPT_PT0_RT1_
	.type	_ZSt19__relocate_object_aIN5boost10stacktrace5frameES2_SaIS2_EEvPT_PT0_RT1_, @function
_ZSt19__relocate_object_aIN5boost10stacktrace5frameES2_SaIS2_EEvPT_PT0_RT1_:
.LFB16864:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRN5boost10stacktrace5frameEEONSt16remove_referenceIT_E4typeEOS5_
	movq	%rax, %rdx
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaIN5boost10stacktrace5frameEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt11__addressofIN5boost10stacktrace5frameEEPT_RS3_
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaIN5boost10stacktrace5frameEEE7destroyIS2_EEvRS3_PT_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16864:
	.size	_ZSt19__relocate_object_aIN5boost10stacktrace5frameES2_SaIS2_EEvPT_PT0_RT1_, .-_ZSt19__relocate_object_aIN5boost10stacktrace5frameES2_SaIS2_EEvPT_PT0_RT1_
	.section	.text._ZSt19__iterator_categoryIPPKvENSt15iterator_traitsIT_E17iterator_categoryERKS4_,"axG",@progbits,_ZSt19__iterator_categoryIPPKvENSt15iterator_traitsIT_E17iterator_categoryERKS4_,comdat
	.weak	_ZSt19__iterator_categoryIPPKvENSt15iterator_traitsIT_E17iterator_categoryERKS4_
	.type	_ZSt19__iterator_categoryIPPKvENSt15iterator_traitsIT_E17iterator_categoryERKS4_, @function
_ZSt19__iterator_categoryIPPKvENSt15iterator_traitsIT_E17iterator_categoryERKS4_:
.LFB16865:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16865:
	.size	_ZSt19__iterator_categoryIPPKvENSt15iterator_traitsIT_E17iterator_categoryERKS4_, .-_ZSt19__iterator_categoryIPPKvENSt15iterator_traitsIT_E17iterator_categoryERKS4_
	.section	.text._ZSt10__fill_n_aIPPKvmS1_ET_S3_T0_RKT1_St26random_access_iterator_tag,"axG",@progbits,_ZSt10__fill_n_aIPPKvmS1_ET_S3_T0_RKT1_St26random_access_iterator_tag,comdat
	.weak	_ZSt10__fill_n_aIPPKvmS1_ET_S3_T0_RKT1_St26random_access_iterator_tag
	.type	_ZSt10__fill_n_aIPPKvmS1_ET_S3_T0_RKT1_St26random_access_iterator_tag, @function
_ZSt10__fill_n_aIPPKvmS1_ET_S3_T0_RKT1_St26random_access_iterator_tag:
.LFB16866:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L808
	movq	-8(%rbp), %rax
	jmp	.L809
.L808:
	movq	-16(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt8__fill_aIPPKvS1_EvT_S3_RKT0_
	movq	-16(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
.L809:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16866:
	.size	_ZSt10__fill_n_aIPPKvmS1_ET_S3_T0_RKT1_St26random_access_iterator_tag, .-_ZSt10__fill_n_aIPPKvmS1_ET_S3_T0_RKT1_St26random_access_iterator_tag
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPK5Vec8fSt6vectorIS1_SaIS1_EEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPK5Vec8fSt6vectorIS1_SaIS1_EEE4baseEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPK5Vec8fSt6vectorIS1_SaIS1_EEE4baseEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPK5Vec8fSt6vectorIS1_SaIS1_EEE4baseEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIPK5Vec8fSt6vectorIS1_SaIS1_EEE4baseEv:
.LFB16867:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16867:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPK5Vec8fSt6vectorIS1_SaIS1_EEE4baseEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPK5Vec8fSt6vectorIS1_SaIS1_EEE4baseEv
	.section	.text._ZSt14__copy_move_a2ILb0EPK5Vec8fPS0_ET1_T0_S5_S4_,"axG",@progbits,_ZSt14__copy_move_a2ILb0EPK5Vec8fPS0_ET1_T0_S5_S4_,comdat
	.weak	_ZSt14__copy_move_a2ILb0EPK5Vec8fPS0_ET1_T0_S5_S4_
	.type	_ZSt14__copy_move_a2ILb0EPK5Vec8fPS0_ET1_T0_S5_S4_, @function
_ZSt14__copy_move_a2ILb0EPK5Vec8fPS0_ET1_T0_S5_S4_:
.LFB16868:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mI5Vec8fEEPT_PKS4_S7_S5_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16868:
	.size	_ZSt14__copy_move_a2ILb0EPK5Vec8fPS0_ET1_T0_S5_S4_, .-_ZSt14__copy_move_a2ILb0EPK5Vec8fPS0_ET1_T0_S5_S4_
	.section	.text._ZSt8__fill_aIPPKvS1_EvT_S3_RKT0_,"axG",@progbits,_ZSt8__fill_aIPPKvS1_EvT_S3_RKT0_,comdat
	.weak	_ZSt8__fill_aIPPKvS1_EvT_S3_RKT0_
	.type	_ZSt8__fill_aIPPKvS1_EvT_S3_RKT0_, @function
_ZSt8__fill_aIPPKvS1_EvT_S3_RKT0_:
.LFB16870:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt9__fill_a1IPPKvS1_EN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_SA_RKS6_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16870:
	.size	_ZSt8__fill_aIPPKvS1_EvT_S3_RKT0_, .-_ZSt8__fill_aIPPKvS1_EvT_S3_RKT0_
	.section	.text._ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mI5Vec8fEEPT_PKS4_S7_S5_,"axG",@progbits,_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mI5Vec8fEEPT_PKS4_S7_S5_,comdat
	.weak	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mI5Vec8fEEPT_PKS4_S7_S5_
	.type	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mI5Vec8fEEPT_PKS4_S7_S5_, @function
_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mI5Vec8fEEPT_PKS4_S7_S5_:
.LFB16871:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	subq	-24(%rbp), %rax
	sarq	$5, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L816
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
.L816:
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16871:
	.size	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mI5Vec8fEEPT_PKS4_S7_S5_, .-_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mI5Vec8fEEPT_PKS4_S7_S5_
	.section	.text._ZSt9__fill_a1IPPKvS1_EN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_SA_RKS6_,"axG",@progbits,_ZSt9__fill_a1IPPKvS1_EN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_SA_RKS6_,comdat
	.weak	_ZSt9__fill_a1IPPKvS1_EN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_SA_RKS6_
	.type	_ZSt9__fill_a1IPPKvS1_EN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_SA_RKS6_, @function
_ZSt9__fill_a1IPPKvS1_EN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_SA_RKS6_:
.LFB16873:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L819
.L820:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	addq	$8, -24(%rbp)
.L819:
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.L820
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16873:
	.size	_ZSt9__fill_a1IPPKvS1_EN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_SA_RKS6_, .-_ZSt9__fill_a1IPPKvS1_EN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_SA_RKS6_
	.weak	_ZTVSt17_Nested_exceptionISt11range_errorE
	.section	.data.rel.ro._ZTVSt17_Nested_exceptionISt11range_errorE,"awG",@progbits,_ZTVSt17_Nested_exceptionISt11range_errorE,comdat
	.align 8
	.type	_ZTVSt17_Nested_exceptionISt11range_errorE, @object
	.size	_ZTVSt17_Nested_exceptionISt11range_errorE, 72
_ZTVSt17_Nested_exceptionISt11range_errorE:
	.quad	0
	.quad	_ZTISt17_Nested_exceptionISt11range_errorE
	.quad	_ZNSt17_Nested_exceptionISt11range_errorED1Ev
	.quad	_ZNSt17_Nested_exceptionISt11range_errorED0Ev
	.quad	_ZNKSt13runtime_error4whatEv
	.quad	-16
	.quad	_ZTISt17_Nested_exceptionISt11range_errorE
	.quad	_ZThn16_NSt17_Nested_exceptionISt11range_errorED1Ev
	.quad	_ZThn16_NSt17_Nested_exceptionISt11range_errorED0Ev
	.weak	_ZTISt17_Nested_exceptionISt11range_errorE
	.section	.data.rel.ro._ZTISt17_Nested_exceptionISt11range_errorE,"awG",@progbits,_ZTISt17_Nested_exceptionISt11range_errorE,comdat
	.align 8
	.type	_ZTISt17_Nested_exceptionISt11range_errorE, @object
	.size	_ZTISt17_Nested_exceptionISt11range_errorE, 56
_ZTISt17_Nested_exceptionISt11range_errorE:
	.quad	_ZTVN10__cxxabiv121__vmi_class_type_infoE+16
	.quad	_ZTSSt17_Nested_exceptionISt11range_errorE
	.long	0
	.long	2
	.quad	_ZTISt11range_error
	.quad	2
	.quad	_ZTISt16nested_exception
	.quad	4098
	.weak	_ZTSSt17_Nested_exceptionISt11range_errorE
	.section	.rodata._ZTSSt17_Nested_exceptionISt11range_errorE,"aG",@progbits,_ZTSSt17_Nested_exceptionISt11range_errorE,comdat
	.align 32
	.type	_ZTSSt17_Nested_exceptionISt11range_errorE, @object
	.size	_ZTSSt17_Nested_exceptionISt11range_errorE, 39
_ZTSSt17_Nested_exceptionISt11range_errorE:
	.string	"St17_Nested_exceptionISt11range_errorE"
	.section	.rodata
.LC27:
	.string	"runbench/scene interesction"
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB16895:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA16895
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	cmpl	$1, -36(%rbp)
	jne	.L821
	cmpl	$65535, -40(%rbp)
	jne	.L821
.LEHB55:
	call	_ZN9benchmark8internal17InitializeStreamsEv@PLT
	movl	%eax, _ZN9benchmark8internalL18stream_init_anchorE(%rip)
	leaq	_ZStL8__ioinit(%rip), %rax
	movq	%rax, %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	leaq	__dso_handle(%rip), %rax
	movq	%rax, %rdx
	leaq	_ZStL8__ioinit(%rip), %rax
	movq	%rax, %rsi
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	__cxa_atexit@PLT
	leaq	-25(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKL24benchmark_uniq_2runbenchMUlRN9benchmark5StateEE_cvPFvS1_EEv
	movq	%rax, %r12
	movl	$216, %edi
	call	_Znwm@PLT
.LEHE55:
	movq	%rax, %rbx
	movq	%r12, %rdx
	leaq	.LC27(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB56:
	call	_ZN9benchmark8internal17FunctionBenchmarkC1EPKcPFvRNS_5StateEE
.LEHE56:
	movq	%rbx, %rdi
.LEHB57:
	call	_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE@PLT
	movq	%rax, _ZL24benchmark_uniq_2runbench(%rip)
	jmp	.L821
.L825:
	endbr64
	movq	%rax, %r12
	movl	$216, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
	movq	%r12, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE57:
.L821:
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L824
	call	__stack_chk_fail@PLT
.L824:
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16895:
	.section	.gcc_except_table
.LLSDA16895:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE16895-.LLSDACSB16895
.LLSDACSB16895:
	.uleb128 .LEHB55-.LFB16895
	.uleb128 .LEHE55-.LEHB55
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB56-.LFB16895
	.uleb128 .LEHE56-.LEHB56
	.uleb128 .L825-.LFB16895
	.uleb128 0
	.uleb128 .LEHB57-.LFB16895
	.uleb128 .LEHE57-.LEHB57
	.uleb128 0
	.uleb128 0
.LLSDACSE16895:
	.text
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I__Z10XOrShift32R13random_series, @function
_GLOBAL__sub_I__Z10XOrShift32R13random_series:
.LFB16896:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16896:
	.size	_GLOBAL__sub_I__Z10XOrShift32R13random_series, .-_GLOBAL__sub_I__Z10XOrShift32R13random_series
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z10XOrShift32R13random_series
	.section	.rodata
	.align 4
.LC0:
	.long	1333788672
	.align 4
.LC3:
	.long	1065353216
	.align 4
.LC4:
	.long	-1082130432
	.align 4
.LC6:
	.long	0
	.align 8
.LC8:
	.long	0
	.long	1072693248
	.align 8
.LC9:
	.long	0
	.long	1076101120
	.align 4
.LC10:
	.long	1084227584
	.align 4
.LC11:
	.long	1088421888
	.align 4
.LC12:
	.long	1086324736
	.align 4
.LC13:
	.long	1082130432
	.align 4
.LC14:
	.long	1077936128
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 11.3.0-1ubuntu1~22.04) 11.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
