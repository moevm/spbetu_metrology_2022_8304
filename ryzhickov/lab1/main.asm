n:
        .long   5
linfit2:
        push    rbp
        mov     rbp, rsp
        mov     QWORD PTR [rbp-72], rdi
        mov     QWORD PTR [rbp-80], rsi
        mov     QWORD PTR [rbp-88], rdx
        pxor    xmm0, xmm0
        movss   DWORD PTR [rbp-4], xmm0
        pxor    xmm0, xmm0
        movss   DWORD PTR [rbp-8], xmm0
        pxor    xmm0, xmm0
        movss   DWORD PTR [rbp-12], xmm0
        pxor    xmm0, xmm0
        movss   DWORD PTR [rbp-16], xmm0
        pxor    xmm0, xmm0
        movss   DWORD PTR [rbp-20], xmm0
        mov     DWORD PTR [rbp-24], 0
        jmp     .L2
.L3:
        mov     eax, DWORD PTR [rbp-24]
        cdqe
        lea     rdx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-72]
        add     rax, rdx
        movss   xmm0, DWORD PTR [rax]
        movss   DWORD PTR [rbp-52], xmm0
        mov     eax, DWORD PTR [rbp-24]
        cdqe
        lea     rdx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-80]
        add     rax, rdx
        movss   xmm0, DWORD PTR [rax]
        movss   DWORD PTR [rbp-56], xmm0
        movss   xmm0, DWORD PTR [rbp-4]
        addss   xmm0, DWORD PTR [rbp-52]
        movss   DWORD PTR [rbp-4], xmm0
        movss   xmm0, DWORD PTR [rbp-8]
        addss   xmm0, DWORD PTR [rbp-56]
        movss   DWORD PTR [rbp-8], xmm0
        movss   xmm0, DWORD PTR [rbp-52]
        mulss   xmm0, DWORD PTR [rbp-56]
        movss   xmm1, DWORD PTR [rbp-12]
        addss   xmm0, xmm1
        movss   DWORD PTR [rbp-12], xmm0
        movss   xmm0, DWORD PTR [rbp-52]
        mulss   xmm0, xmm0
        movss   xmm1, DWORD PTR [rbp-16]
        addss   xmm0, xmm1
        movss   DWORD PTR [rbp-16], xmm0
        movss   xmm0, DWORD PTR [rbp-56]
        mulss   xmm0, xmm0
        movss   xmm1, DWORD PTR [rbp-20]
        addss   xmm0, xmm1
        movss   DWORD PTR [rbp-20], xmm0
        add     DWORD PTR [rbp-24], 1
.L2:
        mov     eax, DWORD PTR n[rip]
        cmp     DWORD PTR [rbp-24], eax
        jl      .L3
        movss   xmm0, DWORD PTR [rbp-4]
        mulss   xmm0, xmm0
        mov     eax, DWORD PTR n[rip]
        pxor    xmm2, xmm2
        cvtsi2ss        xmm2, eax
        movaps  xmm1, xmm0
        divss   xmm1, xmm2
        movss   xmm0, DWORD PTR [rbp-16]
        subss   xmm0, xmm1
        movss   DWORD PTR [rbp-32], xmm0
        movss   xmm0, DWORD PTR [rbp-4]
        mulss   xmm0, DWORD PTR [rbp-8]
        mov     eax, DWORD PTR n[rip]
        pxor    xmm2, xmm2
        cvtsi2ss        xmm2, eax
        movaps  xmm1, xmm0
        divss   xmm1, xmm2
        movss   xmm0, DWORD PTR [rbp-12]
        subss   xmm0, xmm1
        movss   DWORD PTR [rbp-36], xmm0
        movss   xmm0, DWORD PTR [rbp-8]
        mulss   xmm0, xmm0
        mov     eax, DWORD PTR n[rip]
        pxor    xmm2, xmm2
        cvtsi2ss        xmm2, eax
        movaps  xmm1, xmm0
        divss   xmm1, xmm2
        movss   xmm0, DWORD PTR [rbp-20]
        subss   xmm0, xmm1
        movss   DWORD PTR [rbp-40], xmm0
        movss   xmm0, DWORD PTR [rbp-36]
        divss   xmm0, DWORD PTR [rbp-32]
        movss   DWORD PTR [rbp-44], xmm0
        movss   xmm0, DWORD PTR [rbp-16]
        mulss   xmm0, DWORD PTR [rbp-8]
        movss   xmm1, DWORD PTR [rbp-4]
        mulss   xmm1, DWORD PTR [rbp-12]
        subss   xmm0, xmm1
        mov     eax, DWORD PTR n[rip]
        pxor    xmm1, xmm1
        cvtsi2ss        xmm1, eax
        divss   xmm0, xmm1
        divss   xmm0, DWORD PTR [rbp-32]
        movss   DWORD PTR [rbp-48], xmm0
        mov     DWORD PTR [rbp-28], 0
        jmp     .L4
.L5:
        mov     eax, DWORD PTR [rbp-28]
        cdqe
        lea     rdx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-72]
        add     rax, rdx
        movss   xmm0, DWORD PTR [rax]
        mulss   xmm0, DWORD PTR [rbp-44]
        mov     eax, DWORD PTR [rbp-28]
        cdqe
        lea     rdx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-88]
        add     rax, rdx
        addss   xmm0, DWORD PTR [rbp-48]
        movss   DWORD PTR [rax], xmm0
        add     DWORD PTR [rbp-28], 1
.L4:
        mov     eax, DWORD PTR n[rip]
        cmp     DWORD PTR [rbp-28], eax
        jl      .L5
        nop
        nop
        pop     rbp
        ret
.LC2:
        .string "x: "
.LC3:
        .string "%f ;"
.LC4:
        .string "\ny: "
.LC5:
        .string "\ny_calc: "
main:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 112
        mov     DWORD PTR [rbp-4], 0
        jmp     .L7
.L8:
        call    rand
        movsx   rdx, eax
        imul    rdx, rdx, 1374389535
        shr     rdx, 32
        sar     edx, 5
        mov     ecx, eax
        sar     ecx, 31
        sub     edx, ecx
        imul    ecx, edx, 100
        sub     eax, ecx
        mov     edx, eax
        pxor    xmm0, xmm0
        cvtsi2ss        xmm0, edx
        movss   xmm1, DWORD PTR .LC1[rip]
        divss   xmm0, xmm1
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        movss   DWORD PTR [rbp-48+rax*4], xmm0
        call    rand
        movsx   rdx, eax
        imul    rdx, rdx, 1374389535
        shr     rdx, 32
        sar     edx, 5
        mov     ecx, eax
        sar     ecx, 31
        sub     edx, ecx
        imul    ecx, edx, 100
        sub     eax, ecx
        mov     edx, eax
        pxor    xmm0, xmm0
        cvtsi2ss        xmm0, edx
        movss   xmm1, DWORD PTR .LC1[rip]
        divss   xmm0, xmm1
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        movss   DWORD PTR [rbp-80+rax*4], xmm0
        add     DWORD PTR [rbp-4], 1
.L7:
        mov     eax, DWORD PTR n[rip]
        cmp     DWORD PTR [rbp-4], eax
        jl      .L8
        lea     rdx, [rbp-112]
        lea     rcx, [rbp-80]
        lea     rax, [rbp-48]
        mov     rsi, rcx
        mov     rdi, rax
        call    linfit2
        mov     edi, OFFSET FLAT:.LC2
        mov     eax, 0
        call    printf
        mov     DWORD PTR [rbp-8], 0
        jmp     .L9
.L10:
        mov     eax, DWORD PTR [rbp-8]
        cdqe
        movss   xmm0, DWORD PTR [rbp-48+rax*4]
        pxor    xmm2, xmm2
        cvtss2sd        xmm2, xmm0
        movq    rax, xmm2
        movq    xmm0, rax
        mov     edi, OFFSET FLAT:.LC3
        mov     eax, 1
        call    printf
        add     DWORD PTR [rbp-8], 1
.L9:
        mov     eax, DWORD PTR n[rip]
        cmp     DWORD PTR [rbp-8], eax
        jl      .L10
        mov     edi, OFFSET FLAT:.LC4
        mov     eax, 0
        call    printf
        mov     DWORD PTR [rbp-12], 0
        jmp     .L11
.L12:
        mov     eax, DWORD PTR [rbp-12]
        cdqe
        movss   xmm0, DWORD PTR [rbp-80+rax*4]
        pxor    xmm3, xmm3
        cvtss2sd        xmm3, xmm0
        movq    rax, xmm3
        movq    xmm0, rax
        mov     edi, OFFSET FLAT:.LC3
        mov     eax, 1
        call    printf
        add     DWORD PTR [rbp-12], 1
.L11:
        mov     eax, DWORD PTR n[rip]
        cmp     DWORD PTR [rbp-12], eax
        jl      .L12
        mov     edi, OFFSET FLAT:.LC5
        mov     eax, 0
        call    printf
        mov     DWORD PTR [rbp-16], 0
        jmp     .L13
.L14:
        mov     eax, DWORD PTR [rbp-16]
        cdqe
        movss   xmm0, DWORD PTR [rbp-112+rax*4]
        pxor    xmm4, xmm4
        cvtss2sd        xmm4, xmm0
        movq    rax, xmm4
        movq    xmm0, rax
        mov     edi, OFFSET FLAT:.LC3
        mov     eax, 1
        call    printf
        add     DWORD PTR [rbp-16], 1
.L13:
        mov     eax, DWORD PTR n[rip]
        cmp     DWORD PTR [rbp-16], eax
        jl      .L14
        mov     eax, 0
        leave
        ret
.LC1:
        .long   1120403456