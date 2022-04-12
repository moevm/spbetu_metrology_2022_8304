done:
        .zero   4
swap(int*, int*):
        push    rbp
        mov     rbp, rsp
        mov     QWORD PTR [rbp-24], rdi
        mov     QWORD PTR [rbp-32], rsi
        mov     rax, QWORD PTR [rbp-24]
        mov     eax, DWORD PTR [rax]
        pxor    xmm0, xmm0
        cvtsi2ss        xmm0, eax
        movss   DWORD PTR [rbp-4], xmm0
        mov     rax, QWORD PTR [rbp-32]
        mov     edx, DWORD PTR [rax]
        mov     rax, QWORD PTR [rbp-24]
        mov     DWORD PTR [rax], edx
        movss   xmm0, DWORD PTR [rbp-4]
        cvttss2si       edx, xmm0
        mov     rax, QWORD PTR [rbp-32]
        mov     DWORD PTR [rax], edx
        nop
        pop     rbp
        ret
sort(int*, int):
        push    rbp
        mov     rbp, rsp
        sub     rsp, 32
        mov     QWORD PTR [rbp-24], rdi
        mov     DWORD PTR [rbp-28], esi
        mov     eax, DWORD PTR [rbp-28]
        mov     DWORD PTR [rbp-4], eax
        jmp     .L3
.L8:
        mov     eax, DWORD PTR [rbp-4]
        mov     edx, eax
        shr     edx, 31
        add     eax, edx
        sar     eax
        mov     DWORD PTR [rbp-4], eax
.L7:
        mov     DWORD PTR [rbp-12], 1
        mov     DWORD PTR [rbp-8], 0
        jmp     .L4
.L6:
        mov     edx, DWORD PTR [rbp-8]
        mov     eax, DWORD PTR [rbp-4]
        add     eax, edx
        mov     DWORD PTR [rbp-16], eax
        mov     eax, DWORD PTR [rbp-8]
        cdqe
        lea     rdx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-24]
        add     rax, rdx
        mov     edx, DWORD PTR [rax]
        mov     eax, DWORD PTR [rbp-16]
        cdqe
        lea     rcx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-24]
        add     rax, rcx
        mov     eax, DWORD PTR [rax]
        cmp     edx, eax
        jle     .L5
        mov     eax, DWORD PTR [rbp-16]
        cdqe
        lea     rdx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-24]
        add     rdx, rax
        mov     eax, DWORD PTR [rbp-8]
        cdqe
        lea     rcx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-24]
        add     rax, rcx
        mov     rsi, rdx
        mov     rdi, rax
        call    swap(int*, int*)
        mov     DWORD PTR [rbp-12], 0
.L5:
        add     DWORD PTR [rbp-8], 1
.L4:
        mov     eax, DWORD PTR [rbp-8]
        cmp     eax, DWORD PTR [rbp-28]
        jl      .L6
        mov     eax, DWORD PTR done[rip]
        test    eax, eax
        jne     .L7
.L3:
        cmp     DWORD PTR [rbp-4], 1
        jg      .L8
        nop
        leave
        ret
.LC0:
        .string "%d\n"
write_arr(int*):
        push    rbp
        mov     rbp, rsp
        sub     rsp, 32
        mov     QWORD PTR [rbp-24], rdi
        mov     DWORD PTR [rbp-4], 0
        jmp     .L11
.L12:
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        lea     rdx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-24]
        add     rax, rdx
        mov     eax, DWORD PTR [rax]
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC0
        mov     eax, 0
        call    printf
        add     DWORD PTR [rbp-4], 1
.L11:
        cmp     DWORD PTR [rbp-4], 9
        jle     .L12
        nop
        nop
        leave
        ret
main:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 48
        mov     DWORD PTR [rbp-8], 10
        mov     edi, 0
        call    time
        mov     edi, eax
        call    srand
        mov     DWORD PTR [rbp-4], 0
        jmp     .L14
.L15:
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
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        mov     DWORD PTR [rbp-48+rax*4], edx
        add     DWORD PTR [rbp-4], 1
.L14:
        mov     eax, DWORD PTR [rbp-4]
        cmp     eax, DWORD PTR [rbp-8]
        jl      .L15
        mov     edx, DWORD PTR [rbp-8]
        lea     rax, [rbp-48]
        mov     esi, edx
        mov     rdi, rax
        call    sort(int*, int)
        lea     rax, [rbp-48]
        mov     rdi, rax
        call    write_arr(int*)
        mov     eax, 0
        leave
        ret