        .file   "C.c"
        .intel_syntax noprefix
        .text
        .globl  tol
        .section        .rodata
        .align 8
        .type   tol, @object
        .size   tol, 8
tol:
        .long   2696277389
        .long   1051772663
        .text
        .globl  fx
        .type   fx, @function
fx:
        endbr64
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        movsd   QWORD PTR -8[rbp], xmm0
        movsd   xmm0, QWORD PTR -8[rbp]
        movq    xmm1, QWORD PTR .LC0[rip]
        xorpd   xmm0, xmm1
        movsd   xmm1, QWORD PTR .LC1[rip]
        divsd   xmm0, xmm1
        call    exp@PLT
        leave
        ret
        .size   fx, .-fx
        .globl  dfx
        .type   dfx, @function
dfx:
        endbr64
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        movsd   QWORD PTR -8[rbp], xmm0
        movsd   xmm0, QWORD PTR -8[rbp]
        movq    xmm1, QWORD PTR .LC0[rip]
        xorpd   xmm0, xmm1
        movsd   xmm1, QWORD PTR .LC1[rip]
        divsd   xmm0, xmm1
        call    exp@PLT
        movq    xmm1, QWORD PTR .LC0[rip]
        xorpd   xmm0, xmm1
        movsd   xmm1, QWORD PTR .LC1[rip]
        divsd   xmm0, xmm1
        leave
        ret
        .size   dfx, .-dfx
        .globl  simps
        .type   simps, @function
simps:
        endbr64
        push    rbp
        mov     rbp, rsp
        sub     rsp, 112
        movsd   QWORD PTR -72[rbp], xmm0
        movsd   QWORD PTR -80[rbp], xmm1
        movsd   QWORD PTR -88[rbp], xmm2
        mov     QWORD PTR -96[rbp], rdi
        mov     DWORD PTR -64[rbp], 2
        movsd   xmm0, QWORD PTR -80[rbp]
        subsd   xmm0, QWORD PTR -72[rbp]
        cvtsi2sd        xmm1, DWORD PTR -64[rbp]
        divsd   xmm0, xmm1
        movsd   QWORD PTR -40[rbp], xmm0
        movsd   xmm0, QWORD PTR -72[rbp]
        addsd   xmm0, QWORD PTR -40[rbp]
        call    fx
        movq    rax, xmm0
        mov     QWORD PTR -56[rbp], rax
        pxor    xmm0, xmm0
        movsd   QWORD PTR -48[rbp], xmm0
        mov     rax, QWORD PTR -72[rbp]
        movq    xmm0, rax
        call    fx
        movsd   QWORD PTR -104[rbp], xmm0
        mov     rax, QWORD PTR -80[rbp]
        movq    xmm0, rax
        call    fx
        addsd   xmm0, QWORD PTR -104[rbp]
        movsd   QWORD PTR -32[rbp], xmm0
        mov     rax, QWORD PTR -72[rbp]
        movq    xmm0, rax
        call    dfx
        movsd   QWORD PTR -104[rbp], xmm0
        mov     rax, QWORD PTR -80[rbp]
        movq    xmm0, rax
        call    dfx
        movsd   xmm3, QWORD PTR -104[rbp]
        subsd   xmm3, xmm0
        movapd  xmm0, xmm3
        movsd   QWORD PTR -24[rbp], xmm0
        movsd   xmm1, QWORD PTR -56[rbp]
        movsd   xmm0, QWORD PTR .LC3[rip]
        mulsd   xmm0, xmm1
        addsd   xmm0, QWORD PTR -32[rbp]
        mulsd   xmm0, QWORD PTR -40[rbp]
        movsd   xmm1, QWORD PTR .LC4[rip]
        divsd   xmm0, xmm1
        mov     rax, QWORD PTR -96[rbp]
        movsd   QWORD PTR [rax], xmm0
.L10:
        sal     DWORD PTR -64[rbp]
        mov     rax, QWORD PTR -96[rbp]
        movsd   xmm0, QWORD PTR [rax]
        movsd   QWORD PTR -16[rbp], xmm0
        movsd   xmm0, QWORD PTR -80[rbp]
        subsd   xmm0, QWORD PTR -72[rbp]
        cvtsi2sd        xmm1, DWORD PTR -64[rbp]
        divsd   xmm0, xmm1
        movsd   QWORD PTR -40[rbp], xmm0
        movsd   xmm0, QWORD PTR -48[rbp]
        addsd   xmm0, QWORD PTR -56[rbp]
        movsd   QWORD PTR -48[rbp], xmm0
        pxor    xmm0, xmm0
        movsd   QWORD PTR -56[rbp], xmm0
        mov     DWORD PTR -60[rbp], 1
        jmp     .L6
.L7:
        mov     eax, DWORD PTR -60[rbp]
        add     eax, eax
        sub     eax, 1
        cvtsi2sd        xmm0, eax
        mulsd   xmm0, QWORD PTR -40[rbp]
        movsd   xmm1, QWORD PTR -72[rbp]
        addsd   xmm0, xmm1
        movsd   QWORD PTR -8[rbp], xmm0
        mov     rax, QWORD PTR -8[rbp]
        movq    xmm0, rax
        call    fx
        movsd   xmm1, QWORD PTR -56[rbp]
        addsd   xmm0, xmm1
        movsd   QWORD PTR -56[rbp], xmm0
        add     DWORD PTR -60[rbp], 1
.L6:
        mov     eax, DWORD PTR -64[rbp]
        mov     edx, eax
        shr     edx, 31
        add     eax, edx
        sar     eax
        cmp     DWORD PTR -60[rbp], eax
        jle     .L7
        movsd   xmm1, QWORD PTR -32[rbp]
        movsd   xmm0, QWORD PTR .LC5[rip]
        mulsd   xmm1, xmm0
        movsd   xmm2, QWORD PTR -48[rbp]
        movsd   xmm0, QWORD PTR .LC6[rip]
        mulsd   xmm0, xmm2
        addsd   xmm1, xmm0
        movsd   xmm2, QWORD PTR -56[rbp]
        movsd   xmm0, QWORD PTR .LC7[rip]
        mulsd   xmm0, xmm2
        addsd   xmm1, xmm0
        movsd   xmm0, QWORD PTR -24[rbp]
        mulsd   xmm0, QWORD PTR -40[rbp]
        addsd   xmm0, xmm1
        mulsd   xmm0, QWORD PTR -40[rbp]
        movsd   xmm1, QWORD PTR .LC8[rip]
        divsd   xmm0, xmm1
        mov     rax, QWORD PTR -96[rbp]
        movsd   QWORD PTR [rax], xmm0
        mov     rax, QWORD PTR -96[rbp]
        movsd   xmm0, QWORD PTR [rax]
        ucomisd xmm0, QWORD PTR -16[rbp]
        jp      .L11
        ucomisd xmm0, QWORD PTR -16[rbp]
        je      .L8
.L11:
        mov     rax, QWORD PTR -96[rbp]
        movsd   xmm0, QWORD PTR [rax]
        subsd   xmm0, QWORD PTR -16[rbp]
        movq    xmm1, QWORD PTR .LC9[rip]
        andpd   xmm1, xmm0
        mov     rax, QWORD PTR -96[rbp]
        movsd   xmm0, QWORD PTR [rax]
        mulsd   xmm0, QWORD PTR -88[rbp]
        movq    xmm2, QWORD PTR .LC9[rip]
        andpd   xmm0, xmm2
        comisd  xmm0, xmm1
        jnb     .L10
.L8:
        nop
        leave
        ret
        .size   simps, .-simps
        .globl  main
        .type   main, @function
main:
        endbr64
        push    rbp
        mov     rbp, rsp
        sub     rsp, 32
        mov     rax, QWORD PTR fs:40
        mov     QWORD PTR -8[rbp], rax
        xor     eax, eax
        movsd   xmm0, QWORD PTR .LC10[rip]
        movsd   QWORD PTR -24[rbp], xmm0
        movsd   xmm0, QWORD PTR .LC11[rip]
        movsd   QWORD PTR -16[rbp], xmm0
        pxor    xmm0, xmm0
        movsd   QWORD PTR -32[rbp], xmm0
        movsd   xmm1, QWORD PTR .LC12[rip]
        lea     rdx, -32[rbp]
        movsd   xmm0, QWORD PTR -16[rbp]
        mov     rax, QWORD PTR -24[rbp]
        mov     rdi, rdx
        movapd  xmm2, xmm1
        movapd  xmm1, xmm0
        movq    xmm0, rax
        call    simps
        mov     eax, 0
        mov     rcx, QWORD PTR -8[rbp]
        xor     rcx, QWORD PTR fs:40
        je      .L14
        call    __stack_chk_fail@PLT
.L14:
        leave
        ret
        .size   main, .-main
        .section        .rodata
        .align 16
.LC0:
        .long   0
        .long   -2147483648
        .long   0
        .long   0
        .align 8
.LC1:
        .long   0
        .long   1073741824
        .align 8
.LC3:
        .long   0
        .long   1074790400
        .align 8
.LC4:
        .long   0
        .long   1074266112
        .align 8
.LC5:
        .long   0
        .long   1075576832
        .align 8
.LC6:
        .long   0
        .long   1076625408
        .align 8
.LC7:
        .long   0
        .long   1076887552
        .align 8
.LC8:
        .long   0
        .long   1076756480
        .align 16
.LC9:
        .long   4294967295
        .long   2147483647
        .long   0
        .long   0
        .align 8
.LC10:
        .long   0
        .long   1072693248
        .align 8
.LC11:
        .long   0
        .long   1075970048
        .align 8
.LC12:
        .long   2696277389
        .long   1051772663
        .ident  "GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
        .section        .note.GNU-stack,"",@progbits
        .section        .note.gnu.property,"a"
        .align 8
        .long    1f - 0f
        .long    4f - 1f
        .long    5
0:
        .string  "GNU"
1:
        .align 8
        .long    0xc0000002
        .long    3f - 2f
2:
        .long    0x3
3:
        .align 8
4: