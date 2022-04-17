get_data:
        push    rbp
        mov     rbp, rsp
        mov     QWORD PTR [rbp-8], rdi
        mov     QWORD PTR [rbp-16], rsi
        mov     rax, QWORD PTR [rbp-8]
        movsd   xmm0, QWORD PTR .LC0[rip]
        movsd   QWORD PTR [rax], xmm0
        mov     rax, QWORD PTR [rbp-8]
        movsd   xmm0, QWORD PTR .LC1[rip]
        movsd   QWORD PTR [rax+8], xmm0
        mov     rax, QWORD PTR [rbp-8]
        movsd   xmm0, QWORD PTR .LC2[rip]
        movsd   QWORD PTR [rax+16], xmm0
        mov     rax, QWORD PTR [rbp-16]
        movsd   xmm0, QWORD PTR .LC3[rip]
        movsd   QWORD PTR [rax], xmm0
        mov     rax, QWORD PTR [rbp-8]
        add     rax, 24
        movsd   xmm0, QWORD PTR .LC4[rip]
        movsd   QWORD PTR [rax], xmm0
        mov     rax, QWORD PTR [rbp-8]
        add     rax, 24
        movsd   xmm0, QWORD PTR .LC5[rip]
        movsd   QWORD PTR [rax+8], xmm0
        mov     rax, QWORD PTR [rbp-8]
        add     rax, 24
        movsd   xmm0, QWORD PTR .LC6[rip]
        movsd   QWORD PTR [rax+16], xmm0
        mov     rax, QWORD PTR [rbp-16]
        add     rax, 8
        movsd   xmm0, QWORD PTR .LC7[rip]
        movsd   QWORD PTR [rax], xmm0
        mov     rax, QWORD PTR [rbp-8]
        add     rax, 48
        movsd   xmm0, QWORD PTR .LC8[rip]
        movsd   QWORD PTR [rax], xmm0
        mov     rax, QWORD PTR [rbp-8]
        add     rax, 48
        movsd   xmm0, QWORD PTR .LC9[rip]
        movsd   QWORD PTR [rax+8], xmm0
        mov     rax, QWORD PTR [rbp-8]
        add     rax, 48
        movsd   xmm0, QWORD PTR .LC10[rip]
        movsd   QWORD PTR [rax+16], xmm0
        mov     rax, QWORD PTR [rbp-16]
        add     rax, 16
        movsd   xmm0, QWORD PTR .LC11[rip]
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
        jmp     .L5
.L7:
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
        jle     .L6
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
.L6:
        add     DWORD PTR [rbp-4], 1
.L5:
        cmp     DWORD PTR [rbp-4], 2
        jle     .L7
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
        jmp     .L9
.L12:
        mov     DWORD PTR [rbp-8], 0
        jmp     .L10
.L11:
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
.L10:
        cmp     DWORD PTR [rbp-8], 2
        jle     .L11
        add     DWORD PTR [rbp-4], 1
.L9:
        cmp     DWORD PTR [rbp-4], 2
        jle     .L12
        lea     rax, [rbp-96]
        mov     rdi, rax
        call    deter
        movq    rax, xmm0
        mov     QWORD PTR [rbp-16], rax
        pxor    xmm0, xmm0
        ucomisd xmm0, QWORD PTR [rbp-16]
        jp      .L13
        pxor    xmm0, xmm0
        ucomisd xmm0, QWORD PTR [rbp-16]
        je      .L16
.L13:
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
        jmp     .L8
.L16:
        nop
.L8:
        leave
        ret
main:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 144
        lea     rdx, [rbp-112]
        lea     rax, [rbp-80]
        mov     rsi, rdx
        mov     rdi, rax
        call    get_data
        lea     rdx, [rbp-144]
        lea     rcx, [rbp-112]
        lea     rax, [rbp-80]
        mov     rsi, rcx
        mov     rdi, rax
        call    solve
        mov     eax, 0
        leave
        ret
.LC0:
        .long   0
        .long   1072693248
.LC1:
        .long   0
        .long   -1069187072
.LC2:
        .long   0
        .long   1077084160
.LC3:
        .long   0
        .long   1079263232
.LC4:
        .long   0
        .long   1080172544
.LC5:
        .long   0
        .long   -1067401216
.LC6:
        .long   0
        .long   1079558144
.LC7:
        .long   0
        .long   1076363264
.LC8:
        .long   0
        .long   1081364480
.LC9:
        .long   0
        .long   1083111424
.LC10:
        .long   0
        .long   -1066868736
.LC11:
        .long   0
        .long   1080729600