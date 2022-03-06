	.file	"main.c"
	.intel_syntax noprefix
	.text
	.globl	fx
	.type	fx, @function
fx:
	push	rbp
	mov	rbp, rsp
	movsd	QWORD PTR -8[rbp], xmm0
	movsd	xmm0, QWORD PTR .LC0[rip]
	divsd	xmm0, QWORD PTR -8[rbp]
	movq	rax, xmm0
	movq	xmm0, rax
	pop	rbp
	ret
	.size	fx, .-fx
	.globl	simps
	.type	simps, @function
simps:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 104
	movsd	QWORD PTR -72[rbp], xmm0
	movsd	QWORD PTR -80[rbp], xmm1
	movsd	QWORD PTR -88[rbp], xmm2
	mov	QWORD PTR -96[rbp], rdi
	mov	DWORD PTR -56[rbp], 2
	movsd	xmm0, QWORD PTR -80[rbp]
	subsd	xmm0, QWORD PTR -72[rbp]
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, DWORD PTR -56[rbp]
	divsd	xmm0, xmm1
	movsd	QWORD PTR -32[rbp], xmm0
	movsd	xmm0, QWORD PTR -72[rbp]
	addsd	xmm0, QWORD PTR -32[rbp]
	movq	rax, xmm0
	movq	xmm0, rax
	call	fx
	movq	rax, xmm0
	mov	QWORD PTR -48[rbp], rax
	pxor	xmm0, xmm0
	movsd	QWORD PTR -40[rbp], xmm0
	mov	rax, QWORD PTR -72[rbp]
	movq	xmm0, rax
	call	fx
	movsd	QWORD PTR -104[rbp], xmm0
	mov	rax, QWORD PTR -80[rbp]
	movq	xmm0, rax
	call	fx
	addsd	xmm0, QWORD PTR -104[rbp]
	movsd	QWORD PTR -24[rbp], xmm0
	movsd	xmm1, QWORD PTR -48[rbp]
	movsd	xmm0, QWORD PTR .LC2[rip]
	mulsd	xmm0, xmm1
	addsd	xmm0, QWORD PTR -24[rbp]
	mulsd	xmm0, QWORD PTR -32[rbp]
	movsd	xmm1, QWORD PTR .LC3[rip]
	divsd	xmm0, xmm1
	mov	rax, QWORD PTR -96[rbp]
	movsd	QWORD PTR [rax], xmm0
.L8:
	sal	DWORD PTR -56[rbp]
	mov	rax, QWORD PTR -96[rbp]
	movsd	xmm0, QWORD PTR [rax]
	movsd	QWORD PTR -16[rbp], xmm0
	movsd	xmm0, QWORD PTR -80[rbp]
	subsd	xmm0, QWORD PTR -72[rbp]
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, DWORD PTR -56[rbp]
	divsd	xmm0, xmm1
	movsd	QWORD PTR -32[rbp], xmm0
	movsd	xmm0, QWORD PTR -40[rbp]
	addsd	xmm0, QWORD PTR -48[rbp]
	movsd	QWORD PTR -40[rbp], xmm0
	pxor	xmm0, xmm0
	movsd	QWORD PTR -48[rbp], xmm0
	mov	DWORD PTR -52[rbp], 1
	jmp	.L4
.L5:
	mov	eax, DWORD PTR -52[rbp]
	add	eax, eax
	sub	eax, 1
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, eax
	mulsd	xmm0, QWORD PTR -32[rbp]
	movsd	xmm1, QWORD PTR -72[rbp]
	addsd	xmm0, xmm1
	movsd	QWORD PTR -8[rbp], xmm0
	mov	rax, QWORD PTR -8[rbp]
	movq	xmm0, rax
	call	fx
	movsd	xmm1, QWORD PTR -48[rbp]
	addsd	xmm0, xmm1
	movsd	QWORD PTR -48[rbp], xmm0
	add	DWORD PTR -52[rbp], 1
.L4:
	mov	eax, DWORD PTR -56[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	cmp	DWORD PTR -52[rbp], eax
	jle	.L5
	movsd	xmm1, QWORD PTR -48[rbp]
	movsd	xmm0, QWORD PTR .LC2[rip]
	mulsd	xmm0, xmm1
	movapd	xmm1, xmm0
	addsd	xmm1, QWORD PTR -24[rbp]
	movsd	xmm0, QWORD PTR -40[rbp]
	addsd	xmm0, xmm0
	addsd	xmm0, xmm1
	mulsd	xmm0, QWORD PTR -32[rbp]
	movsd	xmm1, QWORD PTR .LC3[rip]
	divsd	xmm0, xmm1
	mov	rax, QWORD PTR -96[rbp]
	movsd	QWORD PTR [rax], xmm0
	mov	rax, QWORD PTR -96[rbp]
	movsd	xmm0, QWORD PTR [rax]
	ucomisd	xmm0, QWORD PTR -16[rbp]
	jp	.L9
	ucomisd	xmm0, QWORD PTR -16[rbp]
	je	.L10
.L9:
	mov	rax, QWORD PTR -96[rbp]
	movsd	xmm0, QWORD PTR [rax]
	subsd	xmm0, QWORD PTR -16[rbp]
	movq	xmm1, QWORD PTR .LC4[rip]
	andpd	xmm0, xmm1
	mov	rax, QWORD PTR -96[rbp]
	movsd	xmm1, QWORD PTR [rax]
	mulsd	xmm1, QWORD PTR -88[rbp]
	movq	xmm2, QWORD PTR .LC4[rip]
	andpd	xmm1, xmm2
	comisd	xmm0, xmm1
	jnb	.L8
.L10:
	nop
	leave
	ret
	.size	simps, .-simps
	.globl	main
	.type	main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	movsd	xmm0, QWORD PTR .LC5[rip]
	movsd	QWORD PTR -32[rbp], xmm0
	movsd	xmm0, QWORD PTR .LC0[rip]
	movsd	QWORD PTR -24[rbp], xmm0
	movsd	xmm0, QWORD PTR .LC6[rip]
	movsd	QWORD PTR -16[rbp], xmm0
	lea	rdx, -40[rbp]
	movsd	xmm1, QWORD PTR -32[rbp]
	movsd	xmm0, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rdx
	movapd	xmm2, xmm1
	movapd	xmm1, xmm0
	movq	xmm0, rax
	call	simps
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L13
	call	__stack_chk_fail@PLT
.L13:
	leave
	ret
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1072693248
	.align 8
.LC2:
	.long	0
	.long	1074790400
	.align 8
.LC3:
	.long	0
	.long	1074266112
	.align 16
.LC4:
	.long	-1
	.long	2147483647
	.long	0
	.long	0
	.align 8
.LC5:
	.long	-1598689907
	.long	1051772663
	.align 8
.LC6:
	.long	0
	.long	1075970048
	.ident	"GCC: (GNU) 11.1.0"
	.section	.note.GNU-stack,"",@progbits
