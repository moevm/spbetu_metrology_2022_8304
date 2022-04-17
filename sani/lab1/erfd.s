erf:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 144
        movsd   QWORD PTR [rbp-136], xmm0
        movsd   xmm0, QWORD PTR .LC0[rip]
        movsd   QWORD PTR [rbp-8], xmm0
        movsd   xmm0, QWORD PTR .LC1[rip]
        movsd   QWORD PTR [rbp-16], xmm0
        movsd   xmm0, QWORD PTR .LC1[rip]
        movsd   QWORD PTR [rbp-24], xmm0
        movsd   xmm0, QWORD PTR .LC2[rip]
        movsd   QWORD PTR [rbp-32], xmm0
        movsd   xmm0, QWORD PTR .LC3[rip]
        movsd   QWORD PTR [rbp-40], xmm0
        movsd   xmm0, QWORD PTR .LC4[rip]
        movsd   QWORD PTR [rbp-48], xmm0
        movsd   xmm0, QWORD PTR .LC5[rip]
        movsd   QWORD PTR [rbp-56], xmm0
        movsd   xmm0, QWORD PTR .LC6[rip]
        movsd   QWORD PTR [rbp-64], xmm0
        movsd   xmm0, QWORD PTR .LC7[rip]
        movsd   QWORD PTR [rbp-72], xmm0
        movsd   xmm0, QWORD PTR .LC8[rip]
        movsd   QWORD PTR [rbp-80], xmm0
        movsd   xmm0, QWORD PTR .LC9[rip]
        movsd   QWORD PTR [rbp-88], xmm0
        movsd   xmm0, QWORD PTR .LC10[rip]
        movsd   QWORD PTR [rbp-96], xmm0
        movsd   xmm0, QWORD PTR [rbp-136]
        mulsd   xmm0, xmm0
        movsd   QWORD PTR [rbp-104], xmm0
        movsd   xmm1, QWORD PTR [rbp-104]
        movsd   xmm0, QWORD PTR .LC10[rip]
        mulsd   xmm1, xmm0
        movsd   xmm0, QWORD PTR .LC9[rip]
        addsd   xmm0, xmm1
        movapd  xmm1, xmm0
        mulsd   xmm1, QWORD PTR [rbp-104]
        movsd   xmm0, QWORD PTR .LC8[rip]
        addsd   xmm0, xmm1
        movapd  xmm1, xmm0
        mulsd   xmm1, QWORD PTR [rbp-104]
        movsd   xmm0, QWORD PTR .LC7[rip]
        addsd   xmm0, xmm1
        movapd  xmm1, xmm0
        mulsd   xmm1, QWORD PTR [rbp-104]
        movsd   xmm0, QWORD PTR .LC6[rip]
        addsd   xmm0, xmm1
        movapd  xmm1, xmm0
        mulsd   xmm1, QWORD PTR [rbp-104]
        movsd   xmm0, QWORD PTR .LC5[rip]
        addsd   xmm0, xmm1
        movapd  xmm1, xmm0
        mulsd   xmm1, QWORD PTR [rbp-104]
        movsd   xmm0, QWORD PTR .LC4[rip]
        addsd   xmm0, xmm1
        movapd  xmm1, xmm0
        mulsd   xmm1, QWORD PTR [rbp-104]
        movsd   xmm0, QWORD PTR .LC3[rip]
        addsd   xmm0, xmm1
        movsd   QWORD PTR [rbp-112], xmm0
        movsd   xmm0, QWORD PTR [rbp-104]
        movq    xmm1, QWORD PTR .LC11[rip]
        xorpd   xmm0, xmm1
        movq    rax, xmm0
        movq    xmm0, rax
        call    exp
        addsd   xmm0, xmm0
        movsd   xmm2, QWORD PTR .LC0[rip]
        movapd  xmm1, xmm0
        divsd   xmm1, xmm2
        movsd   xmm0, QWORD PTR [rbp-104]
        movapd  xmm2, xmm0
        mulsd   xmm2, QWORD PTR [rbp-112]
        movsd   xmm0, QWORD PTR .LC2[rip]
        addsd   xmm0, xmm2
        movapd  xmm2, xmm0
        mulsd   xmm2, QWORD PTR [rbp-104]
        movsd   xmm0, QWORD PTR .LC1[rip]
        addsd   xmm0, xmm2
        movapd  xmm2, xmm0
        mulsd   xmm2, QWORD PTR [rbp-104]
        movsd   xmm0, QWORD PTR .LC1[rip]
        addsd   xmm0, xmm2
        movapd  xmm2, xmm0
        mulsd   xmm2, QWORD PTR [rbp-104]
        movsd   xmm0, QWORD PTR .LC12[rip]
        addsd   xmm0, xmm2
        mulsd   xmm0, QWORD PTR [rbp-136]
        mulsd   xmm0, xmm1
        movsd   QWORD PTR [rbp-120], xmm0
        movsd   xmm0, QWORD PTR [rbp-120]
        movq    rax, xmm0
        movq    xmm0, rax
        leave
        ret
erfc:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 64
        movsd   QWORD PTR [rbp-56], xmm0
        movsd   xmm0, QWORD PTR .LC0[rip]
        movsd   QWORD PTR [rbp-8], xmm0
        movsd   xmm0, QWORD PTR [rbp-56]
        mulsd   xmm0, xmm0
        movsd   QWORD PTR [rbp-16], xmm0
        movsd   xmm0, QWORD PTR [rbp-16]
        movapd  xmm1, xmm0
        addsd   xmm1, xmm0
        movsd   xmm0, QWORD PTR .LC12[rip]
        divsd   xmm0, xmm1
        movsd   QWORD PTR [rbp-24], xmm0
        movsd   xmm1, QWORD PTR [rbp-24]
        movsd   xmm0, QWORD PTR .LC13[rip]
        mulsd   xmm0, xmm1
        movsd   xmm2, QWORD PTR [rbp-24]
        movsd   xmm1, QWORD PTR .LC14[rip]
        mulsd   xmm1, xmm2
        movsd   xmm3, QWORD PTR [rbp-24]
        movsd   xmm2, QWORD PTR .LC15[rip]
        mulsd   xmm2, xmm3
        movsd   xmm4, QWORD PTR [rbp-24]
        movsd   xmm3, QWORD PTR .LC16[rip]
        mulsd   xmm3, xmm4
        movsd   xmm5, QWORD PTR [rbp-24]
        movsd   xmm4, QWORD PTR .LC17[rip]
        mulsd   xmm5, xmm4
        movsd   xmm4, QWORD PTR .LC12[rip]
        addsd   xmm5, xmm4
        movapd  xmm4, xmm3
        divsd   xmm4, xmm5
        movsd   xmm3, QWORD PTR .LC12[rip]
        addsd   xmm4, xmm3
        movapd  xmm3, xmm2
        divsd   xmm3, xmm4
        movsd   xmm2, QWORD PTR .LC12[rip]
        addsd   xmm3, xmm2
        movapd  xmm2, xmm1
        divsd   xmm2, xmm3
        movsd   xmm1, QWORD PTR .LC12[rip]
        addsd   xmm2, xmm1
        movapd  xmm1, xmm0
        divsd   xmm1, xmm2
        movsd   xmm0, QWORD PTR .LC12[rip]
        addsd   xmm1, xmm0
        movsd   xmm0, QWORD PTR [rbp-24]
        divsd   xmm0, xmm1
        movsd   QWORD PTR [rbp-32], xmm0
        movsd   xmm1, QWORD PTR [rbp-24]
        movsd   xmm0, QWORD PTR .LC18[rip]
        mulsd   xmm0, xmm1
        movsd   xmm2, QWORD PTR [rbp-24]
        movsd   xmm1, QWORD PTR .LC19[rip]
        mulsd   xmm1, xmm2
        movsd   xmm3, QWORD PTR [rbp-24]
        movsd   xmm2, QWORD PTR .LC20[rip]
        mulsd   xmm2, xmm3
        movsd   xmm4, QWORD PTR [rbp-24]
        movsd   xmm3, QWORD PTR .LC21[rip]
        mulsd   xmm3, xmm4
        movsd   xmm5, QWORD PTR [rbp-32]
        movsd   xmm4, QWORD PTR .LC22[rip]
        mulsd   xmm5, xmm4
        movsd   xmm4, QWORD PTR .LC12[rip]
        addsd   xmm5, xmm4
        movapd  xmm4, xmm3
        divsd   xmm4, xmm5
        movsd   xmm3, QWORD PTR .LC12[rip]
        addsd   xmm4, xmm3
        movapd  xmm3, xmm2
        divsd   xmm3, xmm4
        movsd   xmm2, QWORD PTR .LC12[rip]
        addsd   xmm3, xmm2
        movapd  xmm2, xmm1
        divsd   xmm2, xmm3
        movsd   xmm1, QWORD PTR .LC12[rip]
        addsd   xmm2, xmm1
        movapd  xmm1, xmm0
        divsd   xmm1, xmm2
        movsd   xmm0, QWORD PTR .LC12[rip]
        addsd   xmm1, xmm0
        movsd   xmm0, QWORD PTR [rbp-24]
        divsd   xmm0, xmm1
        movsd   QWORD PTR [rbp-32], xmm0
        mov     rax, QWORD PTR [rbp-16]
        movq    xmm0, rax
        call    exp
        movq    rax, xmm0
        movq    xmm1, rax
        mulsd   xmm1, QWORD PTR [rbp-56]
        movsd   xmm0, QWORD PTR .LC0[rip]
        mulsd   xmm1, xmm0
        movsd   xmm0, QWORD PTR [rbp-32]
        movapd  xmm2, xmm0
        addsd   xmm2, xmm0
        movsd   xmm0, QWORD PTR .LC12[rip]
        movapd  xmm3, xmm2
        addsd   xmm3, xmm0
        movsd   xmm0, QWORD PTR [rbp-24]
        movapd  xmm2, xmm0
        divsd   xmm2, xmm3
        movsd   xmm0, QWORD PTR .LC12[rip]
        addsd   xmm0, xmm2
        mulsd   xmm1, xmm0
        movsd   xmm0, QWORD PTR .LC12[rip]
        divsd   xmm0, xmm1
        movsd   QWORD PTR [rbp-40], xmm0
        movsd   xmm0, QWORD PTR [rbp-40]
        movq    rax, xmm0
        movq    xmm0, rax
        leave
        ret
main:
        push    rbp
        mov     rbp, rsp
        movsd   xmm0, QWORD PTR .LC12[rip]
        movsd   QWORD PTR x[rip], xmm0
        movsd   xmm1, QWORD PTR x[rip]
        pxor    xmm0, xmm0
        comisd  xmm0, xmm1
        jbe     .L17
        mov     DWORD PTR done[rip], 1
        jmp     .L8
.L17:
        movsd   xmm0, QWORD PTR x[rip]
        pxor    xmm1, xmm1
        ucomisd xmm0, xmm1
        jp      .L9
        pxor    xmm1, xmm1
        ucomisd xmm0, xmm1
        jne     .L9
        pxor    xmm0, xmm0
        movsd   QWORD PTR er[rip], xmm0
        movsd   xmm0, QWORD PTR .LC12[rip]
        movsd   QWORD PTR ec[rip], xmm0
        jmp     .L8
.L9:
        movsd   xmm1, QWORD PTR x[rip]
        movsd   xmm0, QWORD PTR .LC24[rip]
        comisd  xmm0, xmm1
        jbe     .L18
        mov     rax, QWORD PTR x[rip]
        movq    xmm0, rax
        call    erf
        movq    rax, xmm0
        mov     QWORD PTR er[rip], rax
        movsd   xmm1, QWORD PTR er[rip]
        movsd   xmm0, QWORD PTR .LC12[rip]
        subsd   xmm0, xmm1
        movsd   QWORD PTR ec[rip], xmm0
        jmp     .L8
.L18:
        mov     rax, QWORD PTR x[rip]
        movq    xmm0, rax
        call    erfc
        movq    rax, xmm0
        mov     QWORD PTR ec[rip], rax
        movsd   xmm1, QWORD PTR ec[rip]
        movsd   xmm0, QWORD PTR .LC12[rip]
        subsd   xmm0, xmm1
        movsd   QWORD PTR er[rip], xmm0
.L8:
        mov     eax, 0
        pop     rbp
        ret