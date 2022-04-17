tol: 
	.text 
 	.globl fx 
 	.type fx, @function 
fx:
		.LFB0: 
 	.cfi_startproc  
			pushq %rbp 	
			movq %rsp, %rbp 
			movsd %xmm0, -8(%rbp)  
			movsd .LC0(%rip), %xmm0 
 	divsd -8(%rbp), %xmm0
			popq %rbp 
	ret 
 	.cfi_endproc 
.LFE0: 
	

.globl trapez  	
			.type trapez, @function 
trapez: 
.LFB1: 
 	.cfi_startproc 
			pushq %rbp 
	
			movq %rsp, %rbp  		
			subq $88, %rsp  	
			movsd %xmm0, -56(%rbp)  	
			movsd %xmm1, -64(%rbp)  	
			movsd %xmm2, -72(%rbp)  	
			movl $1, -48(%rbp)  	
			movsd -64(%rbp), %xmm0  	
			subsd -56(%rbp), %xmm0  	
			cvtsi2sd 	-48(%rbp), %xmm1  	
			divsd %xmm1, %xmm0  	
			movsd %xmm0, -32(%rbp)  	
			movq -56(%rbp), %rax  	
			movq %rax, -80(%rbp) 
 	movsd -80(%rbp), %xmm0 
 	call fx 
 	movsd %xmm0, -80(%rbp)  
			movq -64(%rbp), %rax  
			movq %rax, -88(%rbp) 
 	movsd -88(%rbp), %xmm0 
 	call fx 
 	addsd -80(%rbp), %xmm0  	
			movsd %xmm0, -24(%rbp)  	
			movsd -24(%rbp), %xmm0  
			mulsd -32(%rbp), %xmm0  
			movsd .LC1(%rip), %xmm1  
			divsd %xmm1, %xmm0  
			movsd %xmm0, sum(%rip)  
			pxor %xmm0, %xmm0  
			movsd %xmm0, -40(%rbp)
.L6: 
 	sall -48(%rbp)  
			movsd sum(%rip), %xmm0	
			movsd %xmm0, -16(%rbp)  
			movsd -64(%rbp), %xmm0  
			subsd -56(%rbp), %xmm0  
			cvtsi2sd -48(%rbp), %xmm1 
			divsd %xmm1, %xmm0  
			movsd %xmm0, -32(%rbp)  
			movl $1, -44(%rbp) 
       jmp .L4 
.L5: 
 	cvtsi2sd -44(%rbp), %xmm0  
			addsd %xmm0, %xmm0  
			movsd .LC0(%rip), %xmm1  
			subsd %xmm1, %xmm0  
			mulsd -32(%rbp), %xmm0  
			movsd -56(%rbp), %xmm1  
			addsd %xmm1, %xmm0  
			movsd %xmm0, -8(%rbp)  
			movq -8(%rbp), %rax  
			movq %rax, -80(%rbp)  
			movsd -80(%rbp), %xmm0 
      call fx 
 	movapd %xmm0, %xmm1  
			movsd -40(%rbp), %xmm0 
			addsd %xmm1, %xmm0  
			movsd %xmm0, -40(%rbp)  
			addl $1, -44(%rbp) 
.L4: 
 	movl -48(%rbp), %eax  	
			movl %eax, %edx  	
			shrl $31, %edx  	
			addl %edx, %eax 
       sarl %eax 
       cmpl %eax, -44(%rbp) 
       jle .L5 
 	movsd -40(%rbp), %xmm0
			addsd %xmm0, %xmm0  
			addsd -24(%rbp), %xmm0  
			mulsd -32(%rbp), %xmm0  
			movsd .LC3(%rip), %xmm1  
			mulsd %xmm1, %xmm0  
			movsd %xmm0, sum(%rip)  
			movsd sum(%rip), %xmm0  
			subsd -16(%rbp), %xmm0  
			movq .LC4(%rip), %xmm1  
			andpd %xmm1, %xmm0  
			movsd sum(%rip), %xmm1  
			mulsd -72(%rbp), %xmm1  
			movq .LC4(%rip), %xmm2  
			andpd %xmm2, %xmm1 
 	ucomisd 	%xmm1, %xmm0 
 	ja 	.L6  	nop  	leave  	
	ret 
 	.cfi_endproc 
.LFE1: 
	
.globl main  
			.type main, @function 

main: 
.LFB2: 
			.cfi_startproc  
			pushq %rbp  
			movq %rsp, %rbp  
			subq $8, %rsp 
			movsd .LC0(%rip), %xmm0  
			movsd %xmm0, lower(%rip)  
			movsd .LC5(%rip), %xmm0  
			movsd %xmm0, upper(%rip)  
			movsd .LC6(%rip), %xmm1  
			movsd upper(%rip), %xmm0  
			movq lower(%rip), %rax  
			movapd %xmm1, %xmm2  
			movapd %xmm0, %xmm1  
			movq %rax, -8(%rbp) 
 	movsd -8(%rbp), %xmm0  
			call trapez  
			movl $0, %eax  leave 
 	ret 
 	.cfi_endproc
