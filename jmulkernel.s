	.file	"jmulkernel.s"
	.text
	.p2align 4,,15
	.globl	jmulkernel
	.type	jmulkernel, @function
jmulkernel:
.LFB0:
	.cfi_startproc
	vbroadcastsd	(%rdx), %ymm1
	vmovupd	(%rsi), %ymm13
	vmovupd	32(%rsi), %ymm12
	vmovupd	64(%rsi), %ymm10
	vmovupd	96(%rsi), %ymm11
	vmulpd	%ymm1, %ymm12, %ymm0
	vmulpd	%ymm1, %ymm13, %ymm1
	vbroadcastsd	128(%rdx), %ymm3
	vmulpd	%ymm3, %ymm12, %ymm2
	vmulpd	%ymm3, %ymm13, %ymm3
	vbroadcastsd	256(%rdx), %ymm5
	vmulpd	%ymm5, %ymm12, %ymm4
	vmulpd	%ymm5, %ymm13, %ymm5
	vbroadcastsd	384(%rdx), %ymm7
	vmulpd	%ymm7, %ymm12, %ymm6
	vmulpd	%ymm7, %ymm13, %ymm7
	vbroadcastsd	512(%rdx), %ymm9
	vmulpd	%ymm9, %ymm12, %ymm8
	vmulpd	%ymm9, %ymm13, %ymm9
	vbroadcastsd	640(%rdx), %ymm14
	vmulpd	%ymm14, %ymm12, %ymm12
	vmulpd	%ymm14, %ymm13, %ymm13
	vbroadcastsd	8(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm10, %ymm1
	vfmadd231pd	%ymm14, %ymm11, %ymm0
	vbroadcastsd	136(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm10, %ymm3
	vfmadd231pd	%ymm14, %ymm11, %ymm2
	vbroadcastsd	264(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm10, %ymm5
	vfmadd231pd	%ymm14, %ymm11, %ymm4
	vbroadcastsd	392(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm10, %ymm7
	vfmadd231pd	%ymm14, %ymm11, %ymm6
	vbroadcastsd	520(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm10, %ymm9
	vfmadd231pd	%ymm14, %ymm11, %ymm8
	vbroadcastsd	648(%rdx), %ymm14
	vfmadd213pd	%ymm13, %ymm14, %ymm10
	vfmadd231pd	%ymm14, %ymm11, %ymm12
	vmovupd	128(%rsi), %ymm13
	vmovupd	160(%rsi), %ymm11
	vbroadcastsd	16(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm11, %ymm0
	vfmadd231pd	%ymm14, %ymm13, %ymm1
	vbroadcastsd	144(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm11, %ymm2
	vfmadd231pd	%ymm14, %ymm13, %ymm3
	vbroadcastsd	272(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm11, %ymm4
	vfmadd231pd	%ymm14, %ymm13, %ymm5
	vbroadcastsd	400(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm11, %ymm6
	vfmadd231pd	%ymm14, %ymm13, %ymm7
	vbroadcastsd	528(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm11, %ymm8
	vfmadd231pd	%ymm14, %ymm13, %ymm9
	vbroadcastsd	656(%rdx), %ymm14
	vfmadd213pd	%ymm12, %ymm14, %ymm11
	vfmadd231pd	%ymm14, %ymm13, %ymm10
	vmovupd	224(%rsi), %ymm13
	vmovupd	192(%rsi), %ymm12
	vbroadcastsd	24(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm12, %ymm1
	vfmadd231pd	%ymm14, %ymm13, %ymm0
	vbroadcastsd	152(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm12, %ymm3
	vfmadd231pd	%ymm14, %ymm13, %ymm2
	vbroadcastsd	280(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm12, %ymm5
	vfmadd231pd	%ymm14, %ymm13, %ymm4
	vbroadcastsd	408(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm12, %ymm7
	vfmadd231pd	%ymm14, %ymm13, %ymm6
	vbroadcastsd	536(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm12, %ymm9
	vfmadd231pd	%ymm14, %ymm13, %ymm8
	vbroadcastsd	664(%rdx), %ymm14
	vfmadd213pd	%ymm10, %ymm14, %ymm12
	vfmadd231pd	%ymm14, %ymm13, %ymm11
	vmovupd	256(%rsi), %ymm13
	vmovupd	288(%rsi), %ymm10
	vbroadcastsd	32(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm10, %ymm0
	vfmadd231pd	%ymm14, %ymm13, %ymm1
	vbroadcastsd	160(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm10, %ymm2
	vfmadd231pd	%ymm14, %ymm13, %ymm3
	vbroadcastsd	288(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm10, %ymm4
	vfmadd231pd	%ymm14, %ymm13, %ymm5
	vbroadcastsd	416(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm10, %ymm6
	vfmadd231pd	%ymm14, %ymm13, %ymm7
	vbroadcastsd	544(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm10, %ymm8
	vfmadd231pd	%ymm14, %ymm13, %ymm9
	vbroadcastsd	672(%rdx), %ymm14
	vfmadd213pd	%ymm11, %ymm14, %ymm10
	vfmadd231pd	%ymm14, %ymm13, %ymm12
	vmovupd	352(%rsi), %ymm13
	vmovupd	320(%rsi), %ymm11
	vbroadcastsd	40(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm11, %ymm1
	vfmadd231pd	%ymm14, %ymm13, %ymm0
	vbroadcastsd	168(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm11, %ymm3
	vfmadd231pd	%ymm14, %ymm13, %ymm2
	vbroadcastsd	296(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm11, %ymm5
	vfmadd231pd	%ymm14, %ymm13, %ymm4
	vbroadcastsd	424(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm11, %ymm7
	vfmadd231pd	%ymm14, %ymm13, %ymm6
	vbroadcastsd	552(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm11, %ymm9
	vfmadd231pd	%ymm14, %ymm13, %ymm8
	vbroadcastsd	680(%rdx), %ymm14
	vfmadd213pd	%ymm12, %ymm14, %ymm11
	vfmadd231pd	%ymm14, %ymm13, %ymm10
	vmovupd	384(%rsi), %ymm13
	vmovupd	416(%rsi), %ymm12
	vbroadcastsd	48(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm12, %ymm0
	vfmadd231pd	%ymm14, %ymm13, %ymm1
	vbroadcastsd	176(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm12, %ymm2
	vfmadd231pd	%ymm14, %ymm13, %ymm3
	vbroadcastsd	304(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm12, %ymm4
	vfmadd231pd	%ymm14, %ymm13, %ymm5
	vbroadcastsd	432(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm12, %ymm6
	vfmadd231pd	%ymm14, %ymm13, %ymm7
	vbroadcastsd	560(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm12, %ymm8
	vfmadd231pd	%ymm14, %ymm13, %ymm9
	vbroadcastsd	688(%rdx), %ymm14
	vfmadd213pd	%ymm10, %ymm14, %ymm12
	vfmadd231pd	%ymm14, %ymm13, %ymm11
	vmovupd	480(%rsi), %ymm13
	vmovupd	448(%rsi), %ymm10
	vbroadcastsd	56(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm10, %ymm1
	vfmadd231pd	%ymm14, %ymm13, %ymm0
	vbroadcastsd	184(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm10, %ymm3
	vfmadd231pd	%ymm14, %ymm13, %ymm2
	vbroadcastsd	312(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm10, %ymm5
	vfmadd231pd	%ymm14, %ymm13, %ymm4
	vbroadcastsd	440(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm10, %ymm7
	vfmadd231pd	%ymm14, %ymm13, %ymm6
	vbroadcastsd	568(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm10, %ymm9
	vfmadd231pd	%ymm14, %ymm13, %ymm8
	vbroadcastsd	696(%rdx), %ymm14
	vfmadd213pd	%ymm11, %ymm14, %ymm10
	vfmadd231pd	%ymm14, %ymm13, %ymm12
	vmovupd	512(%rsi), %ymm13
	vmovupd	544(%rsi), %ymm11
	vbroadcastsd	64(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm11, %ymm0
	vfmadd231pd	%ymm14, %ymm13, %ymm1
	vbroadcastsd	192(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm11, %ymm2
	vfmadd231pd	%ymm14, %ymm13, %ymm3
	vbroadcastsd	320(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm11, %ymm4
	vfmadd231pd	%ymm14, %ymm13, %ymm5
	vbroadcastsd	448(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm11, %ymm6
	vfmadd231pd	%ymm14, %ymm13, %ymm7
	vbroadcastsd	576(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm11, %ymm8
	vfmadd231pd	%ymm14, %ymm13, %ymm9
	vbroadcastsd	704(%rdx), %ymm14
	vfmadd213pd	%ymm12, %ymm14, %ymm11
	vfmadd231pd	%ymm14, %ymm13, %ymm10
	vmovupd	608(%rsi), %ymm13
	vmovupd	576(%rsi), %ymm12
	vbroadcastsd	72(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm12, %ymm1
	vfmadd231pd	%ymm14, %ymm13, %ymm0
	vbroadcastsd	200(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm12, %ymm3
	vfmadd231pd	%ymm14, %ymm13, %ymm2
	vbroadcastsd	328(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm12, %ymm5
	vfmadd231pd	%ymm14, %ymm13, %ymm4
	vbroadcastsd	456(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm12, %ymm7
	vfmadd231pd	%ymm14, %ymm13, %ymm6
	vbroadcastsd	584(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm12, %ymm9
	vfmadd231pd	%ymm14, %ymm13, %ymm8
	vbroadcastsd	712(%rdx), %ymm14
	vfmadd213pd	%ymm10, %ymm14, %ymm12
	vfmadd231pd	%ymm14, %ymm13, %ymm11
	vmovupd	640(%rsi), %ymm13
	vmovupd	672(%rsi), %ymm10
	vbroadcastsd	80(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm10, %ymm0
	vfmadd231pd	%ymm14, %ymm13, %ymm1
	vbroadcastsd	208(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm10, %ymm2
	vfmadd231pd	%ymm14, %ymm13, %ymm3
	vbroadcastsd	336(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm10, %ymm4
	vfmadd231pd	%ymm14, %ymm13, %ymm5
	vbroadcastsd	464(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm10, %ymm6
	vfmadd231pd	%ymm14, %ymm13, %ymm7
	vbroadcastsd	592(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm10, %ymm8
	vfmadd231pd	%ymm14, %ymm13, %ymm9
	vbroadcastsd	720(%rdx), %ymm14
	vfmadd213pd	%ymm11, %ymm14, %ymm10
	vfmadd231pd	%ymm14, %ymm13, %ymm12
	vmovupd	736(%rsi), %ymm13
	vmovupd	704(%rsi), %ymm11
	vbroadcastsd	88(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm11, %ymm1
	vfmadd231pd	%ymm14, %ymm13, %ymm0
	vbroadcastsd	216(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm11, %ymm3
	vfmadd231pd	%ymm14, %ymm13, %ymm2
	vbroadcastsd	344(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm11, %ymm5
	vfmadd231pd	%ymm14, %ymm13, %ymm4
	vbroadcastsd	472(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm11, %ymm7
	vfmadd231pd	%ymm14, %ymm13, %ymm6
	vbroadcastsd	600(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm11, %ymm9
	vfmadd231pd	%ymm14, %ymm13, %ymm8
	vbroadcastsd	728(%rdx), %ymm14
	vfmadd213pd	%ymm12, %ymm14, %ymm11
	vfmadd231pd	%ymm14, %ymm13, %ymm10
	vmovupd	768(%rsi), %ymm13
	vmovupd	800(%rsi), %ymm12
	vbroadcastsd	96(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm12, %ymm0
	vfmadd231pd	%ymm14, %ymm13, %ymm1
	vbroadcastsd	224(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm12, %ymm2
	vfmadd231pd	%ymm14, %ymm13, %ymm3
	vbroadcastsd	352(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm12, %ymm4
	vfmadd231pd	%ymm14, %ymm13, %ymm5
	vbroadcastsd	480(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm12, %ymm6
	vfmadd231pd	%ymm14, %ymm13, %ymm7
	vbroadcastsd	608(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm12, %ymm8
	vfmadd231pd	%ymm14, %ymm13, %ymm9
	vbroadcastsd	736(%rdx), %ymm14
	vfmadd213pd	%ymm10, %ymm14, %ymm12
	vfmadd231pd	%ymm14, %ymm13, %ymm11
	vmovupd	864(%rsi), %ymm13
	vmovupd	832(%rsi), %ymm10
	vbroadcastsd	104(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm10, %ymm1
	vfmadd231pd	%ymm14, %ymm13, %ymm0
	vbroadcastsd	232(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm10, %ymm3
	vfmadd231pd	%ymm14, %ymm13, %ymm2
	vbroadcastsd	360(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm10, %ymm5
	vfmadd231pd	%ymm14, %ymm13, %ymm4
	vbroadcastsd	488(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm10, %ymm7
	vfmadd231pd	%ymm14, %ymm13, %ymm6
	vbroadcastsd	616(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm10, %ymm9
	vfmadd231pd	%ymm14, %ymm13, %ymm8
	vbroadcastsd	744(%rdx), %ymm14
	vfmadd213pd	%ymm11, %ymm14, %ymm10
	vfmadd231pd	%ymm14, %ymm13, %ymm12
	vmovupd	896(%rsi), %ymm13
	vmovupd	928(%rsi), %ymm11
	vbroadcastsd	112(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm11, %ymm0
	vfmadd231pd	%ymm14, %ymm13, %ymm1
	vbroadcastsd	240(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm11, %ymm2
	vfmadd231pd	%ymm14, %ymm13, %ymm3
	vbroadcastsd	368(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm11, %ymm4
	vfmadd231pd	%ymm14, %ymm13, %ymm5
	vbroadcastsd	496(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm11, %ymm6
	vfmadd231pd	%ymm14, %ymm13, %ymm7
	vbroadcastsd	624(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm11, %ymm8
	vfmadd231pd	%ymm14, %ymm13, %ymm9
	vbroadcastsd	752(%rdx), %ymm14
	vfmadd213pd	%ymm12, %ymm14, %ymm11
	vfmadd231pd	%ymm14, %ymm13, %ymm10
	vmovupd	992(%rsi), %ymm13
	vmovupd	960(%rsi), %ymm12
	vbroadcastsd	120(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm12, %ymm1
	vfmadd231pd	%ymm14, %ymm13, %ymm0
	vbroadcastsd	248(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm12, %ymm3
	vfmadd231pd	%ymm14, %ymm13, %ymm2
	vbroadcastsd	376(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm12, %ymm5
	vfmadd231pd	%ymm14, %ymm13, %ymm4
	vbroadcastsd	504(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm12, %ymm7
	vfmadd231pd	%ymm14, %ymm13, %ymm6
	vbroadcastsd	632(%rdx), %ymm14
	vfmadd231pd	%ymm14, %ymm12, %ymm9
	vfmadd231pd	%ymm14, %ymm13, %ymm8
	vbroadcastsd	760(%rdx), %ymm14
	vfmadd213pd	%ymm10, %ymm14, %ymm12
	vfmadd231pd	%ymm14, %ymm13, %ymm11
	vmovupd	%ymm0, 32(%rdi)
	vmovupd	%ymm1, (%rdi)
	vmovupd	%ymm2, 96(%rdi)
	vmovupd	%ymm3, 64(%rdi)
	vmovupd	%ymm4, 160(%rdi)
	vmovupd	%ymm5, 128(%rdi)
	vmovupd	%ymm6, 224(%rdi)
	vmovupd	%ymm7, 192(%rdi)
	vmovupd	%ymm8, 288(%rdi)
	vmovupd	%ymm9, 256(%rdi)
	vmovupd	%ymm11, 352(%rdi)
	vmovupd	%ymm12, 320(%rdi)
	vzeroupper
	ret
	.cfi_endproc
.LFE0:
	.size	jmulkernel, .-jmulkernel
    .ident	"GCC: (Ubuntu 7.3.0-16ubuntu3) 7.3.0"
    .section	.note.GNU-stack,"",@progbits