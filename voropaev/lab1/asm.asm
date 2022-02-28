       push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        movss   DWORD PTR [rbp-4], xmm0
        mov     eax, DWORD PTR [rbp-4]
        movd    xmm0, eax
        call    sqrtf
        movss   xmm1, DWORD PTR .LC0[rip]
        divss   xmm1, xmm0
        movaps  xmm0, xmm1
        leave
        ret
.LC3:
        .string "1 %lf\n"
.LC5:
        .string "%d %e\n"
trapez:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 64
        movss   DWORD PTR [rbp-36], xmm0
        movss   DWORD PTR [rbp-40], xmm1
        movsd   QWORD PTR [rbp-48], xmm2
        mov     QWORD PTR [rbp-56], rdi
        pxor    xmm0, xmm0
        movss   DWORD PTR [rbp-16], xmm0
        pxor    xmm0, xmm0
        movss   DWORD PTR [rbp-20], xmm0
        pxor    xmm0, xmm0
        movss   DWORD PTR [rbp-4], xmm0
        pxor    xmm0, xmm0
        movss   DWORD PTR [rbp-24], xmm0
        pxor    xmm0, xmm0
        movss   DWORD PTR [rbp-28], xmm0
        mov     DWORD PTR [rbp-8], 0
        mov     DWORD PTR [rbp-12], 1
        movss   xmm0, DWORD PTR [rbp-40]
        subss   xmm0, DWORD PTR [rbp-36]
        pxor    xmm1, xmm1
        cvtsi2ss        xmm1, DWORD PTR [rbp-12]
        divss   xmm0, xmm1
        movss   DWORD PTR [rbp-28], xmm0
        mov     eax, DWORD PTR [rbp-36]
        movd    xmm0, eax
        call    fx
        movss   DWORD PTR [rbp-60], xmm0
        mov     eax, DWORD PTR [rbp-40]
        movd    xmm0, eax
        call    fx
        addss   xmm0, DWORD PTR [rbp-60]
        movss   DWORD PTR [rbp-20], xmm0
        movss   xmm0, DWORD PTR [rbp-20]
        mulss   xmm0, DWORD PTR [rbp-28]
        movss   xmm1, DWORD PTR .LC2[rip]
        divss   xmm0, xmm1
        mov     rax, QWORD PTR [rbp-56]
        movss   DWORD PTR [rax], xmm0
        mov     rax, QWORD PTR [rbp-56]
        movss   xmm0, DWORD PTR [rax]
        pxor    xmm4, xmm4
        cvtss2sd        xmm4, xmm0
        movq    rax, xmm4
        movq    xmm0, rax
        mov     edi, OFFSET FLAT:.LC3
        mov     eax, 1
        call    printf
        pxor    xmm0, xmm0
        movss   DWORD PTR [rbp-4], xmm0
.L6:
        sal     DWORD PTR [rbp-12]
        mov     rax, QWORD PTR [rbp-56]
        movss   xmm0, DWORD PTR [rax]
        movss   DWORD PTR [rbp-24], xmm0
        movss   xmm0, DWORD PTR [rbp-40]
        subss   xmm0, DWORD PTR [rbp-36]
        pxor    xmm1, xmm1
        cvtsi2ss        xmm1, DWORD PTR [rbp-12]
        divss   xmm0, xmm1
        movss   DWORD PTR [rbp-28], xmm0
        mov     DWORD PTR [rbp-8], 1
        jmp     .L4
.L5:
        mov     eax, DWORD PTR [rbp-8]
        add     eax, eax
        sub     eax, 1
        pxor    xmm0, xmm0
        cvtsi2ss        xmm0, eax
        mulss   xmm0, DWORD PTR [rbp-28]
        movss   xmm1, DWORD PTR [rbp-36]
        addss   xmm0, xmm1
        movss   DWORD PTR [rbp-16], xmm0
        mov     eax, DWORD PTR [rbp-16]
        movd    xmm0, eax
        call    fx
        movss   xmm1, DWORD PTR [rbp-4]
        addss   xmm0, xmm1
        movss   DWORD PTR [rbp-4], xmm0
        add     DWORD PTR [rbp-8], 1
.L4:
        mov     eax, DWORD PTR [rbp-12]
        mov     edx, eax
        shr     edx, 31
        add     eax, edx
        sar     eax
        cmp     DWORD PTR [rbp-8], eax
        jle     .L5
        movss   xmm0, DWORD PTR [rbp-4]
        addss   xmm0, xmm0
        addss   xmm0, DWORD PTR [rbp-20]
        movaps  xmm1, xmm0
        mulss   xmm1, DWORD PTR [rbp-28]
        movss   xmm0, DWORD PTR .LC4[rip]
        mulss   xmm0, xmm1
        mov     rax, QWORD PTR [rbp-56]
        movss   DWORD PTR [rax], xmm0
        mov     rax, QWORD PTR [rbp-56]
        movss   xmm0, DWORD PTR [rax]
        pxor    xmm5, xmm5
        cvtss2sd        xmm5, xmm0
        movq    rdx, xmm5
        mov     eax, DWORD PTR [rbp-12]
        movq    xmm0, rdx
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC5
        mov     eax, 1
        call    printf
        mov     rax, QWORD PTR [rbp-56]
        movss   xmm0, DWORD PTR [rax]
        subss   xmm0, DWORD PTR [rbp-24]
        movss   xmm1, DWORD PTR .LC6[rip]
        andps   xmm0, xmm1
        mov     rax, QWORD PTR [rbp-56]
        movss   xmm1, DWORD PTR [rax]
        cvtss2sd        xmm1, xmm1
        mulsd   xmm1, QWORD PTR [rbp-48]
        cvtsd2ss        xmm1, xmm1
        movss   xmm2, DWORD PTR .LC6[rip]
        andps   xmm1, xmm2
        comiss  xmm0, xmm1
        ja      .L6
        nop
        nop
        leave
        ret
.LC9:
        .string "\nsum = %lf"
main:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 32
        movss   xmm0, DWORD PTR .LC0[rip]
        movss   DWORD PTR [rbp-4], xmm0
        movss   xmm0, DWORD PTR .LC7[rip]
        movss   DWORD PTR [rbp-8], xmm0
        mov     edi, 10
        call    putchar
        movsd   xmm0, QWORD PTR .LC8[rip]
        movsd   QWORD PTR [rbp-16], xmm0
        pxor    xmm0, xmm0
        movss   DWORD PTR [rbp-20], xmm0
        lea     rdx, [rbp-20]
        movsd   xmm1, QWORD PTR [rbp-16]
        movss   xmm0, DWORD PTR [rbp-8]
        mov     eax, DWORD PTR [rbp-4]
        mov     rdi, rdx
        movapd  xmm2, xmm1
        movaps  xmm1, xmm0
        movd    xmm0, eax
        call    trapez
        movss   xmm0, DWORD PTR [rbp-20]
        pxor    xmm3, xmm3
        cvtss2sd        xmm3, xmm0
        movq    rax, xmm3
        movq    xmm0, rax
        mov     edi, OFFSET FLAT:.LC9
        mov     eax, 1
        call    printf
        mov     eax, 0
        leave
        ret
.LC0:
        .long   1065353216
.LC2:
        .long   1073741824
.LC4:
        .long   1056964608
.LC6:
        .long   2147483647
        .long   0
        .long   0
        .long   0
.LC7:
        .long   1091567616
.LC8:
        .long   -1598689907
        .long   1051772663