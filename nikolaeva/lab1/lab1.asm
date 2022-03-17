fx:
        push    rbp
        mov     rbp, rsp
        movss   DWORD PTR [rbp-4], xmm0
        movss   xmm0, DWORD PTR .LC0[rip]
        divss   xmm0, DWORD PTR [rbp-4]
        pop     rbp
        ret
romb:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 704
        movss   DWORD PTR [rbp-692], xmm0
        movss   DWORD PTR [rbp-696], xmm1
        movss   DWORD PTR [rbp-700], xmm2
        mov     BYTE PTR [rbp-1], 0
        mov     BYTE PTR [rbp-37], 0
        mov     DWORD PTR [rbp-8], 1
        mov     DWORD PTR [rbp-140], 1
        movss   xmm0, DWORD PTR [rbp-696]
        subss   xmm0, DWORD PTR [rbp-692]
        pxor    xmm1, xmm1
        cvtsi2ss        xmm1, DWORD PTR [rbp-8]
        divss   xmm0, xmm1
        movss   DWORD PTR [rbp-44], xmm0
        mov     eax, DWORD PTR [rbp-692]
        movd    xmm0, eax
        call    fx
        movss   DWORD PTR [rbp-704], xmm0
        mov     eax, DWORD PTR [rbp-696]
        movd    xmm0, eax
        call    fx
        addss   xmm0, DWORD PTR [rbp-704]
        pxor    xmm1, xmm1
        cvtss2sd        xmm1, xmm0
        movsd   xmm0, QWORD PTR .LC1[rip]
        mulsd   xmm0, xmm1
        cvtsd2ss        xmm0, xmm0
        movss   DWORD PTR [rbp-48], xmm0
        movss   xmm0, DWORD PTR [rbp-44]
        mulss   xmm0, DWORD PTR [rbp-48]
        movss   DWORD PTR [rbp-684], xmm0
        mov     DWORD PTR [rbp-12], 1
        mov     DWORD PTR [rbp-16], 2
        movss   xmm0, DWORD PTR [rbp-48]
        movss   DWORD PTR [rbp-20], xmm0
.L13:
        add     DWORD PTR [rbp-12], 1
        movss   xmm0, DWORD PTR .LC2[rip]
        movss   DWORD PTR [rbp-24], xmm0
        mov     eax, DWORD PTR [rbp-12]
        cdqe
        mov     edx, DWORD PTR [rbp-16]
        mov     DWORD PTR [rbp-144+rax*4], edx
        sal     DWORD PTR [rbp-8]
        mov     eax, DWORD PTR [rbp-8]
        sub     eax, 1
        mov     DWORD PTR [rbp-52], eax
        movss   xmm0, DWORD PTR [rbp-696]
        subss   xmm0, DWORD PTR [rbp-692]
        pxor    xmm1, xmm1
        cvtsi2ss        xmm1, DWORD PTR [rbp-8]
        divss   xmm0, xmm1
        movss   DWORD PTR [rbp-44], xmm0
        mov     eax, DWORD PTR [rbp-52]
        add     eax, 1
        mov     edx, eax
        shr     edx, 31
        add     eax, edx
        sar     eax
        mov     DWORD PTR [rbp-56], eax
        mov     DWORD PTR [rbp-32], 1
        jmp     .L4
.L5:
        mov     eax, DWORD PTR [rbp-32]
        add     eax, eax
        sub     eax, 1
        mov     DWORD PTR [rbp-72], eax
        pxor    xmm0, xmm0
        cvtsi2ss        xmm0, DWORD PTR [rbp-72]
        mulss   xmm0, DWORD PTR [rbp-44]
        movss   xmm1, DWORD PTR [rbp-692]
        addss   xmm0, xmm1
        movss   DWORD PTR [rbp-76], xmm0
        mov     eax, DWORD PTR [rbp-76]
        movd    xmm0, eax
        call    fx
        movss   xmm1, DWORD PTR [rbp-20]
        addss   xmm0, xmm1
        movss   DWORD PTR [rbp-20], xmm0
        add     DWORD PTR [rbp-32], 1
.L4:
        mov     eax, DWORD PTR [rbp-32]
        cmp     eax, DWORD PTR [rbp-56]
        jle     .L5
        movss   xmm0, DWORD PTR [rbp-44]
        mulss   xmm0, DWORD PTR [rbp-20]
        mov     eax, DWORD PTR [rbp-16]
        cdqe
        movss   DWORD PTR [rbp-688+rax*4], xmm0
        mov     eax, DWORD PTR [rbp-12]
        sub     eax, 1
        cdqe
        mov     eax, DWORD PTR [rbp-144+rax*4]
        mov     DWORD PTR [rbp-60], eax
        mov     eax, DWORD PTR [rbp-12]
        sub     eax, 1
        mov     DWORD PTR [rbp-64], eax
        mov     DWORD PTR [rbp-36], 1
        jmp     .L6
.L7:
        mov     edx, DWORD PTR [rbp-16]
        mov     eax, DWORD PTR [rbp-36]
        add     eax, edx
        mov     DWORD PTR [rbp-28], eax
        mov     eax, DWORD PTR [rbp-12]
        sub     eax, 1
        cdqe
        mov     edx, DWORD PTR [rbp-144+rax*4]
        mov     eax, DWORD PTR [rbp-36]
        add     eax, edx
        sub     eax, 1
        mov     DWORD PTR [rbp-68], eax
        mov     eax, DWORD PTR [rbp-28]
        sub     eax, 1
        cdqe
        movss   xmm0, DWORD PTR [rbp-688+rax*4]
        mulss   xmm0, DWORD PTR [rbp-24]
        mov     eax, DWORD PTR [rbp-68]
        cdqe
        movss   xmm1, DWORD PTR [rbp-688+rax*4]
        subss   xmm0, xmm1
        cvtss2sd        xmm0, xmm0
        pxor    xmm1, xmm1
        cvtss2sd        xmm1, DWORD PTR [rbp-24]
        movsd   xmm2, QWORD PTR .LC3[rip]
        subsd   xmm1, xmm2
        divsd   xmm0, xmm1
        cvtsd2ss        xmm0, xmm0
        mov     eax, DWORD PTR [rbp-28]
        cdqe
        movss   DWORD PTR [rbp-688+rax*4], xmm0
        movss   xmm1, DWORD PTR [rbp-24]
        movss   xmm0, DWORD PTR .LC2[rip]
        mulss   xmm0, xmm1
        movss   DWORD PTR [rbp-24], xmm0
        add     DWORD PTR [rbp-36], 1
.L6:
        mov     eax, DWORD PTR [rbp-36]
        cmp     eax, DWORD PTR [rbp-64]
        jle     .L7
        cmp     DWORD PTR [rbp-12], 4
        jle     .L8
        mov     eax, DWORD PTR [rbp-16]
        add     eax, 1
        cdqe
        movss   xmm0, DWORD PTR [rbp-688+rax*4]
        pxor    xmm1, xmm1
        ucomiss xmm0, xmm1
        jp      .L15
        pxor    xmm1, xmm1
        ucomiss xmm0, xmm1
        je      .L8
.L15:
        mov     eax, DWORD PTR [rbp-60]
        add     eax, 1
        cdqe
        movss   xmm0, DWORD PTR [rbp-688+rax*4]
        mov     eax, DWORD PTR [rbp-16]
        add     eax, 1
        cdqe
        movss   xmm1, DWORD PTR [rbp-688+rax*4]
        subss   xmm0, xmm1
        movss   xmm1, DWORD PTR .LC5[rip]
        andps   xmm1, xmm0
        mov     eax, DWORD PTR [rbp-16]
        add     eax, 1
        cdqe
        movss   xmm0, DWORD PTR [rbp-688+rax*4]
        mulss   xmm0, DWORD PTR [rbp-700]
        movss   xmm2, DWORD PTR .LC5[rip]
        andps   xmm0, xmm2
        comiss  xmm0, xmm1
        jnb     .L10
        mov     eax, DWORD PTR [rbp-16]
        sub     eax, 1
        cdqe
        movss   xmm0, DWORD PTR [rbp-688+rax*4]
        mov     eax, DWORD PTR [rbp-28]
        cdqe
        movss   xmm1, DWORD PTR [rbp-688+rax*4]
        subss   xmm0, xmm1
        movss   xmm1, DWORD PTR .LC5[rip]
        andps   xmm1, xmm0
        mov     eax, DWORD PTR [rbp-28]
        cdqe
        movss   xmm0, DWORD PTR [rbp-688+rax*4]
        mulss   xmm0, DWORD PTR [rbp-700]
        movss   xmm2, DWORD PTR .LC5[rip]
        andps   xmm0, xmm2
        comiss  xmm0, xmm1
        jb      .L16
.L10:
        mov     BYTE PTR [rbp-1], 1
        jmp     .L8
.L16:
        cmp     DWORD PTR [rbp-12], 15
        jle     .L8
        mov     BYTE PTR [rbp-1], 1
        mov     BYTE PTR [rbp-37], 1
.L8:
        mov     eax, DWORD PTR [rbp-28]
        add     eax, 1
        mov     DWORD PTR [rbp-16], eax
        movzx   eax, BYTE PTR [rbp-1]
        xor     eax, 1
        test    al, al
        jne     .L13
        mov     eax, DWORD PTR [rbp-28]
        cdqe
        movss   xmm0, DWORD PTR [rbp-688+rax*4]
        leave
        ret
main:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        movss   xmm0, DWORD PTR .LC6[rip]
        movss   DWORD PTR [rbp-4], xmm0
        movss   xmm0, DWORD PTR .LC0[rip]
        movss   DWORD PTR [rbp-8], xmm0
        movss   xmm0, DWORD PTR .LC7[rip]
        movss   DWORD PTR [rbp-12], xmm0
        movss   xmm1, DWORD PTR [rbp-4]
        movss   xmm0, DWORD PTR [rbp-12]
        mov     eax, DWORD PTR [rbp-8]
        movaps  xmm2, xmm1
        movaps  xmm1, xmm0
        movd    xmm0, eax
        call    romb
        movd    eax, xmm0
        mov     DWORD PTR [rbp-16], eax
        mov     eax, 0
        leave
        ret
.LC0:
        .long   1065353216
.LC1:
        .long   0
        .long   1071644672
.LC2:
        .long   1082130432
.LC3:
        .long   0
        .long   1072693248
.LC5:
        .long   2147483647
        .long   0
        .long   0
        .long   0
.LC6:
        .long   953267991
.LC7:
        .long   1091567616
