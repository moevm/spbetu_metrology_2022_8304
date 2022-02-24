	.file	"main.c"
	.text
	.globl	fx
	.type	fx, @function
fx:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movss	%xmm0, -4(%rbp)
	movss	-4(%rbp), %xmm1
	movss	.LC0(%rip), %xmm0
	xorps	%xmm1, %xmm0
	mulss	-4(%rbp), %xmm0
	call	expf@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	fx, .-fx
	.section	.rodata
.LC4:
	.string	"%5d %f\n"
	.text
	.globl	simps
	.type	simps, @function
simps:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movss	%xmm0, -36(%rbp)
	movss	%xmm1, -40(%rbp)
	movss	%xmm2, -44(%rbp)
	movq	%rdi, -56(%rbp)
	movl	$2, -32(%rbp)
	movss	-40(%rbp), %xmm0
	subss	-36(%rbp), %xmm0
	cvtsi2ss	-32(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -16(%rbp)
	movss	-36(%rbp), %xmm0
	addss	-16(%rbp), %xmm0
	call	fx
	movd	%xmm0, %eax
	movl	%eax, -28(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -24(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -60(%rbp)
	movss	-60(%rbp), %xmm0
	call	fx
	movss	%xmm0, -60(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -64(%rbp)
	movss	-64(%rbp), %xmm0
	call	fx
	addss	-60(%rbp), %xmm0
	movss	%xmm0, -12(%rbp)
	movss	-28(%rbp), %xmm1
	movss	.LC2(%rip), %xmm0
	mulss	%xmm1, %xmm0
	addss	-12(%rbp), %xmm0
	mulss	-16(%rbp), %xmm0
	movss	.LC3(%rip), %xmm1
	divss	%xmm1, %xmm0
	movq	-56(%rbp), %rax
	movss	%xmm0, (%rax)
	movq	-56(%rbp), %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	-32(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC4(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
.L6:
	sall	-32(%rbp)
	movq	-56(%rbp), %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -8(%rbp)
	movss	-40(%rbp), %xmm0
	subss	-36(%rbp), %xmm0
	cvtsi2ss	-32(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -16(%rbp)
	movss	-24(%rbp), %xmm0
	addss	-28(%rbp), %xmm0
	movss	%xmm0, -24(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -28(%rbp)
	movl	$1, -20(%rbp)
	jmp	.L4
.L5:
	cvtss2sd	-36(%rbp), %xmm1
	cvtss2sd	-16(%rbp), %xmm2
	cvtsi2sd	-20(%rbp), %xmm0
	addsd	%xmm0, %xmm0
	movsd	.LC5(%rip), %xmm3
	subsd	%xmm3, %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm5
	movss	%xmm5, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -60(%rbp)
	movss	-60(%rbp), %xmm0
	call	fx
	movaps	%xmm0, %xmm1
	movss	-28(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -28(%rbp)
	addl	$1, -20(%rbp)
.L4:
	movl	-32(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	cmpl	%eax, -20(%rbp)
	jle	.L5
	movss	-28(%rbp), %xmm1
	movss	.LC2(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	addss	-12(%rbp), %xmm1
	movss	-24(%rbp), %xmm0
	addss	%xmm0, %xmm0
	addss	%xmm1, %xmm0
	mulss	-16(%rbp), %xmm0
	movss	.LC3(%rip), %xmm1
	divss	%xmm1, %xmm0
	movq	-56(%rbp), %rax
	movss	%xmm0, (%rax)
	movq	-56(%rbp), %rax
	movss	(%rax), %xmm0
	subss	-8(%rbp), %xmm0
	movss	.LC6(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	-44(%rbp), %xmm1
	mulss	-8(%rbp), %xmm1
	movss	.LC6(%rip), %xmm2
	andps	%xmm2, %xmm1
	ucomiss	%xmm1, %xmm0
	ja	.L6
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	simps, .-simps
	.section	.rodata
.LC9:
	.string	"Erf? "
.LC10:
	.string	"%f"
.LC11:
	.string	"Erf of 0.0 is 0.0"
.LC12:
	.string	"Erf of %7.2f, is %12.8f"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movsd	.LC7(%rip), %xmm0
	movsd	%xmm0, -16(%rbp)
	movl	$0, -32(%rbp)
	movss	.LC8(%rip), %xmm0
	movss	%xmm0, -28(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -24(%rbp)
.L13:
	movl	$10, %edi
	call	putchar@PLT
	leaq	.LC9(%rip), %rdi
	call	puts@PLT
	leaq	-36(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movss	-36(%rbp), %xmm1
	pxor	%xmm0, %xmm0
	ucomiss	%xmm1, %xmm0
	jbe	.L18
	movl	$1, -32(%rbp)
	jmp	.L10
.L18:
	movss	-36(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jp	.L11
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.L11
	leaq	.LC11(%rip), %rdi
	call	puts@PLT
	jmp	.L10
.L11:
	cvtsd2ss	-16(%rbp), %xmm0
	movss	-36(%rbp), %xmm1
	leaq	-40(%rbp), %rdx
	movl	-24(%rbp), %eax
	movq	%rdx, %rdi
	movaps	%xmm0, %xmm2
	movl	%eax, -52(%rbp)
	movss	-52(%rbp), %xmm0
	call	simps
	movss	-40(%rbp), %xmm0
	movss	-28(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -20(%rbp)
	cvtss2sd	-20(%rbp), %xmm1
	movss	-36(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	leaq	.LC12(%rip), %rdi
	movl	$2, %eax
	call	printf@PLT
.L10:
	cmpl	$0, -32(%rbp)
	je	.L13
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L15
	call	__stack_chk_fail@PLT
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.section	.rodata
	.align 16
.LC0:
	.long	2147483648
	.long	0
	.long	0
	.long	0
	.align 4
.LC2:
	.long	1082130432
	.align 4
.LC3:
	.long	1077936128
	.align 8
.LC5:
	.long	0
	.long	1072693248
	.align 16
.LC6:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.align 8
.LC7:
	.long	3944497965
	.long	1058682594
	.align 4
.LC8:
	.long	1066430139
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
