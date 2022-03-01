swap(float*, float*):
        push    rbp
        mov     rbp, rsp
        mov     QWORD PTR [rbp-24], rdi
        mov     QWORD PTR [rbp-32], rsi
        mov     rax, QWORD PTR [rbp-24]
        movss   xmm0, DWORD PTR [rax]
        movss   DWORD PTR [rbp-4], xmm0
        mov     rax, QWORD PTR [rbp-32]
        movss   xmm0, DWORD PTR [rax]
        mov     rax, QWORD PTR [rbp-24]
        movss   DWORD PTR [rax], xmm0
        mov     rax, QWORD PTR [rbp-32]
        movss   xmm0, DWORD PTR [rbp-4]
        movss   DWORD PTR [rax], xmm0
        nop
        pop     rbp
        ret
shellsort(float*, int):
        push    rbp
        mov     rbp, rsp
        sub     rsp, 32
        mov     QWORD PTR [rbp-24], rdi
        mov     DWORD PTR [rbp-28], esi
        mov     eax, DWORD PTR [rbp-28]
        mov     edx, eax
        shr     edx, 31
        add     eax, edx
        sar     eax
        mov     DWORD PTR [rbp-4], eax
        jmp     .L3
.L11:
        mov     eax, DWORD PTR [rbp-4]
        mov     DWORD PTR [rbp-8], eax
        jmp     .L4
.L10:
        mov     eax, DWORD PTR [rbp-8]
        sub     eax, DWORD PTR [rbp-4]
        mov     DWORD PTR [rbp-12], eax
        jmp     .L5
.L9:
        mov     edx, DWORD PTR [rbp-12]
        mov     eax, DWORD PTR [rbp-4]
        add     eax, edx
        cdqe
        lea     rdx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-24]
        add     rax, rdx
        movss   xmm0, DWORD PTR [rax]
        mov     eax, DWORD PTR [rbp-12]
        cdqe
        lea     rdx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-24]
        add     rax, rdx
        movss   xmm1, DWORD PTR [rax]
        comiss  xmm0, xmm1
        jnb     .L12
        mov     edx, DWORD PTR [rbp-12]
        mov     eax, DWORD PTR [rbp-4]
        add     eax, edx
        cdqe
        lea     rdx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-24]
        add     rdx, rax
        mov     eax, DWORD PTR [rbp-12]
        cdqe
        lea     rcx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-24]
        add     rax, rcx
        mov     rsi, rdx
        mov     rdi, rax
        call    swap(float*, float*)
        mov     eax, DWORD PTR [rbp-4]
        sub     DWORD PTR [rbp-12], eax
.L5:
        cmp     DWORD PTR [rbp-12], 0
        jns     .L9
        jmp     .L8
.L12:
        nop
.L8:
        add     DWORD PTR [rbp-8], 1
.L4:
        mov     eax, DWORD PTR [rbp-8]
        cmp     eax, DWORD PTR [rbp-28]
        jl      .L10
        mov     eax, DWORD PTR [rbp-4]
        mov     edx, eax
        shr     edx, 31
        add     eax, edx
        sar     eax
        mov     DWORD PTR [rbp-4], eax
.L3:
        cmp     DWORD PTR [rbp-4], 0
        jg      .L11
        nop
        nop
        leave
        ret
main:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 816
        mov     DWORD PTR [rbp-8], 200
        movss   xmm0, DWORD PTR .LC0[rip]
        movss   DWORD PTR [rbp-12], xmm0
        mov     DWORD PTR [rbp-4], 0
        jmp     .L14
.L15:
        call    rand
        pxor    xmm0, xmm0
        cvtsi2ss        xmm0, eax
        movss   xmm1, DWORD PTR .LC1[rip]
        divss   xmm1, DWORD PTR [rbp-12]
        divss   xmm0, xmm1
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        movss   DWORD PTR [rbp-816+rax*4], xmm0
        add     DWORD PTR [rbp-4], 1
.L14:
        cmp     DWORD PTR [rbp-4], 199
        jle     .L15
        lea     rax, [rbp-816]
        mov     esi, 200
        mov     rdi, rax
        call    shellsort(float*, int)
        mov     eax, 0
        leave
        ret
.LC0:
        .long   1120403456
.LC1:
        .long   1325400064
