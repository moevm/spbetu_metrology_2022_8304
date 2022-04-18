erf:
        push    rbp
        mov     rbp, rsp
        add     rsp, -128
        movsd   QWORD PTR [rbp-120], xmm0
        movsd   xmm0, QWORD PTR .LC0[rip]
        movsd   QWORD PTR [rbp-8], xmm0
        movsd   xmm0, QWORD PTR .LC0[rip]
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
        movsd   xmm0, QWORD PTR [rbp-120]
        mulsd   xmm0, xmm0
        movsd   QWORD PTR [rbp-96], xmm0
        movsd   xmm0, QWORD PTR [rbp-96]
        mulsd   xmm0, QWORD PTR [rbp-88]
        addsd   xmm0, QWORD PTR [rbp-80]
        mulsd   xmm0, QWORD PTR [rbp-96]
        addsd   xmm0, QWORD PTR [rbp-72]
        mulsd   xmm0, QWORD PTR [rbp-96]
        addsd   xmm0, QWORD PTR [rbp-64]
        mulsd   xmm0, QWORD PTR [rbp-96]
        addsd   xmm0, QWORD PTR [rbp-56]
        mulsd   xmm0, QWORD PTR [rbp-96]
        addsd   xmm0, QWORD PTR [rbp-48]
        mulsd   xmm0, QWORD PTR [rbp-96]
        addsd   xmm0, QWORD PTR [rbp-40]
        mulsd   xmm0, QWORD PTR [rbp-96]
        movsd   xmm1, QWORD PTR [rbp-32]
        addsd   xmm0, xmm1
        movsd   QWORD PTR [rbp-104], xmm0
        movsd   xmm0, QWORD PTR [rbp-96]
        movq    xmm1, QWORD PTR .LC10[rip]
        xorpd   xmm0, xmm1
        movq    rax, xmm0
        movq    xmm0, rax
        call    exp
        addsd   xmm0, xmm0
        movsd   xmm2, QWORD PTR .LC11[rip]
        movapd  xmm1, xmm0
        divsd   xmm1, xmm2
        movsd   xmm0, QWORD PTR [rbp-96]
        mulsd   xmm0, QWORD PTR [rbp-104]
        addsd   xmm0, QWORD PTR [rbp-24]
        mulsd   xmm0, QWORD PTR [rbp-96]
        addsd   xmm0, QWORD PTR [rbp-16]
        mulsd   xmm0, QWORD PTR [rbp-96]
        addsd   xmm0, QWORD PTR [rbp-8]
        movapd  xmm2, xmm0
        mulsd   xmm2, QWORD PTR [rbp-96]
        movsd   xmm0, QWORD PTR .LC12[rip]
        addsd   xmm0, xmm2
        mulsd   xmm0, QWORD PTR [rbp-120]
        mulsd   xmm0, xmm1
        movq    rax, xmm0
        movq    xmm0, rax
        leave
        ret
.LC23:
        .string "%lf\n"
erfc:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 48
        movsd   QWORD PTR [rbp-40], xmm0
        movsd   xmm0, QWORD PTR [rbp-40]
        mulsd   xmm0, xmm0
        movsd   QWORD PTR [rbp-8], xmm0
        movsd   xmm0, QWORD PTR [rbp-8]
        movapd  xmm1, xmm0
        addsd   xmm1, xmm0
        movsd   xmm0, QWORD PTR .LC12[rip]
        divsd   xmm0, xmm1
        movsd   QWORD PTR [rbp-16], xmm0
        movsd   xmm1, QWORD PTR [rbp-16]
        movsd   xmm0, QWORD PTR .LC13[rip]
        mulsd   xmm0, xmm1
        movsd   xmm2, QWORD PTR [rbp-16]
        movsd   xmm1, QWORD PTR .LC14[rip]
        mulsd   xmm1, xmm2
        movsd   xmm3, QWORD PTR [rbp-16]
        movsd   xmm2, QWORD PTR .LC15[rip]
        mulsd   xmm2, xmm3
        movsd   xmm4, QWORD PTR [rbp-16]
        movsd   xmm3, QWORD PTR .LC16[rip]
        mulsd   xmm3, xmm4
        movsd   xmm5, QWORD PTR [rbp-16]
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
        movsd   xmm0, QWORD PTR [rbp-16]
        divsd   xmm0, xmm1
        movsd   QWORD PTR [rbp-24], xmm0
        movsd   xmm1, QWORD PTR [rbp-16]
        movsd   xmm0, QWORD PTR .LC18[rip]
        mulsd   xmm0, xmm1
        movsd   xmm2, QWORD PTR [rbp-16]
        movsd   xmm1, QWORD PTR .LC19[rip]
        mulsd   xmm1, xmm2
        movsd   xmm3, QWORD PTR [rbp-16]
        movsd   xmm2, QWORD PTR .LC20[rip]
        mulsd   xmm2, xmm3
        movsd   xmm4, QWORD PTR [rbp-16]
        movsd   xmm3, QWORD PTR .LC21[rip]
        mulsd   xmm3, xmm4
        movsd   xmm5, QWORD PTR [rbp-24]
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
        movsd   xmm0, QWORD PTR [rbp-16]
        divsd   xmm0, xmm1
        movsd   QWORD PTR [rbp-24], xmm0
        mov     rax, QWORD PTR [rbp-24]
        movq    xmm0, rax
        mov     edi, OFFSET FLAT:.LC23
        mov     eax, 1
        call    printf
        mov     rax, QWORD PTR [rbp-8]
        movq    xmm0, rax
        call    exp
        movq    rax, xmm0
        movq    xmm1, rax
        mulsd   xmm1, QWORD PTR [rbp-40]
        movsd   xmm0, QWORD PTR .LC11[rip]
        mulsd   xmm1, xmm0
        movsd   xmm0, QWORD PTR [rbp-24]
        movapd  xmm2, xmm0
        addsd   xmm2, xmm0
        movsd   xmm0, QWORD PTR .LC12[rip]
        movapd  xmm3, xmm2
        addsd   xmm3, xmm0
        movsd   xmm0, QWORD PTR [rbp-16]
        movapd  xmm2, xmm0
        divsd   xmm2, xmm3
        movsd   xmm0, QWORD PTR .LC12[rip]
        addsd   xmm0, xmm2
        mulsd   xmm1, xmm0
        movsd   xmm0, QWORD PTR .LC12[rip]
        divsd   xmm0, xmm1
        movq    rax, xmm0
        movq    xmm0, rax
        leave
        ret
.LC24:
        .string "Arg? "
.LC25:
        .string "%lf"
.LC28:
        .string "X= %lf ,Erf= %lf ,Erfc= %lf\n"
main:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 48
        mov     DWORD PTR [rbp-36], edi
        mov     QWORD PTR [rbp-48], rsi
        mov     BYTE PTR [rbp-17], 0
.L14:
        mov     edi, OFFSET FLAT:.LC24
        mov     eax, 0
        call    printf
        lea     rax, [rbp-32]
        mov     rsi, rax
        mov     edi, OFFSET FLAT:.LC25
        mov     eax, 0
        call    __isoc99_scanf
        movsd   xmm1, QWORD PTR [rbp-32]
        pxor    xmm0, xmm0
        comisd  xmm0, xmm1
        jbe     .L19
        mov     BYTE PTR [rbp-17], 1
        jmp     .L8
.L19:
        movsd   xmm0, QWORD PTR [rbp-32]
        pxor    xmm1, xmm1
        ucomisd xmm0, xmm1
        jp      .L9
        pxor    xmm1, xmm1
        ucomisd xmm0, xmm1
        jne     .L9
        pxor    xmm0, xmm0
        movsd   QWORD PTR [rbp-8], xmm0
        movsd   xmm0, QWORD PTR .LC12[rip]
        movsd   QWORD PTR [rbp-16], xmm0
        jmp     .L11
.L9:
        movsd   xmm1, QWORD PTR [rbp-32]
        movsd   xmm0, QWORD PTR .LC27[rip]
        comisd  xmm0, xmm1
        jbe     .L20
        mov     rax, QWORD PTR [rbp-32]
        movq    xmm0, rax
        call    erf
        movq    rax, xmm0
        mov     QWORD PTR [rbp-8], rax
        movsd   xmm0, QWORD PTR .LC12[rip]
        subsd   xmm0, QWORD PTR [rbp-8]
        movsd   QWORD PTR [rbp-16], xmm0
        jmp     .L11
.L20:
        mov     rax, QWORD PTR [rbp-32]
        movq    xmm0, rax
        call    erfc
        movq    rax, xmm0
        mov     QWORD PTR [rbp-16], rax
        movsd   xmm0, QWORD PTR .LC12[rip]
        subsd   xmm0, QWORD PTR [rbp-16]
        movsd   QWORD PTR [rbp-8], xmm0
.L11:
        mov     rax, QWORD PTR [rbp-32]
        movsd   xmm1, QWORD PTR [rbp-16]
        movsd   xmm0, QWORD PTR [rbp-8]
        movapd  xmm2, xmm1
        movapd  xmm1, xmm0
        movq    xmm0, rax
        mov     edi, OFFSET FLAT:.LC28
        mov     eax, 3
        call    printf
.L8:
        movzx   eax, BYTE PTR [rbp-17]
        xor     eax, 1
        test    al, al
        jne     .L14
        mov     eax, 0
        leave
        ret
.LC0:
        .long   1461679763
        .long   1071994197
.LC1:
        .long   601740724
        .long   1068728632
.LC2:
        .long   -256263175
        .long   1066489450
.LC3:
        .long   112156783
        .long   1063860193
.LC4:
        .long   -1465145423
        .long   1061095858
.LC5:
        .long   -1886360939
        .long   1058049460
.LC6:
        .long   1685304208
        .long   1054812379
.LC7:
        .long   1473632397
        .long   1051344218
.LC8:
        .long   -1115619875
        .long   1047789051
.LC9:
        .long   793809704
        .long   1044107436
.LC10:
        .long   0
        .long   -2147483648
        .long   0
        .long   0
.LC11:
        .long   -1850413206
        .long   1073503224
.LC12:
        .long   0
        .long   1072693248
.LC13:
        .long   0
        .long   1075838976
.LC14:
        .long   0
        .long   1075970048
.LC15:
        .long   0
        .long   1076101120
.LC16:
        .long   0
        .long   1076232192
.LC17:
        .long   0
        .long   1076363264
.LC18:
        .long   0
        .long   1074266112
.LC19:
        .long   0
        .long   1074790400
.LC20:
        .long   0
        .long   1075052544
.LC21:
        .long   0
        .long   1075314688
.LC22:
        .long   0
        .long   1075576832
.LC27:
        .long   0
        .long   1073217536