	.text
	.file	"genkernel!"
	.globl	"japi1_genkernel!_585"          # -- Begin function japi1_genkernel!_585
	.p2align	4, 0x90
	.type	"japi1_genkernel!_585",@function
"japi1_genkernel!_585":                 # @"japi1_genkernel!_585"
	.cfi_startproc
# %bb.0:                                # %top
	movq	%rsi, -8(%rsp)
	movq	16(%rsi), %rcx
	movq	8(%rsi), %rdx
	movq	(%rsi), %rax
	vbroadcastsd	(%rcx), %ymm1
	vmovupd	32(%rdx), %ymm10
	vbroadcastsd	128(%rcx), %ymm3
	vbroadcastsd	256(%rcx), %ymm5
	vbroadcastsd	384(%rcx), %ymm7
	vbroadcastsd	512(%rcx), %ymm9
	vmovupd	(%rdx), %ymm11
	vbroadcastsd	640(%rcx), %ymm14
	vmovupd	64(%rdx), %ymm13
	vmovupd	96(%rdx), %ymm12
	vbroadcastsd	760(%rcx), %ymm15
	vmulpd	%ymm1, %ymm10, %ymm0
	vmulpd	%ymm3, %ymm10, %ymm2
	vmulpd	%ymm5, %ymm10, %ymm4
	vmulpd	%ymm7, %ymm10, %ymm6
	vmulpd	%ymm9, %ymm10, %ymm8
	vmulpd	%ymm1, %ymm11, %ymm1
	vmulpd	%ymm3, %ymm11, %ymm3
	vmulpd	%ymm5, %ymm11, %ymm5
	vmulpd	%ymm7, %ymm11, %ymm7
	vmulpd	%ymm9, %ymm11, %ymm9
	vmulpd	%ymm14, %ymm10, %ymm10
	vmulpd	%ymm14, %ymm11, %ymm11
	vbroadcastsd	8(%rcx), %ymm14
	vfmadd231pd	%ymm14, %ymm13, %ymm1   # ymm1 = (ymm13 * ymm14) + ymm1
	vfmadd231pd	%ymm14, %ymm12, %ymm0   # ymm0 = (ymm12 * ymm14) + ymm0
	vbroadcastsd	136(%rcx), %ymm14
	vfmadd231pd	%ymm14, %ymm13, %ymm3   # ymm3 = (ymm13 * ymm14) + ymm3
	vfmadd231pd	%ymm14, %ymm12, %ymm2   # ymm2 = (ymm12 * ymm14) + ymm2
	vbroadcastsd	264(%rcx), %ymm14
	vfmadd231pd	%ymm14, %ymm13, %ymm5   # ymm5 = (ymm13 * ymm14) + ymm5
	vfmadd231pd	%ymm14, %ymm12, %ymm4   # ymm4 = (ymm12 * ymm14) + ymm4
	vbroadcastsd	392(%rcx), %ymm14
	vfmadd231pd	%ymm14, %ymm13, %ymm7   # ymm7 = (ymm13 * ymm14) + ymm7
	vfmadd231pd	%ymm14, %ymm12, %ymm6   # ymm6 = (ymm12 * ymm14) + ymm6
	vbroadcastsd	520(%rcx), %ymm14
	vfmadd231pd	%ymm14, %ymm13, %ymm9   # ymm9 = (ymm13 * ymm14) + ymm9
	vfmadd231pd	%ymm14, %ymm12, %ymm8   # ymm8 = (ymm12 * ymm14) + ymm8
	vbroadcastsd	648(%rcx), %ymm14
	vfmadd231pd	%ymm13, %ymm14, %ymm11  # ymm11 = (ymm14 * ymm13) + ymm11
	vfmadd231pd	%ymm14, %ymm12, %ymm10  # ymm10 = (ymm12 * ymm14) + ymm10
	vmovupd	128(%rdx), %ymm12
	vbroadcastsd	16(%rcx), %ymm14
	vmovupd	160(%rdx), %ymm13
	vfmadd231pd	%ymm14, %ymm13, %ymm0   # ymm0 = (ymm13 * ymm14) + ymm0
	vfmadd231pd	%ymm14, %ymm12, %ymm1   # ymm1 = (ymm12 * ymm14) + ymm1
	vbroadcastsd	144(%rcx), %ymm14
	vfmadd231pd	%ymm14, %ymm13, %ymm2   # ymm2 = (ymm13 * ymm14) + ymm2
	vfmadd231pd	%ymm14, %ymm12, %ymm3   # ymm3 = (ymm12 * ymm14) + ymm3
	vbroadcastsd	272(%rcx), %ymm14
	vfmadd231pd	%ymm14, %ymm13, %ymm4   # ymm4 = (ymm13 * ymm14) + ymm4
	vfmadd231pd	%ymm14, %ymm12, %ymm5   # ymm5 = (ymm12 * ymm14) + ymm5
	vbroadcastsd	400(%rcx), %ymm14
	vfmadd231pd	%ymm14, %ymm13, %ymm6   # ymm6 = (ymm13 * ymm14) + ymm6
	vfmadd231pd	%ymm14, %ymm12, %ymm7   # ymm7 = (ymm12 * ymm14) + ymm7
	vbroadcastsd	528(%rcx), %ymm14
	vfmadd231pd	%ymm14, %ymm13, %ymm8   # ymm8 = (ymm13 * ymm14) + ymm8
	vfmadd231pd	%ymm14, %ymm12, %ymm9   # ymm9 = (ymm12 * ymm14) + ymm9
	vbroadcastsd	656(%rcx), %ymm14
	vfmadd231pd	%ymm13, %ymm14, %ymm10  # ymm10 = (ymm14 * ymm13) + ymm10
	vfmadd231pd	%ymm14, %ymm12, %ymm11  # ymm11 = (ymm12 * ymm14) + ymm11
	vmovupd	224(%rdx), %ymm12
	vbroadcastsd	24(%rcx), %ymm14
	vmovupd	192(%rdx), %ymm13
	vfmadd231pd	%ymm14, %ymm13, %ymm1   # ymm1 = (ymm13 * ymm14) + ymm1
	vfmadd231pd	%ymm14, %ymm12, %ymm0   # ymm0 = (ymm12 * ymm14) + ymm0
	vbroadcastsd	152(%rcx), %ymm14
	vfmadd231pd	%ymm14, %ymm13, %ymm3   # ymm3 = (ymm13 * ymm14) + ymm3
	vfmadd231pd	%ymm14, %ymm12, %ymm2   # ymm2 = (ymm12 * ymm14) + ymm2
	vbroadcastsd	280(%rcx), %ymm14
	vfmadd231pd	%ymm14, %ymm13, %ymm5   # ymm5 = (ymm13 * ymm14) + ymm5
	vfmadd231pd	%ymm14, %ymm12, %ymm4   # ymm4 = (ymm12 * ymm14) + ymm4
	vbroadcastsd	408(%rcx), %ymm14
	vfmadd231pd	%ymm14, %ymm13, %ymm7   # ymm7 = (ymm13 * ymm14) + ymm7
	vfmadd231pd	%ymm14, %ymm12, %ymm6   # ymm6 = (ymm12 * ymm14) + ymm6
	vbroadcastsd	536(%rcx), %ymm14
	vfmadd231pd	%ymm14, %ymm13, %ymm9   # ymm9 = (ymm13 * ymm14) + ymm9
	vfmadd231pd	%ymm14, %ymm12, %ymm8   # ymm8 = (ymm12 * ymm14) + ymm8
	vbroadcastsd	664(%rcx), %ymm14
	vfmadd231pd	%ymm13, %ymm14, %ymm11  # ymm11 = (ymm14 * ymm13) + ymm11
	vfmadd231pd	%ymm14, %ymm12, %ymm10  # ymm10 = (ymm12 * ymm14) + ymm10
	vmovupd	256(%rdx), %ymm12
	vbroadcastsd	32(%rcx), %ymm14
	vmovupd	288(%rdx), %ymm13
	vfmadd231pd	%ymm14, %ymm13, %ymm0   # ymm0 = (ymm13 * ymm14) + ymm0
	vfmadd231pd	%ymm14, %ymm12, %ymm1   # ymm1 = (ymm12 * ymm14) + ymm1
	vbroadcastsd	160(%rcx), %ymm14
	vfmadd231pd	%ymm14, %ymm13, %ymm2   # ymm2 = (ymm13 * ymm14) + ymm2
	vfmadd231pd	%ymm14, %ymm12, %ymm3   # ymm3 = (ymm12 * ymm14) + ymm3
	vbroadcastsd	288(%rcx), %ymm14
	vfmadd231pd	%ymm14, %ymm13, %ymm4   # ymm4 = (ymm13 * ymm14) + ymm4
	vfmadd231pd	%ymm14, %ymm12, %ymm5   # ymm5 = (ymm12 * ymm14) + ymm5
	vbroadcastsd	416(%rcx), %ymm14
	vfmadd231pd	%ymm14, %ymm13, %ymm6   # ymm6 = (ymm13 * ymm14) + ymm6
	vfmadd231pd	%ymm14, %ymm12, %ymm7   # ymm7 = (ymm12 * ymm14) + ymm7
	vbroadcastsd	544(%rcx), %ymm14
	vfmadd231pd	%ymm14, %ymm13, %ymm8   # ymm8 = (ymm13 * ymm14) + ymm8
	vfmadd231pd	%ymm14, %ymm12, %ymm9   # ymm9 = (ymm12 * ymm14) + ymm9
	vbroadcastsd	672(%rcx), %ymm14
	vfmadd231pd	%ymm13, %ymm14, %ymm10  # ymm10 = (ymm14 * ymm13) + ymm10
	vfmadd231pd	%ymm14, %ymm12, %ymm11  # ymm11 = (ymm12 * ymm14) + ymm11
	vmovupd	352(%rdx), %ymm12
	vbroadcastsd	40(%rcx), %ymm14
	vmovupd	320(%rdx), %ymm13
	vfmadd231pd	%ymm14, %ymm13, %ymm1   # ymm1 = (ymm13 * ymm14) + ymm1
	vfmadd231pd	%ymm14, %ymm12, %ymm0   # ymm0 = (ymm12 * ymm14) + ymm0
	vbroadcastsd	168(%rcx), %ymm14
	vfmadd231pd	%ymm14, %ymm13, %ymm3   # ymm3 = (ymm13 * ymm14) + ymm3
	vfmadd231pd	%ymm14, %ymm12, %ymm2   # ymm2 = (ymm12 * ymm14) + ymm2
	vbroadcastsd	296(%rcx), %ymm14
	vfmadd231pd	%ymm14, %ymm13, %ymm5   # ymm5 = (ymm13 * ymm14) + ymm5
	vfmadd231pd	%ymm14, %ymm12, %ymm4   # ymm4 = (ymm12 * ymm14) + ymm4
	vbroadcastsd	424(%rcx), %ymm14
	vfmadd231pd	%ymm14, %ymm13, %ymm7   # ymm7 = (ymm13 * ymm14) + ymm7
	vfmadd231pd	%ymm14, %ymm12, %ymm6   # ymm6 = (ymm12 * ymm14) + ymm6
	vbroadcastsd	552(%rcx), %ymm14
	vfmadd231pd	%ymm14, %ymm13, %ymm9   # ymm9 = (ymm13 * ymm14) + ymm9
	vfmadd231pd	%ymm14, %ymm12, %ymm8   # ymm8 = (ymm12 * ymm14) + ymm8
	vbroadcastsd	680(%rcx), %ymm14
	vfmadd231pd	%ymm13, %ymm14, %ymm11  # ymm11 = (ymm14 * ymm13) + ymm11
	vfmadd231pd	%ymm14, %ymm12, %ymm10  # ymm10 = (ymm12 * ymm14) + ymm10
	vmovupd	384(%rdx), %ymm12
	vbroadcastsd	48(%rcx), %ymm14
	vmovupd	416(%rdx), %ymm13
	vfmadd231pd	%ymm14, %ymm13, %ymm0   # ymm0 = (ymm13 * ymm14) + ymm0
	vfmadd231pd	%ymm14, %ymm12, %ymm1   # ymm1 = (ymm12 * ymm14) + ymm1
	vbroadcastsd	176(%rcx), %ymm14
	vfmadd231pd	%ymm14, %ymm13, %ymm2   # ymm2 = (ymm13 * ymm14) + ymm2
	vfmadd231pd	%ymm14, %ymm12, %ymm3   # ymm3 = (ymm12 * ymm14) + ymm3
	vbroadcastsd	304(%rcx), %ymm14
	vfmadd231pd	%ymm14, %ymm13, %ymm4   # ymm4 = (ymm13 * ymm14) + ymm4
	vfmadd231pd	%ymm14, %ymm12, %ymm5   # ymm5 = (ymm12 * ymm14) + ymm5
	vbroadcastsd	432(%rcx), %ymm14
	vfmadd231pd	%ymm14, %ymm13, %ymm6   # ymm6 = (ymm13 * ymm14) + ymm6
	vfmadd231pd	%ymm14, %ymm12, %ymm7   # ymm7 = (ymm12 * ymm14) + ymm7
	vbroadcastsd	560(%rcx), %ymm14
	vfmadd231pd	%ymm14, %ymm13, %ymm8   # ymm8 = (ymm13 * ymm14) + ymm8
	vfmadd231pd	%ymm14, %ymm12, %ymm9   # ymm9 = (ymm12 * ymm14) + ymm9
	vbroadcastsd	688(%rcx), %ymm14
	vfmadd231pd	%ymm13, %ymm14, %ymm10  # ymm10 = (ymm14 * ymm13) + ymm10
	vfmadd231pd	%ymm14, %ymm12, %ymm11  # ymm11 = (ymm12 * ymm14) + ymm11
	vmovupd	480(%rdx), %ymm12
	vbroadcastsd	56(%rcx), %ymm14
	vmovupd	448(%rdx), %ymm13
	vfmadd231pd	%ymm14, %ymm13, %ymm1   # ymm1 = (ymm13 * ymm14) + ymm1
	vfmadd231pd	%ymm14, %ymm12, %ymm0   # ymm0 = (ymm12 * ymm14) + ymm0
	vbroadcastsd	184(%rcx), %ymm14
	vfmadd231pd	%ymm14, %ymm13, %ymm3   # ymm3 = (ymm13 * ymm14) + ymm3
	vfmadd231pd	%ymm14, %ymm12, %ymm2   # ymm2 = (ymm12 * ymm14) + ymm2
	vbroadcastsd	312(%rcx), %ymm14
	vfmadd231pd	%ymm14, %ymm13, %ymm5   # ymm5 = (ymm13 * ymm14) + ymm5
	vfmadd231pd	%ymm14, %ymm12, %ymm4   # ymm4 = (ymm12 * ymm14) + ymm4
	vbroadcastsd	440(%rcx), %ymm14
	vfmadd231pd	%ymm14, %ymm13, %ymm7   # ymm7 = (ymm13 * ymm14) + ymm7
	vfmadd231pd	%ymm14, %ymm12, %ymm6   # ymm6 = (ymm12 * ymm14) + ymm6
	vbroadcastsd	568(%rcx), %ymm14
	vfmadd231pd	%ymm14, %ymm13, %ymm9   # ymm9 = (ymm13 * ymm14) + ymm9
	vfmadd231pd	%ymm14, %ymm12, %ymm8   # ymm8 = (ymm12 * ymm14) + ymm8
	vbroadcastsd	696(%rcx), %ymm14
	vfmadd231pd	%ymm13, %ymm14, %ymm11  # ymm11 = (ymm14 * ymm13) + ymm11
	vfmadd231pd	%ymm14, %ymm12, %ymm10  # ymm10 = (ymm12 * ymm14) + ymm10
	vmovupd	512(%rdx), %ymm12
	vbroadcastsd	64(%rcx), %ymm14
	vmovupd	544(%rdx), %ymm13
	vfmadd231pd	%ymm14, %ymm13, %ymm0   # ymm0 = (ymm13 * ymm14) + ymm0
	vfmadd231pd	%ymm14, %ymm12, %ymm1   # ymm1 = (ymm12 * ymm14) + ymm1
	vbroadcastsd	192(%rcx), %ymm14
	vfmadd231pd	%ymm14, %ymm13, %ymm2   # ymm2 = (ymm13 * ymm14) + ymm2
	vfmadd231pd	%ymm14, %ymm12, %ymm3   # ymm3 = (ymm12 * ymm14) + ymm3
	vbroadcastsd	320(%rcx), %ymm14
	vfmadd231pd	%ymm14, %ymm13, %ymm4   # ymm4 = (ymm13 * ymm14) + ymm4
	vfmadd231pd	%ymm14, %ymm12, %ymm5   # ymm5 = (ymm12 * ymm14) + ymm5
	vbroadcastsd	448(%rcx), %ymm14
	vfmadd231pd	%ymm14, %ymm13, %ymm6   # ymm6 = (ymm13 * ymm14) + ymm6
	vfmadd231pd	%ymm14, %ymm12, %ymm7   # ymm7 = (ymm12 * ymm14) + ymm7
	vbroadcastsd	576(%rcx), %ymm14
	vfmadd231pd	%ymm14, %ymm13, %ymm8   # ymm8 = (ymm13 * ymm14) + ymm8
	vfmadd231pd	%ymm14, %ymm12, %ymm9   # ymm9 = (ymm12 * ymm14) + ymm9
	vbroadcastsd	704(%rcx), %ymm14
	vfmadd231pd	%ymm13, %ymm14, %ymm10  # ymm10 = (ymm14 * ymm13) + ymm10
	vfmadd231pd	%ymm14, %ymm12, %ymm11  # ymm11 = (ymm12 * ymm14) + ymm11
	vmovupd	608(%rdx), %ymm12
	vbroadcastsd	72(%rcx), %ymm14
	vmovupd	576(%rdx), %ymm13
	vfmadd231pd	%ymm14, %ymm13, %ymm1   # ymm1 = (ymm13 * ymm14) + ymm1
	vfmadd231pd	%ymm14, %ymm12, %ymm0   # ymm0 = (ymm12 * ymm14) + ymm0
	vbroadcastsd	200(%rcx), %ymm14
	vfmadd231pd	%ymm14, %ymm13, %ymm3   # ymm3 = (ymm13 * ymm14) + ymm3
	vfmadd231pd	%ymm14, %ymm12, %ymm2   # ymm2 = (ymm12 * ymm14) + ymm2
	vbroadcastsd	328(%rcx), %ymm14
	vfmadd231pd	%ymm14, %ymm13, %ymm5   # ymm5 = (ymm13 * ymm14) + ymm5
	vfmadd231pd	%ymm14, %ymm12, %ymm4   # ymm4 = (ymm12 * ymm14) + ymm4
	vbroadcastsd	456(%rcx), %ymm14
	vfmadd231pd	%ymm14, %ymm13, %ymm7   # ymm7 = (ymm13 * ymm14) + ymm7
	vfmadd231pd	%ymm14, %ymm12, %ymm6   # ymm6 = (ymm12 * ymm14) + ymm6
	vbroadcastsd	584(%rcx), %ymm14
	vfmadd231pd	%ymm14, %ymm13, %ymm9   # ymm9 = (ymm13 * ymm14) + ymm9
	vfmadd231pd	%ymm14, %ymm12, %ymm8   # ymm8 = (ymm12 * ymm14) + ymm8
	vbroadcastsd	712(%rcx), %ymm14
	vfmadd231pd	%ymm13, %ymm14, %ymm11  # ymm11 = (ymm14 * ymm13) + ymm11
	vfmadd231pd	%ymm14, %ymm12, %ymm10  # ymm10 = (ymm12 * ymm14) + ymm10
	vmovupd	640(%rdx), %ymm12
	vbroadcastsd	80(%rcx), %ymm14
	vmovupd	672(%rdx), %ymm13
	vfmadd231pd	%ymm14, %ymm13, %ymm0   # ymm0 = (ymm13 * ymm14) + ymm0
	vfmadd231pd	%ymm14, %ymm12, %ymm1   # ymm1 = (ymm12 * ymm14) + ymm1
	vbroadcastsd	208(%rcx), %ymm14
	vfmadd231pd	%ymm14, %ymm13, %ymm2   # ymm2 = (ymm13 * ymm14) + ymm2
	vfmadd231pd	%ymm14, %ymm12, %ymm3   # ymm3 = (ymm12 * ymm14) + ymm3
	vbroadcastsd	336(%rcx), %ymm14
	vfmadd231pd	%ymm14, %ymm13, %ymm4   # ymm4 = (ymm13 * ymm14) + ymm4
	vfmadd231pd	%ymm14, %ymm12, %ymm5   # ymm5 = (ymm12 * ymm14) + ymm5
	vbroadcastsd	464(%rcx), %ymm14
	vfmadd231pd	%ymm14, %ymm13, %ymm6   # ymm6 = (ymm13 * ymm14) + ymm6
	vfmadd231pd	%ymm14, %ymm12, %ymm7   # ymm7 = (ymm12 * ymm14) + ymm7
	vbroadcastsd	592(%rcx), %ymm14
	vfmadd231pd	%ymm14, %ymm13, %ymm8   # ymm8 = (ymm13 * ymm14) + ymm8
	vfmadd231pd	%ymm14, %ymm12, %ymm9   # ymm9 = (ymm12 * ymm14) + ymm9
	vbroadcastsd	720(%rcx), %ymm14
	vfmadd231pd	%ymm13, %ymm14, %ymm10  # ymm10 = (ymm14 * ymm13) + ymm10
	vfmadd231pd	%ymm14, %ymm12, %ymm11  # ymm11 = (ymm12 * ymm14) + ymm11
	vmovupd	736(%rdx), %ymm12
	vbroadcastsd	88(%rcx), %ymm14
	vmovupd	704(%rdx), %ymm13
	vfmadd231pd	%ymm14, %ymm13, %ymm1   # ymm1 = (ymm13 * ymm14) + ymm1
	vfmadd231pd	%ymm14, %ymm12, %ymm0   # ymm0 = (ymm12 * ymm14) + ymm0
	vbroadcastsd	216(%rcx), %ymm14
	vfmadd231pd	%ymm14, %ymm13, %ymm3   # ymm3 = (ymm13 * ymm14) + ymm3
	vfmadd231pd	%ymm14, %ymm12, %ymm2   # ymm2 = (ymm12 * ymm14) + ymm2
	vbroadcastsd	344(%rcx), %ymm14
	vfmadd231pd	%ymm14, %ymm13, %ymm5   # ymm5 = (ymm13 * ymm14) + ymm5
	vfmadd231pd	%ymm14, %ymm12, %ymm4   # ymm4 = (ymm12 * ymm14) + ymm4
	vbroadcastsd	472(%rcx), %ymm14
	vfmadd231pd	%ymm14, %ymm13, %ymm7   # ymm7 = (ymm13 * ymm14) + ymm7
	vfmadd231pd	%ymm14, %ymm12, %ymm6   # ymm6 = (ymm12 * ymm14) + ymm6
	vbroadcastsd	600(%rcx), %ymm14
	vfmadd231pd	%ymm14, %ymm13, %ymm9   # ymm9 = (ymm13 * ymm14) + ymm9
	vfmadd231pd	%ymm14, %ymm12, %ymm8   # ymm8 = (ymm12 * ymm14) + ymm8
	vbroadcastsd	728(%rcx), %ymm14
	vfmadd231pd	%ymm13, %ymm14, %ymm11  # ymm11 = (ymm14 * ymm13) + ymm11
	vfmadd231pd	%ymm14, %ymm12, %ymm10  # ymm10 = (ymm12 * ymm14) + ymm10
	vmovupd	768(%rdx), %ymm12
	vbroadcastsd	96(%rcx), %ymm14
	vmovupd	800(%rdx), %ymm13
	vfmadd231pd	%ymm14, %ymm13, %ymm0   # ymm0 = (ymm13 * ymm14) + ymm0
	vfmadd231pd	%ymm14, %ymm12, %ymm1   # ymm1 = (ymm12 * ymm14) + ymm1
	vbroadcastsd	224(%rcx), %ymm14
	vfmadd231pd	%ymm14, %ymm13, %ymm2   # ymm2 = (ymm13 * ymm14) + ymm2
	vfmadd231pd	%ymm14, %ymm12, %ymm3   # ymm3 = (ymm12 * ymm14) + ymm3
	vbroadcastsd	352(%rcx), %ymm14
	vfmadd231pd	%ymm14, %ymm13, %ymm4   # ymm4 = (ymm13 * ymm14) + ymm4
	vfmadd231pd	%ymm14, %ymm12, %ymm5   # ymm5 = (ymm12 * ymm14) + ymm5
	vbroadcastsd	480(%rcx), %ymm14
	vfmadd231pd	%ymm14, %ymm13, %ymm6   # ymm6 = (ymm13 * ymm14) + ymm6
	vfmadd231pd	%ymm14, %ymm12, %ymm7   # ymm7 = (ymm12 * ymm14) + ymm7
	vbroadcastsd	608(%rcx), %ymm14
	vfmadd231pd	%ymm14, %ymm13, %ymm8   # ymm8 = (ymm13 * ymm14) + ymm8
	vfmadd231pd	%ymm14, %ymm12, %ymm9   # ymm9 = (ymm12 * ymm14) + ymm9
	vbroadcastsd	736(%rcx), %ymm14
	vfmadd231pd	%ymm13, %ymm14, %ymm10  # ymm10 = (ymm14 * ymm13) + ymm10
	vfmadd231pd	%ymm14, %ymm12, %ymm11  # ymm11 = (ymm12 * ymm14) + ymm11
	vmovupd	864(%rdx), %ymm12
	vbroadcastsd	104(%rcx), %ymm14
	vmovupd	832(%rdx), %ymm13
	vfmadd231pd	%ymm14, %ymm13, %ymm1   # ymm1 = (ymm13 * ymm14) + ymm1
	vfmadd231pd	%ymm14, %ymm12, %ymm0   # ymm0 = (ymm12 * ymm14) + ymm0
	vbroadcastsd	232(%rcx), %ymm14
	vfmadd231pd	%ymm14, %ymm13, %ymm3   # ymm3 = (ymm13 * ymm14) + ymm3
	vfmadd231pd	%ymm14, %ymm12, %ymm2   # ymm2 = (ymm12 * ymm14) + ymm2
	vbroadcastsd	360(%rcx), %ymm14
	vfmadd231pd	%ymm14, %ymm13, %ymm5   # ymm5 = (ymm13 * ymm14) + ymm5
	vfmadd231pd	%ymm14, %ymm12, %ymm4   # ymm4 = (ymm12 * ymm14) + ymm4
	vbroadcastsd	488(%rcx), %ymm14
	vfmadd231pd	%ymm14, %ymm13, %ymm7   # ymm7 = (ymm13 * ymm14) + ymm7
	vfmadd231pd	%ymm14, %ymm12, %ymm6   # ymm6 = (ymm12 * ymm14) + ymm6
	vbroadcastsd	616(%rcx), %ymm14
	vfmadd231pd	%ymm14, %ymm13, %ymm9   # ymm9 = (ymm13 * ymm14) + ymm9
	vfmadd231pd	%ymm14, %ymm12, %ymm8   # ymm8 = (ymm12 * ymm14) + ymm8
	vbroadcastsd	744(%rcx), %ymm14
	vfmadd231pd	%ymm13, %ymm14, %ymm11  # ymm11 = (ymm14 * ymm13) + ymm11
	vfmadd231pd	%ymm14, %ymm12, %ymm10  # ymm10 = (ymm12 * ymm14) + ymm10
	vmovupd	896(%rdx), %ymm12
	vbroadcastsd	112(%rcx), %ymm14
	vmovupd	928(%rdx), %ymm13
	vfmadd231pd	%ymm14, %ymm13, %ymm0   # ymm0 = (ymm13 * ymm14) + ymm0
	vfmadd231pd	%ymm14, %ymm12, %ymm1   # ymm1 = (ymm12 * ymm14) + ymm1
	vbroadcastsd	240(%rcx), %ymm14
	vfmadd231pd	%ymm14, %ymm13, %ymm2   # ymm2 = (ymm13 * ymm14) + ymm2
	vfmadd231pd	%ymm14, %ymm12, %ymm3   # ymm3 = (ymm12 * ymm14) + ymm3
	vbroadcastsd	368(%rcx), %ymm14
	vfmadd231pd	%ymm14, %ymm13, %ymm4   # ymm4 = (ymm13 * ymm14) + ymm4
	vfmadd231pd	%ymm14, %ymm12, %ymm5   # ymm5 = (ymm12 * ymm14) + ymm5
	vbroadcastsd	496(%rcx), %ymm14
	vfmadd231pd	%ymm14, %ymm13, %ymm6   # ymm6 = (ymm13 * ymm14) + ymm6
	vfmadd231pd	%ymm14, %ymm12, %ymm7   # ymm7 = (ymm12 * ymm14) + ymm7
	vbroadcastsd	624(%rcx), %ymm14
	vfmadd231pd	%ymm14, %ymm13, %ymm8   # ymm8 = (ymm13 * ymm14) + ymm8
	vfmadd231pd	%ymm14, %ymm12, %ymm9   # ymm9 = (ymm12 * ymm14) + ymm9
	vbroadcastsd	752(%rcx), %ymm14
	vfmadd231pd	%ymm13, %ymm14, %ymm10  # ymm10 = (ymm14 * ymm13) + ymm10
	vfmadd231pd	%ymm14, %ymm12, %ymm11  # ymm11 = (ymm12 * ymm14) + ymm11
	vmovupd	992(%rdx), %ymm12
	vmovupd	960(%rdx), %ymm13
	vbroadcastsd	120(%rcx), %ymm14
	vfmadd231pd	%ymm14, %ymm13, %ymm1   # ymm1 = (ymm13 * ymm14) + ymm1
	vfmadd231pd	%ymm14, %ymm12, %ymm0   # ymm0 = (ymm12 * ymm14) + ymm0
	vbroadcastsd	248(%rcx), %ymm14
	vfmadd231pd	%ymm13, %ymm15, %ymm11  # ymm11 = (ymm15 * ymm13) + ymm11
	vfmadd231pd	%ymm15, %ymm12, %ymm10  # ymm10 = (ymm12 * ymm15) + ymm10
	vfmadd231pd	%ymm14, %ymm13, %ymm3   # ymm3 = (ymm13 * ymm14) + ymm3
	vfmadd231pd	%ymm14, %ymm12, %ymm2   # ymm2 = (ymm12 * ymm14) + ymm2
	vbroadcastsd	376(%rcx), %ymm14
	vfmadd231pd	%ymm14, %ymm13, %ymm5   # ymm5 = (ymm13 * ymm14) + ymm5
	vfmadd231pd	%ymm14, %ymm12, %ymm4   # ymm4 = (ymm12 * ymm14) + ymm4
	vbroadcastsd	504(%rcx), %ymm14
	vfmadd231pd	%ymm14, %ymm13, %ymm7   # ymm7 = (ymm13 * ymm14) + ymm7
	vfmadd231pd	%ymm14, %ymm12, %ymm6   # ymm6 = (ymm12 * ymm14) + ymm6
	vbroadcastsd	632(%rcx), %ymm14
	vmovupd	%ymm0, 32(%rax)
	vmovupd	%ymm1, (%rax)
	vmovupd	%ymm2, 96(%rax)
	vmovupd	%ymm3, 64(%rax)
	vmovupd	%ymm4, 160(%rax)
	vmovupd	%ymm5, 128(%rax)
	vmovupd	%ymm6, 224(%rax)
	vmovupd	%ymm7, 192(%rax)
	vfmadd231pd	%ymm14, %ymm13, %ymm9   # ymm9 = (ymm13 * ymm14) + ymm9
	vfmadd231pd	%ymm14, %ymm12, %ymm8   # ymm8 = (ymm12 * ymm14) + ymm8
	vmovupd	%ymm8, 288(%rax)
	vmovupd	%ymm9, 256(%rax)
	vmovupd	%ymm10, 352(%rax)
	vmovupd	%ymm11, 320(%rax)
	vzeroupper
	retq
.Lfunc_end0:
	.size	"japi1_genkernel!_585", .Lfunc_end0-"japi1_genkernel!_585"
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
