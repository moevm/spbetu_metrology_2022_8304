	.file	"main.c"
	.text
	.def	scanf;	.scl	3;	.type	32;	.endef
	.seh_proc	scanf
scanf:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	48(%rsp), %rbp
	.seh_setframe	%rbp, 48
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	%r9, 56(%rbp)
	leaq	40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rbx
	movl	$0, %ecx
	movq	__imp___acrt_iob_func(%rip), %rax
	call	*%rax
	movq	%rbx, %r8
	movq	32(%rbp), %rdx
	movq	%rax, %rcx
	call	__mingw_vfscanf
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.def	printf;	.scl	3;	.type	32;	.endef
	.seh_proc	printf
printf:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	48(%rsp), %rbp
	.seh_setframe	%rbp, 48
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	%r9, 56(%rbp)
	leaq	40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rbx
	movl	$1, %ecx
	movq	__imp___acrt_iob_func(%rip), %rax
	call	*%rax
	movq	%rbx, %r8
	movq	32(%rbp), %rdx
	movq	%rax, %rcx
	call	__mingw_vfprintf
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.globl	bessy
	.def	bessy;	.scl	2;	.type	32;	.endef
	.seh_proc	bessy
bessy:
	pushq	%rbp
	.seh_pushreg	%rbp
	addq	$-128, %rsp
	.seh_stackalloc	128
	leaq	112(%rsp), %rbp
	.seh_setframe	%rbp, 112
	movaps	%xmm6, 0(%rbp)
	.seh_savexmm	%xmm6, 112
	.seh_endprologue
	movss	%xmm0, 32(%rbp)
	movss	%xmm1, 40(%rbp)
	movss	.LC0(%rip), %xmm0
	movss	%xmm0, -44(%rbp)
	movss	.LC1(%rip), %xmm0
	movss	%xmm0, -48(%rbp)
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, -52(%rbp)
	movss	.LC3(%rip), %xmm0
	movss	%xmm0, -56(%rbp)
	movss	.LC4(%rip), %xmm0
	comiss	32(%rbp), %xmm0
	jbe	.L22
	movss	32(%rbp), %xmm1
	movss	.LC5(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -60(%rbp)
	movss	-60(%rbp), %xmm0
	mulss	%xmm0, %xmm0
	movss	%xmm0, -64(%rbp)
	pxor	%xmm5, %xmm5
	cvtss2sd	-60(%rbp), %xmm5
	movq	%xmm5, %rax
	movq	%rax, %xmm0
	call	log
	pxor	%xmm1, %xmm1
	cvtss2sd	-48(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -68(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -4(%rbp)
	movss	-68(%rbp), %xmm0
	movss	%xmm0, -8(%rbp)
	movss	-68(%rbp), %xmm0
	movss	%xmm0, -12(%rbp)
	movl	$0, -36(%rbp)
.L9:
	addl	$1, -36(%rbp)
	cmpl	$1, -36(%rbp)
	je	.L8
	movl	-36(%rbp), %eax
	leal	-1(%rax), %ecx
	movl	$1, %eax
	cltd
	idivl	%ecx
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movss	-4(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
.L8:
	movss	-68(%rbp), %xmm0
	subss	-4(%rbp), %xmm0
	movss	%xmm0, -72(%rbp)
	movss	-64(%rbp), %xmm0
	movss	.LC7(%rip), %xmm1
	xorps	%xmm1, %xmm0
	mulss	-8(%rbp), %xmm0
	movl	-36(%rbp), %eax
	imull	%eax, %eax
	pxor	%xmm2, %xmm2
	cvtsi2ssl	%eax, %xmm2
	movaps	%xmm0, %xmm1
	divss	%xmm2, %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2ssl	-36(%rbp), %xmm0
	movaps	%xmm0, %xmm3
	mulss	-72(%rbp), %xmm3
	movss	.LC8(%rip), %xmm0
	movaps	%xmm0, %xmm2
	divss	%xmm3, %xmm2
	movss	.LC8(%rip), %xmm0
	subss	%xmm2, %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -8(%rbp)
	movss	-12(%rbp), %xmm0
	addss	-8(%rbp), %xmm0
	movss	%xmm0, -12(%rbp)
	movss	-8(%rbp), %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, %edx
	negl	%edx
	cmovns	%edx, %eax
	pxor	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	movss	-44(%rbp), %xmm0
	comiss	%xmm1, %xmm0
	seta	%al
	xorl	$1, %eax
	testb	%al, %al
	jne	.L9
	pxor	%xmm1, %xmm1
	cvtss2sd	-60(%rbp), %xmm1
	pxor	%xmm0, %xmm0
	cvtss2sd	-68(%rbp), %xmm0
	movsd	.LC9(%rip), %xmm2
	subsd	%xmm2, %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -8(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -4(%rbp)
	movss	-8(%rbp), %xmm0
	movss	%xmm0, -16(%rbp)
	movl	$1, -36(%rbp)
.L10:
	addl	$1, -36(%rbp)
	movl	-36(%rbp), %eax
	leal	-1(%rax), %ecx
	movl	$1, %eax
	cltd
	idivl	%ecx
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movss	-4(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	movss	-68(%rbp), %xmm0
	subss	-4(%rbp), %xmm0
	movss	%xmm0, -72(%rbp)
	movss	-64(%rbp), %xmm0
	movss	.LC7(%rip), %xmm1
	xorps	%xmm1, %xmm0
	mulss	-8(%rbp), %xmm0
	movl	-36(%rbp), %eax
	subl	$1, %eax
	imull	-36(%rbp), %eax
	pxor	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	divss	%xmm1, %xmm0
	pxor	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm2
	pxor	%xmm0, %xmm0
	cvtss2sd	-72(%rbp), %xmm0
	pxor	%xmm3, %xmm3
	cvtsi2sdl	-36(%rbp), %xmm3
	movsd	.LC9(%rip), %xmm1
	divsd	%xmm3, %xmm1
	subsd	%xmm1, %xmm0
	pxor	%xmm3, %xmm3
	cvtss2sd	-72(%rbp), %xmm3
	movl	-36(%rbp), %eax
	subl	$1, %eax
	pxor	%xmm4, %xmm4
	cvtsi2sdl	%eax, %xmm4
	movsd	.LC9(%rip), %xmm1
	divsd	%xmm4, %xmm1
	addsd	%xmm3, %xmm1
	divsd	%xmm1, %xmm0
	mulsd	%xmm2, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -8(%rbp)
	movss	-16(%rbp), %xmm0
	addss	-8(%rbp), %xmm0
	movss	%xmm0, -16(%rbp)
	movss	-8(%rbp), %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, %edx
	negl	%edx
	cmovns	%edx, %eax
	pxor	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	movss	-44(%rbp), %xmm0
	comiss	%xmm1, %xmm0
	seta	%al
	xorl	$1, %eax
	testb	%al, %al
	jne	.L10
	movss	-12(%rbp), %xmm0
	mulss	-56(%rbp), %xmm0
	movss	%xmm0, -12(%rbp)
	movss	.LC8(%rip), %xmm0
	movaps	%xmm0, %xmm1
	divss	32(%rbp), %xmm1
	movss	-16(%rbp), %xmm0
	subss	%xmm1, %xmm0
	movss	-56(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -16(%rbp)
	pxor	%xmm0, %xmm0
	ucomiss	40(%rbp), %xmm0
	jp	.L11
	pxor	%xmm0, %xmm0
	ucomiss	40(%rbp), %xmm0
	jne	.L11
	movss	-12(%rbp), %xmm0
	movss	%xmm0, -32(%rbp)
	jmp	.L13
.L11:
	movss	.LC8(%rip), %xmm0
	ucomiss	40(%rbp), %xmm0
	jp	.L14
	movss	.LC8(%rip), %xmm0
	ucomiss	40(%rbp), %xmm0
	jne	.L14
	movss	-16(%rbp), %xmm0
	movss	%xmm0, -32(%rbp)
	jmp	.L13
.L14:
	movss	.LC10(%rip), %xmm0
	divss	32(%rbp), %xmm0
	movss	%xmm0, -72(%rbp)
	movss	-12(%rbp), %xmm0
	movss	%xmm0, -20(%rbp)
	movss	-16(%rbp), %xmm0
	movss	%xmm0, -24(%rbp)
	movl	$2, -40(%rbp)
	jmp	.L16
.L17:
	movl	-40(%rbp), %eax
	subl	$1, %eax
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	-72(%rbp), %xmm0
	mulss	-24(%rbp), %xmm0
	subss	-20(%rbp), %xmm0
	movss	%xmm0, -28(%rbp)
	movss	-24(%rbp), %xmm0
	movss	%xmm0, -20(%rbp)
	movss	-28(%rbp), %xmm0
	movss	%xmm0, -24(%rbp)
	addl	$1, -40(%rbp)
.L16:
	pxor	%xmm6, %xmm6
	cvtsi2sdl	-40(%rbp), %xmm6
	pxor	%xmm1, %xmm1
	cvtss2sd	40(%rbp), %xmm1
	movsd	.LC11(%rip), %xmm0
	addsd	%xmm0, %xmm1
	movq	%xmm1, %rax
	movq	%rax, %xmm0
	call	trunc
	movq	%xmm0, %rax
	movq	%rax, %xmm4
	comisd	%xmm6, %xmm4
	jnb	.L17
	movss	-28(%rbp), %xmm0
	movss	%xmm0, -32(%rbp)
.L13:
	movss	-32(%rbp), %xmm0
	jmp	.L18
.L22:
	movss	-52(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	mulss	32(%rbp), %xmm1
	movss	.LC10(%rip), %xmm0
	divss	%xmm1, %xmm0
	pxor	%xmm5, %xmm5
	cvtss2sd	%xmm0, %xmm5
	movq	%xmm5, %rax
	movq	%rax, %xmm0
	call	sqrt
	movapd	%xmm0, %xmm6
	movss	-52(%rbp), %xmm0
	movss	.LC12(%rip), %xmm2
	movaps	%xmm0, %xmm1
	divss	%xmm2, %xmm1
	movss	32(%rbp), %xmm0
	subss	%xmm1, %xmm0
	movss	40(%rbp), %xmm1
	mulss	-52(%rbp), %xmm1
	movss	.LC10(%rip), %xmm2
	divss	%xmm2, %xmm1
	subss	%xmm1, %xmm0
	pxor	%xmm4, %xmm4
	cvtss2sd	%xmm0, %xmm4
	movq	%xmm4, %rax
	movq	%rax, %xmm0
	call	sin
	mulsd	%xmm6, %xmm0
	cvtsd2ss	%xmm0, %xmm0
.L18:
	movaps	0(%rbp), %xmm6
	subq	$-128, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC13:
	.ascii "\12\0"
.LC14:
	.ascii "Order? \12\0"
.LC15:
	.ascii "%f\0"
.LC16:
	.ascii "Arg? \12\0"
.LC17:
	.ascii "Y Bessel is %f \12\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	call	__main
	movl	$0, -4(%rbp)
	leaq	.LC13(%rip), %rax
	movq	%rax, %rcx
	call	printf
.L27:
	leaq	.LC14(%rip), %rax
	movq	%rax, %rcx
	call	printf
	leaq	-12(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC15(%rip), %rax
	movq	%rax, %rcx
	call	scanf
	movss	-12(%rbp), %xmm1
	pxor	%xmm0, %xmm0
	comiss	%xmm1, %xmm0
	ja	.L29
	jmp	.L24
.L29:
	movl	$1, -4(%rbp)
	jmp	.L26
.L24:
	leaq	.LC16(%rip), %rax
	movq	%rax, %rcx
	call	printf
	leaq	-8(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC15(%rip), %rax
	movq	%rax, %rcx
	call	scanf
	movss	-8(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	comiss	%xmm1, %xmm0
	setnb	%al
	xorl	$1, %eax
	testb	%al, %al
	jne	.L24
	movss	-12(%rbp), %xmm0
	movl	-8(%rbp), %eax
	movaps	%xmm0, %xmm1
	movd	%eax, %xmm0
	call	bessy
	cvtss2sd	%xmm0, %xmm0
	movq	%xmm0, %rax
	movq	%rax, %rdx
	movq	%rdx, %xmm0
	movapd	%xmm0, %xmm1
	movq	%rax, %rdx
	leaq	.LC17(%rip), %rax
	movq	%rax, %rcx
	call	printf
.L26:
	cmpl	$0, -4(%rbp)
	je	.L27
	movl	$0, %eax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 4
.LC0:
	.long	841731191
	.align 4
.LC1:
	.long	1058260072
	.align 4
.LC2:
	.long	1078530010
	.align 4
.LC3:
	.long	1059256707
	.align 4
.LC4:
	.long	1094713344
	.align 4
.LC5:
	.long	1056964608
	.align 16
.LC7:
	.long	-2147483648
	.long	0
	.long	0
	.long	0
	.align 4
.LC8:
	.long	1065353216
	.align 8
.LC9:
	.long	0
	.long	1071644672
	.align 4
.LC10:
	.long	1073741824
	.align 8
.LC11:
	.long	1202590843
	.long	1065646817
	.align 4
.LC12:
	.long	1082130432
	.ident	"GCC: (GNU) 11.2.0"
	.def	__mingw_vfscanf;	.scl	2;	.type	32;	.endef
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	log;	.scl	2;	.type	32;	.endef
	.def	trunc;	.scl	2;	.type	32;	.endef
	.def	sqrt;	.scl	2;	.type	32;	.endef
	.def	sin;	.scl	2;	.type	32;	.endef
