n:
        .long   80
i:
        .zero   4
swap(int*, int*):
        push    rbp
        mov     rbp, rsp
        mov     QWORD PTR [rbp-24], rdi
        mov     QWORD PTR [rbp-32], rsi
        mov     rax, QWORD PTR [rbp-24]
        mov     QWORD PTR [rbp-8], rax
        mov     rax, QWORD PTR [rbp-32]
        mov     QWORD PTR [rbp-24], rax
        mov     rax, QWORD PTR [rbp-8]
        mov     QWORD PTR [rbp-32], rax
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
        mov     DWORD PTR [rbp-8], eax
        jmp     .L3
.L8:
        mov     eax, DWORD PTR [rbp-8]
        mov     edx, eax
        shr     edx, 31
        add     eax, edx
        sar     eax
        mov     DWORD PTR [rbp-8], eax
.L7:
        mov     DWORD PTR [rbp-4], 1
        mov     DWORD PTR [rbp-12], 0
        jmp     .L4
.L6:
        mov     edx, DWORD PTR [rbp-12]
        mov     eax, DWORD PTR [rbp-8]
        add     eax, edx
        mov     DWORD PTR [rbp-16], eax
        mov     eax, DWORD PTR [rbp-12]
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
        mov     eax, DWORD PTR [rbp-12]
        cdqe
        lea     rdx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-24]
        add     rdx, rax
        mov     eax, DWORD PTR [rbp-16]
        cdqe
        lea     rcx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-24]
        add     rax, rcx
        mov     rsi, rdx
        mov     rdi, rax
        call    swap(int*, int*)
        mov     DWORD PTR [rbp-4], 0
.L5:
        add     DWORD PTR [rbp-12], 1
.L4:
        mov     eax, DWORD PTR [rbp-12]
        cmp     eax, DWORD PTR [rbp-28]
        jl      .L6
        cmp     DWORD PTR [rbp-4], 0
        jne     .L7
.L3:
        cmp     DWORD PTR [rbp-8], 1
        jg      .L8
        nop
        nop
        leave
        ret
.LC0:
        .string "%d "
write_arr(int*):
        push    rbp
        mov     rbp, rsp
        sub     rsp, 32
        mov     QWORD PTR [rbp-24], rdi
        mov     DWORD PTR [rbp-4], 0
        jmp     .L10
.L11:
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
.L10:
        mov     eax, DWORD PTR n[rip]
        cmp     DWORD PTR [rbp-4], eax
        jl      .L11
        nop
        nop
        leave
        ret
main:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 320
        mov     edi, 0
        call    time
        mov     edi, eax
        call    srand
        mov     DWORD PTR i[rip], 0
        jmp     .L13
.L14:
        call    rand
        mov     ecx, DWORD PTR i[rip]
        movsx   rdx, eax
        imul    rdx, rdx, 1374389535
        shr     rdx, 32
        sar     edx, 5
        mov     esi, eax
        sar     esi, 31
        sub     edx, esi
        imul    esi, edx, 100
        sub     eax, esi
        mov     edx, eax
        movsx   rax, ecx
        mov     DWORD PTR [rbp-320+rax*4], edx
        mov     eax, DWORD PTR i[rip]
        add     eax, 1
        mov     DWORD PTR i[rip], eax
.L13:
        mov     edx, DWORD PTR i[rip]
        mov     eax, DWORD PTR n[rip]
        cmp     edx, eax
        jl      .L14
        mov     edx, DWORD PTR n[rip]
        lea     rax, [rbp-320]
        mov     esi, edx
        mov     rdi, rax
        call    sort(int*, int)
        lea     rax, [rbp-320]
        mov     rdi, rax
        call    write_arr(int*)
        mov     eax, 0
        leave
        ret