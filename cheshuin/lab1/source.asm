get_data:
        push    rbp
        mov     rbp, rsp
        mov     QWORD PTR [rbp-24], rdi
        mov     QWORD PTR [rbp-32], rsi
        mov     DWORD PTR [rbp-4], 0
        jmp     .L2
.L3:
        pxor    xmm1, xmm1
        cvtsi2sd        xmm1, DWORD PTR [rbp-4]
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        lea     rdx, [0+rax*8]
        mov     rax, QWORD PTR [rbp-24]
        add     rax, rdx
        movsd   xmm0, QWORD PTR .LC0[rip]
        addsd   xmm0, xmm1
        movsd   QWORD PTR [rax], xmm0
        add     DWORD PTR [rbp-4], 1
.L2:
        cmp     DWORD PTR [rbp-4], 8
        jle     .L3
        mov     rax, QWORD PTR [rbp-32]
        movsd   xmm0, QWORD PTR .LC1[rip]
        movsd   QWORD PTR [rax], xmm0
        mov     rax, QWORD PTR [rbp-32]
        add     rax, 8
        movsd   xmm0, QWORD PTR .LC2[rip]
        movsd   QWORD PTR [rax], xmm0
        mov     rax, QWORD PTR [rbp-32]
        add     rax, 16
        movsd   xmm0, QWORD PTR .LC3[rip]
        movsd   QWORD PTR [rax], xmm0
        mov     rax, QWORD PTR [rbp-32]
        add     rax, 24
        movsd   xmm0, QWORD PTR .LC4[rip]
        movsd   QWORD PTR [rax], xmm0
        mov     rax, QWORD PTR [rbp-32]
        add     rax, 32
        movsd   xmm0, QWORD PTR .LC5[rip]
        movsd   QWORD PTR [rax], xmm0
        mov     rax, QWORD PTR [rbp-32]
        add     rax, 40
        movsd   xmm0, QWORD PTR .LC6[rip]
        movsd   QWORD PTR [rax], xmm0
        mov     rax, QWORD PTR [rbp-32]
        add     rax, 48
        movsd   xmm0, QWORD PTR .LC7[rip]
        movsd   QWORD PTR [rax], xmm0
        mov     rax, QWORD PTR [rbp-32]
        add     rax, 56
        movsd   xmm0, QWORD PTR .LC8[rip]
        movsd   QWORD PTR [rax], xmm0
        mov     rax, QWORD PTR [rbp-32]
        add     rax, 64
        movsd   xmm0, QWORD PTR .LC9[rip]
        movsd   QWORD PTR [rax], xmm0
        nop
        pop     rbp
        ret
deter:
        push    rbp
        mov     rbp, rsp
        mov     QWORD PTR [rbp-8], rdi
        mov     rax, QWORD PTR [rbp-8]
        movsd   xmm1, QWORD PTR [rax]
        mov     rax, QWORD PTR [rbp-8]
        add     rax, 24
        movsd   xmm2, QWORD PTR [rax+8]
        mov     rax, QWORD PTR [rbp-8]
        add     rax, 48
        movsd   xmm0, QWORD PTR [rax+16]
        mulsd   xmm0, xmm2
        mov     rax, QWORD PTR [rbp-8]
        add     rax, 48
        movsd   xmm3, QWORD PTR [rax+8]
        mov     rax, QWORD PTR [rbp-8]
        add     rax, 24
        movsd   xmm2, QWORD PTR [rax+16]
        mulsd   xmm2, xmm3
        subsd   xmm0, xmm2
        mulsd   xmm0, xmm1
        mov     rax, QWORD PTR [rbp-8]
        movsd   xmm2, QWORD PTR [rax+8]
        mov     rax, QWORD PTR [rbp-8]
        add     rax, 24
        movsd   xmm3, QWORD PTR [rax]
        mov     rax, QWORD PTR [rbp-8]
        add     rax, 48
        movsd   xmm1, QWORD PTR [rax+16]
        mulsd   xmm1, xmm3
        mov     rax, QWORD PTR [rbp-8]
        add     rax, 48
        movsd   xmm4, QWORD PTR [rax]
        mov     rax, QWORD PTR [rbp-8]
        add     rax, 24
        movsd   xmm3, QWORD PTR [rax+16]
        mulsd   xmm3, xmm4
        subsd   xmm1, xmm3
        mulsd   xmm2, xmm1
        movapd  xmm1, xmm0
        subsd   xmm1, xmm2
        mov     rax, QWORD PTR [rbp-8]
        movsd   xmm2, QWORD PTR [rax+16]
        mov     rax, QWORD PTR [rbp-8]
        add     rax, 24
        movsd   xmm3, QWORD PTR [rax]
        mov     rax, QWORD PTR [rbp-8]
        add     rax, 48
        movsd   xmm0, QWORD PTR [rax+8]
        mulsd   xmm0, xmm3
        mov     rax, QWORD PTR [rbp-8]
        add     rax, 48
        movsd   xmm4, QWORD PTR [rax]
        mov     rax, QWORD PTR [rbp-8]
        add     rax, 24
        movsd   xmm3, QWORD PTR [rax+8]
        mulsd   xmm3, xmm4
        subsd   xmm0, xmm3
        mulsd   xmm0, xmm2
        addsd   xmm0, xmm1
        movq    rax, xmm0
        movq    xmm0, rax
        pop     rbp
        ret
setup:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 64
        mov     QWORD PTR [rbp-24], rdi
        mov     QWORD PTR [rbp-32], rsi
        mov     QWORD PTR [rbp-40], rdx
        mov     QWORD PTR [rbp-48], rcx
        mov     DWORD PTR [rbp-52], r8d
        movsd   QWORD PTR [rbp-64], xmm0
        mov     DWORD PTR [rbp-4], 0
        jmp     .L7
.L9:
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        lea     rdx, [0+rax*8]
        mov     rax, QWORD PTR [rbp-40]
        lea     rcx, [rdx+rax]
        mov     eax, DWORD PTR [rbp-4]
        movsx   rdx, eax
        mov     rax, rdx
        add     rax, rax
        add     rax, rdx
        sal     rax, 3
        mov     rdx, rax
        mov     rax, QWORD PTR [rbp-32]
        add     rdx, rax
        movsd   xmm0, QWORD PTR [rcx]
        mov     eax, DWORD PTR [rbp-52]
        cdqe
        movsd   QWORD PTR [rdx+rax*8], xmm0
        cmp     DWORD PTR [rbp-52], 0
        jle     .L8
        mov     eax, DWORD PTR [rbp-4]
        movsx   rdx, eax
        mov     rax, rdx
        add     rax, rax
        add     rax, rdx
        sal     rax, 3
        mov     rdx, rax
        mov     rax, QWORD PTR [rbp-24]
        lea     rcx, [rdx+rax]
        mov     eax, DWORD PTR [rbp-52]
        lea     edi, [rax-1]
        mov     eax, DWORD PTR [rbp-4]
        movsx   rdx, eax
        mov     rax, rdx
        add     rax, rax
        add     rax, rdx
        sal     rax, 3
        mov     rdx, rax
        mov     rax, QWORD PTR [rbp-32]
        add     rdx, rax
        mov     eax, DWORD PTR [rbp-52]
        lea     esi, [rax-1]
        movsx   rax, edi
        movsd   xmm0, QWORD PTR [rcx+rax*8]
        movsx   rax, esi
        movsd   QWORD PTR [rdx+rax*8], xmm0
.L8:
        add     DWORD PTR [rbp-4], 1
.L7:
        cmp     DWORD PTR [rbp-4], 2
        jle     .L9
        mov     rax, QWORD PTR [rbp-32]
        mov     rdi, rax
        call    deter
        movq    rax, xmm0
        mov     edx, DWORD PTR [rbp-52]
        movsx   rdx, edx
        lea     rcx, [0+rdx*8]
        mov     rdx, QWORD PTR [rbp-48]
        add     rdx, rcx
        movq    xmm0, rax
        divsd   xmm0, QWORD PTR [rbp-64]
        movsd   QWORD PTR [rdx], xmm0
        nop
        leave
        ret
solve:
        push    rbp
        mov     rbp, rsp
        add     rsp, -128
        mov     QWORD PTR [rbp-104], rdi
        mov     QWORD PTR [rbp-112], rsi
        mov     QWORD PTR [rbp-120], rdx
        mov     DWORD PTR [rbp-4], 0
        jmp     .L11
.L14:
        mov     DWORD PTR [rbp-8], 0
        jmp     .L12
.L13:
        mov     eax, DWORD PTR [rbp-4]
        movsx   rdx, eax
        mov     rax, rdx
        add     rax, rax
        add     rax, rdx
        sal     rax, 3
        mov     rdx, rax
        mov     rax, QWORD PTR [rbp-104]
        add     rdx, rax
        mov     eax, DWORD PTR [rbp-8]
        cdqe
        movsd   xmm0, QWORD PTR [rdx+rax*8]
        mov     eax, DWORD PTR [rbp-8]
        movsx   rcx, eax
        mov     eax, DWORD PTR [rbp-4]
        movsx   rdx, eax
        mov     rax, rdx
        add     rax, rax
        add     rax, rdx
        add     rax, rcx
        movsd   QWORD PTR [rbp-96+rax*8], xmm0
        add     DWORD PTR [rbp-8], 1
.L12:
        cmp     DWORD PTR [rbp-8], 2
        jle     .L13
        add     DWORD PTR [rbp-4], 1
.L11:
        cmp     DWORD PTR [rbp-4], 2
        jle     .L14
        lea     rax, [rbp-96]
        mov     rdi, rax
        call    deter
        movq    rax, xmm0
        mov     QWORD PTR [rbp-16], rax
        pxor    xmm0, xmm0
        ucomisd xmm0, QWORD PTR [rbp-16]
        jp      .L15
        pxor    xmm0, xmm0
        ucomisd xmm0, QWORD PTR [rbp-16]
        je      .L18
.L15:
        mov     rdi, QWORD PTR [rbp-16]
        mov     rcx, QWORD PTR [rbp-120]
        mov     rdx, QWORD PTR [rbp-112]
        lea     rsi, [rbp-96]
        mov     rax, QWORD PTR [rbp-104]
        movq    xmm0, rdi
        mov     r8d, 0
        mov     rdi, rax
        call    setup
        mov     rdi, QWORD PTR [rbp-16]
        mov     rcx, QWORD PTR [rbp-120]
        mov     rdx, QWORD PTR [rbp-112]
        lea     rsi, [rbp-96]
        mov     rax, QWORD PTR [rbp-104]
        movq    xmm0, rdi
        mov     r8d, 1
        mov     rdi, rax
        call    setup
        mov     rdi, QWORD PTR [rbp-16]
        mov     rcx, QWORD PTR [rbp-120]
        mov     rdx, QWORD PTR [rbp-112]
        lea     rsi, [rbp-96]
        mov     rax, QWORD PTR [rbp-104]
        movq    xmm0, rdi
        mov     r8d, 2
        mov     rdi, rax
        call    setup
        jmp     .L10
.L18:
        nop
.L10:
        leave
        ret
linfit:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 272
        mov     QWORD PTR [rbp-216], rdi
        mov     QWORD PTR [rbp-224], rsi
        mov     QWORD PTR [rbp-232], rdx
        mov     QWORD PTR [rbp-240], rcx
        mov     QWORD PTR [rbp-248], r8
        pxor    xmm0, xmm0
        movsd   QWORD PTR [rbp-8], xmm0
        pxor    xmm0, xmm0
        movsd   QWORD PTR [rbp-16], xmm0
        pxor    xmm0, xmm0
        movsd   QWORD PTR [rbp-24], xmm0
        pxor    xmm0, xmm0
        movsd   QWORD PTR [rbp-32], xmm0
        pxor    xmm0, xmm0
        movsd   QWORD PTR [rbp-40], xmm0
        pxor    xmm0, xmm0
        movsd   QWORD PTR [rbp-48], xmm0
        pxor    xmm0, xmm0
        movsd   QWORD PTR [rbp-56], xmm0
        pxor    xmm0, xmm0
        movsd   QWORD PTR [rbp-64], xmm0
        mov     DWORD PTR [rbp-76], 0
        jmp     .L20
.L21:
        mov     eax, DWORD PTR [rbp-76]
        cdqe
        lea     rdx, [0+rax*8]
        mov     rax, QWORD PTR [rbp-216]
        add     rax, rdx
        movsd   xmm0, QWORD PTR [rax]
        movsd   QWORD PTR [rbp-88], xmm0
        mov     eax, DWORD PTR [rbp-76]
        cdqe
        lea     rdx, [0+rax*8]
        mov     rax, QWORD PTR [rbp-224]
        add     rax, rdx
        movsd   xmm0, QWORD PTR [rax]
        movsd   QWORD PTR [rbp-96], xmm0
        movsd   xmm0, QWORD PTR [rbp-88]
        mulsd   xmm0, xmm0
        movsd   QWORD PTR [rbp-104], xmm0
        movsd   xmm0, QWORD PTR [rbp-8]
        addsd   xmm0, QWORD PTR [rbp-88]
        movsd   QWORD PTR [rbp-8], xmm0
        movsd   xmm0, QWORD PTR [rbp-16]
        addsd   xmm0, QWORD PTR [rbp-96]
        movsd   QWORD PTR [rbp-16], xmm0
        movsd   xmm0, QWORD PTR [rbp-88]
        mulsd   xmm0, QWORD PTR [rbp-96]
        movsd   xmm1, QWORD PTR [rbp-24]
        addsd   xmm0, xmm1
        movsd   QWORD PTR [rbp-24], xmm0
        movsd   xmm0, QWORD PTR [rbp-32]
        addsd   xmm0, QWORD PTR [rbp-104]
        movsd   QWORD PTR [rbp-32], xmm0
        movsd   xmm0, QWORD PTR [rbp-96]
        mulsd   xmm0, xmm0
        movsd   xmm1, QWORD PTR [rbp-40]
        addsd   xmm0, xmm1
        movsd   QWORD PTR [rbp-40], xmm0
        movsd   xmm0, QWORD PTR [rbp-88]
        mulsd   xmm0, QWORD PTR [rbp-104]
        movsd   xmm1, QWORD PTR [rbp-48]
        addsd   xmm0, xmm1
        movsd   QWORD PTR [rbp-48], xmm0
        movsd   xmm0, QWORD PTR [rbp-104]
        mulsd   xmm0, xmm0
        movsd   xmm1, QWORD PTR [rbp-56]
        addsd   xmm0, xmm1
        movsd   QWORD PTR [rbp-56], xmm0
        movsd   xmm0, QWORD PTR [rbp-104]
        mulsd   xmm0, QWORD PTR [rbp-96]
        movsd   xmm1, QWORD PTR [rbp-64]
        addsd   xmm0, xmm1
        movsd   QWORD PTR [rbp-64], xmm0
        add     DWORD PTR [rbp-76], 1
.L20:
        cmp     DWORD PTR [rbp-76], 8
        jle     .L21
        movsd   xmm0, QWORD PTR .LC11[rip]
        movsd   QWORD PTR [rbp-176], xmm0
        movsd   xmm0, QWORD PTR [rbp-8]
        movsd   QWORD PTR [rbp-152], xmm0
        movsd   xmm0, QWORD PTR [rbp-8]
        movsd   QWORD PTR [rbp-168], xmm0
        movsd   xmm0, QWORD PTR [rbp-32]
        movsd   QWORD PTR [rbp-128], xmm0
        movsd   xmm0, QWORD PTR [rbp-32]
        movsd   QWORD PTR [rbp-160], xmm0
        movsd   xmm0, QWORD PTR [rbp-32]
        movsd   QWORD PTR [rbp-144], xmm0
        movsd   xmm0, QWORD PTR [rbp-48]
        movsd   QWORD PTR [rbp-120], xmm0
        movsd   xmm0, QWORD PTR [rbp-48]
        movsd   QWORD PTR [rbp-136], xmm0
        movsd   xmm0, QWORD PTR [rbp-56]
        movsd   QWORD PTR [rbp-112], xmm0
        movsd   xmm0, QWORD PTR [rbp-16]
        movsd   QWORD PTR [rbp-208], xmm0
        movsd   xmm0, QWORD PTR [rbp-24]
        movsd   QWORD PTR [rbp-200], xmm0
        movsd   xmm0, QWORD PTR [rbp-64]
        movsd   QWORD PTR [rbp-192], xmm0
        mov     rdx, QWORD PTR [rbp-240]
        lea     rcx, [rbp-208]
        lea     rax, [rbp-176]
        mov     rsi, rcx
        mov     rdi, rax
        call    solve
        pxor    xmm0, xmm0
        movsd   QWORD PTR [rbp-72], xmm0
        mov     DWORD PTR [rbp-76], 0
        jmp     .L22
.L23:
        mov     rax, QWORD PTR [rbp-240]
        movsd   xmm1, QWORD PTR [rax]
        mov     rax, QWORD PTR [rbp-240]
        add     rax, 8
        movsd   xmm2, QWORD PTR [rax]
        mov     eax, DWORD PTR [rbp-76]
        cdqe
        lea     rdx, [0+rax*8]
        mov     rax, QWORD PTR [rbp-216]
        add     rax, rdx
        movsd   xmm0, QWORD PTR [rax]
        mulsd   xmm0, xmm2
        addsd   xmm1, xmm0
        movsd   QWORD PTR [rbp-256], xmm1
        mov     rax, QWORD PTR [rbp-240]
        add     rax, 16
        movsd   xmm3, QWORD PTR [rax]
        movsd   QWORD PTR [rbp-264], xmm3
        mov     eax, DWORD PTR [rbp-76]
        cdqe
        lea     rdx, [0+rax*8]
        mov     rax, QWORD PTR [rbp-216]
        add     rax, rdx
        mov     rax, QWORD PTR [rax]
        movsd   xmm0, QWORD PTR .LC12[rip]
        movapd  xmm1, xmm0
        movq    xmm0, rax
        call    pow
        mulsd   xmm0, QWORD PTR [rbp-264]
        mov     eax, DWORD PTR [rbp-76]
        cdqe
        lea     rdx, [0+rax*8]
        mov     rax, QWORD PTR [rbp-232]
        add     rax, rdx
        addsd   xmm0, QWORD PTR [rbp-256]
        movsd   QWORD PTR [rax], xmm0
        mov     eax, DWORD PTR [rbp-76]
        cdqe
        lea     rdx, [0+rax*8]
        mov     rax, QWORD PTR [rbp-224]
        add     rax, rdx
        movsd   xmm0, QWORD PTR [rax]
        mov     eax, DWORD PTR [rbp-76]
        cdqe
        lea     rdx, [0+rax*8]
        mov     rax, QWORD PTR [rbp-232]
        add     rax, rdx
        movsd   xmm1, QWORD PTR [rax]
        subsd   xmm0, xmm1
        movq    rax, xmm0
        movsd   xmm0, QWORD PTR .LC12[rip]
        movapd  xmm1, xmm0
        movq    xmm0, rax
        call    pow
        movsd   xmm1, QWORD PTR [rbp-72]
        addsd   xmm0, xmm1
        movsd   QWORD PTR [rbp-72], xmm0
        add     DWORD PTR [rbp-76], 1
.L22:
        cmp     DWORD PTR [rbp-76], 8
        jle     .L23
        movsd   xmm0, QWORD PTR .LC12[rip]
        mov     rax, QWORD PTR [rbp-16]
        movapd  xmm1, xmm0
        movq    xmm0, rax
        call    pow
        movq    rax, xmm0
        movsd   xmm0, QWORD PTR .LC11[rip]
        movq    xmm1, rax
        divsd   xmm1, xmm0
        movsd   xmm0, QWORD PTR [rbp-40]
        movapd  xmm2, xmm0
        subsd   xmm2, xmm1
        movsd   xmm0, QWORD PTR [rbp-72]
        movapd  xmm1, xmm0
        divsd   xmm1, xmm2
        movsd   xmm0, QWORD PTR .LC0[rip]
        subsd   xmm0, xmm1
        movq    rax, xmm0
        movq    xmm0, rax
        call    sqrt
        movq    rax, xmm0
        mov     rdx, QWORD PTR [rbp-248]
        mov     QWORD PTR [rdx], rax
        nop
        leave
        ret
main:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 288
        lea     rdx, [rbp-160]
        lea     rax, [rbp-80]
        mov     rsi, rdx
        mov     rdi, rax
        call    get_data
        lea     rdi, [rbp-280]
        lea     rcx, [rbp-272]
        lea     rdx, [rbp-240]
        lea     rsi, [rbp-160]
        lea     rax, [rbp-80]
        mov     r8, rdi
        mov     rdi, rax
        call    linfit
        mov     eax, 0
        leave
        ret
.LC0:
        .long   0
        .long   1072693248
.LC1:
        .long   687194767
        .long   1073778524
.LC2:
        .long   858993459
        .long   1075917619
.LC3:
        .long   1030792151
        .long   1076680458
.LC4:
        .long   -1717986918
        .long   1076861337
.LC5:
        .long   515396076
        .long   1077078917
.LC6:
        .long   -1889785610
        .long   1077016002
.LC7:
        .long   -1889785610
        .long   1076491714
.LC8:
        .long   -858993459
        .long   1075432652
.LC9:
        .long   343597384
        .long   1070679982
.LC11:
        .long   0
        .long   1075970048
.LC12:
        .long   0
        .long   1073741824