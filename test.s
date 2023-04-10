	.text
	.file	"test"
	.globl	japi1_test_458                  # -- Begin function japi1_test_458
	.p2align	4, 0x90
	.type	japi1_test_458,@function
japi1_test_458:                         # @japi1_test_458
	.cfi_startproc
# %bb.0:                                # %top
	subq	$224, %rsp
	.cfi_def_cfa_offset 232
	movq	%rsi, 216(%rsp)
	movq	8(%rsi), %rcx
	movq	16(%rsi), %rdx
	movq	(%rsi), %rax
	xorl	%esi, %esi
	vmovsd	(%rcx), %xmm8                   # xmm8 = mem[0],zero
	vmovsd	(%rdx), %xmm0                   # xmm0 = mem[0],zero
	vmovsd	8(%rcx), %xmm9                  # xmm9 = mem[0],zero
	vmovsd	16(%rcx), %xmm2                 # xmm2 = mem[0],zero
	vmovsd	24(%rcx), %xmm3                 # xmm3 = mem[0],zero
	vmovsd	32(%rcx), %xmm4                 # xmm4 = mem[0],zero
	vmovsd	40(%rcx), %xmm5                 # xmm5 = mem[0],zero
	vmovsd	48(%rcx), %xmm6                 # xmm6 = mem[0],zero
	vmovsd	56(%rcx), %xmm7                 # xmm7 = mem[0],zero
	vmovsd	640(%rdx), %xmm10               # xmm10 = mem[0],zero
	vmulsd	%xmm0, %xmm8, %xmm1
	vmovsd	%xmm1, 112(%rsp)                # 8-byte Spill
	vmulsd	%xmm0, %xmm9, %xmm1
	vmovsd	%xmm1, 120(%rsp)                # 8-byte Spill
	vmulsd	%xmm0, %xmm2, %xmm1
	vmovsd	%xmm1, 128(%rsp)                # 8-byte Spill
	vmulsd	%xmm0, %xmm3, %xmm1
	vmovsd	%xmm1, 136(%rsp)                # 8-byte Spill
	vmulsd	%xmm0, %xmm4, %xmm1
	vmovsd	%xmm1, 144(%rsp)                # 8-byte Spill
	vmulsd	%xmm0, %xmm5, %xmm1
	vmovsd	%xmm1, 152(%rsp)                # 8-byte Spill
	vmulsd	%xmm0, %xmm6, %xmm1
	vmulsd	%xmm0, %xmm7, %xmm0
	vmovsd	%xmm0, 168(%rsp)                # 8-byte Spill
	vmovsd	128(%rdx), %xmm0                # xmm0 = mem[0],zero
	vmovsd	%xmm1, 160(%rsp)                # 8-byte Spill
	vmulsd	%xmm0, %xmm5, %xmm1
	vmulsd	%xmm0, %xmm8, %xmm15
	vmulsd	%xmm0, %xmm9, %xmm14
	vmulsd	%xmm0, %xmm2, %xmm13
	vmulsd	%xmm0, %xmm3, %xmm12
	vmulsd	%xmm0, %xmm4, %xmm11
	vmovsd	%xmm1, -128(%rsp)               # 8-byte Spill
	vmulsd	%xmm0, %xmm6, %xmm1
	vmulsd	%xmm0, %xmm7, %xmm0
	vmovsd	%xmm0, 176(%rsp)                # 8-byte Spill
	vmovsd	256(%rdx), %xmm0                # xmm0 = mem[0],zero
	vmovsd	%xmm1, -120(%rsp)               # 8-byte Spill
	vmulsd	%xmm0, %xmm8, %xmm1
	vmovsd	%xmm1, 48(%rsp)                 # 8-byte Spill
	vmulsd	%xmm0, %xmm9, %xmm1
	vmovsd	%xmm1, 56(%rsp)                 # 8-byte Spill
	vmulsd	%xmm0, %xmm2, %xmm1
	vmovsd	%xmm1, 64(%rsp)                 # 8-byte Spill
	vmulsd	%xmm0, %xmm3, %xmm1
	vmovsd	%xmm1, 72(%rsp)                 # 8-byte Spill
	vmulsd	%xmm0, %xmm4, %xmm1
	vmovsd	%xmm1, 80(%rsp)                 # 8-byte Spill
	vmulsd	%xmm0, %xmm5, %xmm1
	vmovsd	%xmm1, 88(%rsp)                 # 8-byte Spill
	vmulsd	%xmm0, %xmm6, %xmm1
	vmulsd	%xmm0, %xmm7, %xmm0
	vmovsd	%xmm0, 104(%rsp)                # 8-byte Spill
	vmovsd	384(%rdx), %xmm0                # xmm0 = mem[0],zero
	vmovsd	%xmm1, 96(%rsp)                 # 8-byte Spill
	vmulsd	%xmm0, %xmm8, %xmm1
	vmovsd	%xmm1, -16(%rsp)                # 8-byte Spill
	vmulsd	%xmm0, %xmm9, %xmm1
	vmovsd	%xmm1, -8(%rsp)                 # 8-byte Spill
	vmulsd	%xmm0, %xmm2, %xmm1
	vmovsd	%xmm1, (%rsp)                   # 8-byte Spill
	vmulsd	%xmm0, %xmm3, %xmm1
	vmovsd	%xmm1, 8(%rsp)                  # 8-byte Spill
	vmulsd	%xmm0, %xmm4, %xmm1
	vmovsd	%xmm1, 16(%rsp)                 # 8-byte Spill
	vmulsd	%xmm0, %xmm5, %xmm1
	vmovsd	%xmm1, 24(%rsp)                 # 8-byte Spill
	vmulsd	%xmm0, %xmm6, %xmm1
	vmulsd	%xmm0, %xmm7, %xmm0
	vmovsd	%xmm0, 40(%rsp)                 # 8-byte Spill
	vmovsd	512(%rdx), %xmm0                # xmm0 = mem[0],zero
	vmovsd	%xmm1, 32(%rsp)                 # 8-byte Spill
	addq	$648, %rdx                      # imm = 0x288
	vmulsd	%xmm0, %xmm8, %xmm1
	vmovsd	%xmm1, -80(%rsp)                # 8-byte Spill
	vmulsd	%xmm0, %xmm9, %xmm1
	vmovsd	%xmm1, -72(%rsp)                # 8-byte Spill
	vmulsd	%xmm0, %xmm2, %xmm1
	vmovsd	%xmm1, -64(%rsp)                # 8-byte Spill
	vmulsd	%xmm0, %xmm3, %xmm1
	vmovsd	%xmm1, -56(%rsp)                # 8-byte Spill
	vmulsd	%xmm0, %xmm4, %xmm1
	vmulsd	%xmm4, %xmm10, %xmm4
	vmovsd	%xmm1, -48(%rsp)                # 8-byte Spill
	vmulsd	%xmm0, %xmm5, %xmm1
	vmovsd	%xmm1, -40(%rsp)                # 8-byte Spill
	vmulsd	%xmm0, %xmm6, %xmm1
	vmulsd	%xmm0, %xmm7, %xmm0
	vmovsd	%xmm1, -32(%rsp)                # 8-byte Spill
	vmulsd	%xmm10, %xmm8, %xmm1
	vmovsd	%xmm0, -24(%rsp)                # 8-byte Spill
	vmovsd	%xmm1, -112(%rsp)               # 8-byte Spill
	vmulsd	%xmm10, %xmm9, %xmm1
	vmovsd	%xmm1, -104(%rsp)               # 8-byte Spill
	vmulsd	%xmm2, %xmm10, %xmm1
	vmulsd	%xmm6, %xmm10, %xmm2
	vmovsd	%xmm1, -96(%rsp)                # 8-byte Spill
	vmulsd	%xmm3, %xmm10, %xmm1
	vmulsd	%xmm5, %xmm10, %xmm3
	vmovsd	%xmm1, -88(%rsp)                # 8-byte Spill
	vmulsd	%xmm7, %xmm10, %xmm1
	.p2align	4, 0x90
.LBB0_1:                                # %L1002
                                        # =>This Inner Loop Header: Depth=1
	vmovsd	64(%rcx,%rsi), %xmm7            # xmm7 = mem[0],zero
	vmovsd	-640(%rdx), %xmm8               # xmm8 = mem[0],zero
	vmovsd	112(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vmovsd	72(%rcx,%rsi), %xmm6            # xmm6 = mem[0],zero
	vmovsd	80(%rcx,%rsi), %xmm5            # xmm5 = mem[0],zero
	vmovsd	%xmm4, 184(%rsp)                # 8-byte Spill
	vmovsd	88(%rcx,%rsi), %xmm4            # xmm4 = mem[0],zero
	vmovsd	%xmm3, 192(%rsp)                # 8-byte Spill
	vmovsd	96(%rcx,%rsi), %xmm3            # xmm3 = mem[0],zero
	vmovsd	%xmm2, 200(%rsp)                # 8-byte Spill
	vmovsd	104(%rcx,%rsi), %xmm2           # xmm2 = mem[0],zero
	vmovsd	%xmm1, 208(%rsp)                # 8-byte Spill
	vmovsd	112(%rcx,%rsi), %xmm1           # xmm1 = mem[0],zero
	vmovsd	120(%rcx,%rsi), %xmm10          # xmm10 = mem[0],zero
	vmovsd	176(%rsp), %xmm9                # 8-byte Reload
                                        # xmm9 = mem[0],zero
	addq	$64, %rsi
	vfmadd231sd	%xmm8, %xmm7, %xmm0     # xmm0 = (xmm7 * xmm8) + xmm0
	vmovsd	%xmm0, 112(%rsp)                # 8-byte Spill
	vmovsd	120(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vfmadd231sd	%xmm8, %xmm6, %xmm0     # xmm0 = (xmm6 * xmm8) + xmm0
	vmovsd	%xmm0, 120(%rsp)                # 8-byte Spill
	vmovsd	128(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vfmadd231sd	%xmm8, %xmm5, %xmm0     # xmm0 = (xmm5 * xmm8) + xmm0
	vmovsd	%xmm0, 128(%rsp)                # 8-byte Spill
	vmovsd	136(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vfmadd231sd	%xmm8, %xmm4, %xmm0     # xmm0 = (xmm4 * xmm8) + xmm0
	vmovsd	%xmm0, 136(%rsp)                # 8-byte Spill
	vmovsd	144(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vfmadd231sd	%xmm8, %xmm3, %xmm0     # xmm0 = (xmm3 * xmm8) + xmm0
	vmovsd	%xmm0, 144(%rsp)                # 8-byte Spill
	vmovsd	152(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vfmadd231sd	%xmm8, %xmm2, %xmm0     # xmm0 = (xmm2 * xmm8) + xmm0
	vmovsd	%xmm0, 152(%rsp)                # 8-byte Spill
	vmovsd	160(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vfmadd231sd	%xmm8, %xmm1, %xmm0     # xmm0 = (xmm1 * xmm8) + xmm0
	vmovsd	%xmm0, 160(%rsp)                # 8-byte Spill
	vmovsd	168(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vfmadd231sd	%xmm8, %xmm10, %xmm0    # xmm0 = (xmm10 * xmm8) + xmm0
	vmovsd	-512(%rdx), %xmm8               # xmm8 = mem[0],zero
	vmovsd	%xmm0, 168(%rsp)                # 8-byte Spill
	vmovsd	-128(%rsp), %xmm0               # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vfmadd231sd	%xmm8, %xmm7, %xmm15    # xmm15 = (xmm7 * xmm8) + xmm15
	vfmadd231sd	%xmm8, %xmm6, %xmm14    # xmm14 = (xmm6 * xmm8) + xmm14
	vfmadd231sd	%xmm8, %xmm5, %xmm13    # xmm13 = (xmm5 * xmm8) + xmm13
	vfmadd231sd	%xmm8, %xmm4, %xmm12    # xmm12 = (xmm4 * xmm8) + xmm12
	vfmadd231sd	%xmm8, %xmm3, %xmm11    # xmm11 = (xmm3 * xmm8) + xmm11
	vfmadd231sd	%xmm8, %xmm10, %xmm9    # xmm9 = (xmm10 * xmm8) + xmm9
	vfmadd231sd	%xmm8, %xmm2, %xmm0     # xmm0 = (xmm2 * xmm8) + xmm0
	vmovsd	%xmm9, 176(%rsp)                # 8-byte Spill
	vmovsd	-112(%rsp), %xmm9               # 8-byte Reload
                                        # xmm9 = mem[0],zero
	vmovsd	%xmm0, -128(%rsp)               # 8-byte Spill
	vmovsd	-120(%rsp), %xmm0               # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vfmadd231sd	%xmm8, %xmm1, %xmm0     # xmm0 = (xmm1 * xmm8) + xmm0
	vmovsd	-384(%rdx), %xmm8               # xmm8 = mem[0],zero
	vmovsd	%xmm0, -120(%rsp)               # 8-byte Spill
	vmovapd	%xmm15, %xmm0
	vmovapd	%xmm14, %xmm15
	vmovapd	%xmm13, %xmm14
	vmovapd	%xmm12, %xmm13
	vmovapd	%xmm11, %xmm12
	vmovapd	%xmm13, %xmm12
	vmovapd	%xmm14, %xmm13
	vmovapd	%xmm15, %xmm14
	vmovapd	%xmm0, %xmm15
	vmovsd	48(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vfmadd231sd	%xmm8, %xmm7, %xmm0     # xmm0 = (xmm7 * xmm8) + xmm0
	vmovsd	%xmm0, 48(%rsp)                 # 8-byte Spill
	vmovsd	56(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vfmadd231sd	%xmm8, %xmm6, %xmm0     # xmm0 = (xmm6 * xmm8) + xmm0
	vmovsd	%xmm0, 56(%rsp)                 # 8-byte Spill
	vmovsd	64(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vfmadd231sd	%xmm8, %xmm5, %xmm0     # xmm0 = (xmm5 * xmm8) + xmm0
	vmovsd	%xmm0, 64(%rsp)                 # 8-byte Spill
	vmovsd	72(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vfmadd231sd	%xmm8, %xmm4, %xmm0     # xmm0 = (xmm4 * xmm8) + xmm0
	vmovsd	%xmm0, 72(%rsp)                 # 8-byte Spill
	vmovsd	80(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vfmadd231sd	%xmm8, %xmm3, %xmm0     # xmm0 = (xmm3 * xmm8) + xmm0
	vmovsd	%xmm0, 80(%rsp)                 # 8-byte Spill
	vmovsd	88(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vfmadd231sd	%xmm8, %xmm2, %xmm0     # xmm0 = (xmm2 * xmm8) + xmm0
	vmovsd	%xmm0, 88(%rsp)                 # 8-byte Spill
	vmovsd	96(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vfmadd231sd	%xmm8, %xmm1, %xmm0     # xmm0 = (xmm1 * xmm8) + xmm0
	vmovsd	%xmm0, 96(%rsp)                 # 8-byte Spill
	vmovsd	104(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vfmadd231sd	%xmm8, %xmm10, %xmm0    # xmm0 = (xmm10 * xmm8) + xmm0
	vmovsd	-256(%rdx), %xmm8               # xmm8 = mem[0],zero
	vmovsd	%xmm0, 104(%rsp)                # 8-byte Spill
	vmovsd	-16(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vfmadd231sd	%xmm8, %xmm7, %xmm0     # xmm0 = (xmm7 * xmm8) + xmm0
	vmovsd	%xmm0, -16(%rsp)                # 8-byte Spill
	vmovsd	-8(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vfmadd231sd	%xmm8, %xmm6, %xmm0     # xmm0 = (xmm6 * xmm8) + xmm0
	vmovsd	%xmm0, -8(%rsp)                 # 8-byte Spill
	vmovsd	(%rsp), %xmm0                   # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vfmadd231sd	%xmm8, %xmm5, %xmm0     # xmm0 = (xmm5 * xmm8) + xmm0
	vmovsd	%xmm0, (%rsp)                   # 8-byte Spill
	vmovsd	8(%rsp), %xmm0                  # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vfmadd231sd	%xmm8, %xmm4, %xmm0     # xmm0 = (xmm4 * xmm8) + xmm0
	vmovsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	vmovsd	16(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vfmadd231sd	%xmm8, %xmm3, %xmm0     # xmm0 = (xmm3 * xmm8) + xmm0
	vmovsd	%xmm0, 16(%rsp)                 # 8-byte Spill
	vmovsd	24(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vfmadd231sd	%xmm8, %xmm2, %xmm0     # xmm0 = (xmm2 * xmm8) + xmm0
	vmovsd	%xmm0, 24(%rsp)                 # 8-byte Spill
	vmovsd	32(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vfmadd231sd	%xmm8, %xmm1, %xmm0     # xmm0 = (xmm1 * xmm8) + xmm0
	vmovsd	%xmm0, 32(%rsp)                 # 8-byte Spill
	vmovsd	40(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vfmadd231sd	%xmm8, %xmm10, %xmm0    # xmm0 = (xmm10 * xmm8) + xmm0
	vmovsd	-128(%rdx), %xmm8               # xmm8 = mem[0],zero
	vmovsd	%xmm0, 40(%rsp)                 # 8-byte Spill
	vmovsd	-80(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vfmadd231sd	%xmm8, %xmm7, %xmm0     # xmm0 = (xmm7 * xmm8) + xmm0
	vmovsd	%xmm0, -80(%rsp)                # 8-byte Spill
	vmovsd	-72(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vfmadd231sd	%xmm8, %xmm6, %xmm0     # xmm0 = (xmm6 * xmm8) + xmm0
	vmovsd	%xmm0, -72(%rsp)                # 8-byte Spill
	vmovsd	-64(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vfmadd231sd	%xmm8, %xmm5, %xmm0     # xmm0 = (xmm5 * xmm8) + xmm0
	vmovsd	%xmm0, -64(%rsp)                # 8-byte Spill
	vmovsd	-56(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vfmadd231sd	%xmm8, %xmm4, %xmm0     # xmm0 = (xmm4 * xmm8) + xmm0
	vmovsd	%xmm0, -56(%rsp)                # 8-byte Spill
	vmovsd	-48(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vfmadd231sd	%xmm8, %xmm3, %xmm0     # xmm0 = (xmm3 * xmm8) + xmm0
	vmovsd	%xmm0, -48(%rsp)                # 8-byte Spill
	vmovsd	-40(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vfmadd231sd	%xmm8, %xmm2, %xmm0     # xmm0 = (xmm2 * xmm8) + xmm0
	vmovsd	%xmm0, -40(%rsp)                # 8-byte Spill
	vmovsd	-32(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vfmadd231sd	%xmm8, %xmm1, %xmm0     # xmm0 = (xmm1 * xmm8) + xmm0
	vmovsd	%xmm0, -32(%rsp)                # 8-byte Spill
	vmovsd	-24(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vfmadd231sd	%xmm8, %xmm10, %xmm0    # xmm0 = (xmm10 * xmm8) + xmm0
	vmovsd	(%rdx), %xmm8                   # xmm8 = mem[0],zero
	addq	$8, %rdx
	vmovsd	%xmm0, -24(%rsp)                # 8-byte Spill
	vfmadd231sd	%xmm7, %xmm8, %xmm9     # xmm9 = (xmm8 * xmm7) + xmm9
	vmovsd	-104(%rsp), %xmm7               # 8-byte Reload
                                        # xmm7 = mem[0],zero
	vmovsd	%xmm9, -112(%rsp)               # 8-byte Spill
	vfmadd231sd	%xmm6, %xmm8, %xmm7     # xmm7 = (xmm8 * xmm6) + xmm7
	vmovsd	-96(%rsp), %xmm6                # 8-byte Reload
                                        # xmm6 = mem[0],zero
	vmovsd	%xmm7, -104(%rsp)               # 8-byte Spill
	vfmadd231sd	%xmm5, %xmm8, %xmm6     # xmm6 = (xmm8 * xmm5) + xmm6
	vmovsd	-88(%rsp), %xmm5                # 8-byte Reload
                                        # xmm5 = mem[0],zero
	vmovsd	%xmm6, -96(%rsp)                # 8-byte Spill
	vfmadd231sd	%xmm4, %xmm8, %xmm5     # xmm5 = (xmm8 * xmm4) + xmm5
	vmovsd	184(%rsp), %xmm4                # 8-byte Reload
                                        # xmm4 = mem[0],zero
	vmovsd	%xmm5, -88(%rsp)                # 8-byte Spill
	vfmadd231sd	%xmm3, %xmm8, %xmm4     # xmm4 = (xmm8 * xmm3) + xmm4
	vmovsd	192(%rsp), %xmm3                # 8-byte Reload
                                        # xmm3 = mem[0],zero
	vfmadd231sd	%xmm2, %xmm8, %xmm3     # xmm3 = (xmm8 * xmm2) + xmm3
	vmovsd	200(%rsp), %xmm2                # 8-byte Reload
                                        # xmm2 = mem[0],zero
	vfmadd231sd	%xmm1, %xmm8, %xmm2     # xmm2 = (xmm8 * xmm1) + xmm2
	vmovsd	208(%rsp), %xmm1                # 8-byte Reload
                                        # xmm1 = mem[0],zero
	vfmadd231sd	%xmm8, %xmm10, %xmm1    # xmm1 = (xmm10 * xmm8) + xmm1
	cmpq	$960, %rsi                      # imm = 0x3C0
	jne	.LBB0_1
# %bb.2:                                # %L2128
	vmovsd	112(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vmovsd	120(%rsp), %xmm6                # 8-byte Reload
                                        # xmm6 = mem[0],zero
	vmovsd	128(%rsp), %xmm5                # 8-byte Reload
                                        # xmm5 = mem[0],zero
	vmovsd	%xmm0, (%rax)
	vmovsd	%xmm6, 8(%rax)
	vmovsd	%xmm5, 16(%rax)
	vmovsd	136(%rsp), %xmm6                # 8-byte Reload
                                        # xmm6 = mem[0],zero
	vmovsd	144(%rsp), %xmm5                # 8-byte Reload
                                        # xmm5 = mem[0],zero
	vmovsd	%xmm6, 24(%rax)
	vmovsd	%xmm5, 32(%rax)
	vmovsd	152(%rsp), %xmm6                # 8-byte Reload
                                        # xmm6 = mem[0],zero
	vmovsd	160(%rsp), %xmm5                # 8-byte Reload
                                        # xmm5 = mem[0],zero
	vmovsd	%xmm6, 40(%rax)
	vmovsd	%xmm5, 48(%rax)
	vmovsd	168(%rsp), %xmm6                # 8-byte Reload
                                        # xmm6 = mem[0],zero
	vmovsd	-128(%rsp), %xmm5               # 8-byte Reload
                                        # xmm5 = mem[0],zero
	vmovsd	%xmm6, 56(%rax)
	vmovsd	%xmm15, 64(%rax)
	vmovsd	%xmm14, 72(%rax)
	vmovsd	%xmm13, 80(%rax)
	vmovsd	%xmm12, 88(%rax)
	vmovsd	%xmm11, 96(%rax)
	vmovsd	%xmm5, 104(%rax)
	vmovsd	-120(%rsp), %xmm6               # 8-byte Reload
                                        # xmm6 = mem[0],zero
	vmovsd	176(%rsp), %xmm5                # 8-byte Reload
                                        # xmm5 = mem[0],zero
	vmovsd	%xmm6, 112(%rax)
	vmovsd	%xmm5, 120(%rax)
	vmovsd	48(%rsp), %xmm6                 # 8-byte Reload
                                        # xmm6 = mem[0],zero
	vmovsd	56(%rsp), %xmm5                 # 8-byte Reload
                                        # xmm5 = mem[0],zero
	vmovsd	%xmm6, 128(%rax)
	vmovsd	%xmm5, 136(%rax)
	vmovsd	64(%rsp), %xmm6                 # 8-byte Reload
                                        # xmm6 = mem[0],zero
	vmovsd	72(%rsp), %xmm5                 # 8-byte Reload
                                        # xmm5 = mem[0],zero
	vmovsd	%xmm6, 144(%rax)
	vmovsd	%xmm5, 152(%rax)
	vmovsd	80(%rsp), %xmm6                 # 8-byte Reload
                                        # xmm6 = mem[0],zero
	vmovsd	88(%rsp), %xmm5                 # 8-byte Reload
                                        # xmm5 = mem[0],zero
	vmovsd	%xmm6, 160(%rax)
	vmovsd	%xmm5, 168(%rax)
	vmovsd	96(%rsp), %xmm6                 # 8-byte Reload
                                        # xmm6 = mem[0],zero
	vmovsd	104(%rsp), %xmm5                # 8-byte Reload
                                        # xmm5 = mem[0],zero
	vmovsd	%xmm6, 176(%rax)
	vmovsd	%xmm5, 184(%rax)
	vmovsd	-16(%rsp), %xmm6                # 8-byte Reload
                                        # xmm6 = mem[0],zero
	vmovsd	-8(%rsp), %xmm5                 # 8-byte Reload
                                        # xmm5 = mem[0],zero
	vmovsd	%xmm6, 192(%rax)
	vmovsd	%xmm5, 200(%rax)
	vmovsd	(%rsp), %xmm6                   # 8-byte Reload
                                        # xmm6 = mem[0],zero
	vmovsd	8(%rsp), %xmm5                  # 8-byte Reload
                                        # xmm5 = mem[0],zero
	vmovsd	%xmm6, 208(%rax)
	vmovsd	%xmm5, 216(%rax)
	vmovsd	16(%rsp), %xmm6                 # 8-byte Reload
                                        # xmm6 = mem[0],zero
	vmovsd	24(%rsp), %xmm5                 # 8-byte Reload
                                        # xmm5 = mem[0],zero
	vmovsd	%xmm6, 224(%rax)
	vmovsd	%xmm5, 232(%rax)
	vmovsd	32(%rsp), %xmm6                 # 8-byte Reload
                                        # xmm6 = mem[0],zero
	vmovsd	40(%rsp), %xmm5                 # 8-byte Reload
                                        # xmm5 = mem[0],zero
	vmovsd	%xmm6, 240(%rax)
	vmovsd	%xmm5, 248(%rax)
	vmovsd	-80(%rsp), %xmm6                # 8-byte Reload
                                        # xmm6 = mem[0],zero
	vmovsd	-72(%rsp), %xmm5                # 8-byte Reload
                                        # xmm5 = mem[0],zero
	vmovsd	%xmm6, 256(%rax)
	vmovsd	%xmm5, 264(%rax)
	vmovsd	-64(%rsp), %xmm6                # 8-byte Reload
                                        # xmm6 = mem[0],zero
	vmovsd	-56(%rsp), %xmm5                # 8-byte Reload
                                        # xmm5 = mem[0],zero
	vmovsd	%xmm6, 272(%rax)
	vmovsd	%xmm5, 280(%rax)
	vmovsd	-48(%rsp), %xmm6                # 8-byte Reload
                                        # xmm6 = mem[0],zero
	vmovsd	-40(%rsp), %xmm5                # 8-byte Reload
                                        # xmm5 = mem[0],zero
	vmovsd	%xmm6, 288(%rax)
	vmovsd	%xmm5, 296(%rax)
	vmovsd	-32(%rsp), %xmm6                # 8-byte Reload
                                        # xmm6 = mem[0],zero
	vmovsd	-24(%rsp), %xmm5                # 8-byte Reload
                                        # xmm5 = mem[0],zero
	vmovsd	%xmm6, 304(%rax)
	vmovsd	%xmm5, 312(%rax)
	vmovsd	-112(%rsp), %xmm6               # 8-byte Reload
                                        # xmm6 = mem[0],zero
	vmovsd	-104(%rsp), %xmm5               # 8-byte Reload
                                        # xmm5 = mem[0],zero
	vmovsd	%xmm6, 320(%rax)
	vmovsd	%xmm5, 328(%rax)
	vmovsd	-96(%rsp), %xmm6                # 8-byte Reload
                                        # xmm6 = mem[0],zero
	vmovsd	-88(%rsp), %xmm5                # 8-byte Reload
                                        # xmm5 = mem[0],zero
	vmovsd	%xmm6, 336(%rax)
	vmovsd	%xmm5, 344(%rax)
	vmovsd	%xmm4, 352(%rax)
	vmovsd	%xmm3, 360(%rax)
	vmovsd	%xmm2, 368(%rax)
	vmovsd	%xmm1, 376(%rax)
	addq	$224, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	japi1_test_458, .Lfunc_end0-japi1_test_458
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
