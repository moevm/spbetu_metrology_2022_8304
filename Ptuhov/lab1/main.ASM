max:
        .long   200
swap:
        push    rbp
        mov     rbp, rsp
        mov     QWORD PTR [rbp-24], rdi
        mov     QWORD PTR [rbp-32], rsi
        mov     rax, QWORD PTR [rbp-24]
        mov     eax, DWORD PTR [rax]
        mov     DWORD PTR [rbp-4], eax
        mov     rax, QWORD PTR [rbp-32]
        mov     edx, DWORD PTR [rax]
        mov     rax, QWORD PTR [rbp-24]
        mov     DWORD PTR [rax], edx
        mov     rax, QWORD PTR [rbp-32]
        mov     edx, DWORD PTR [rbp-4]
        mov     DWORD PTR [rax], edx
        nop
        pop     rbp
        ret
sort:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 448
        mov     QWORD PTR [rbp-440], rdi
        mov     DWORD PTR [rbp-444], esi
        mov     DWORD PTR [rbp-224], 0
        mov     eax, DWORD PTR [rbp-444]
        sub     eax, 1
        mov     DWORD PTR [rbp-432], eax
        mov     DWORD PTR [rbp-4], 0
        jmp     .L3
.L20:
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        mov     edx, DWORD PTR [rbp-224+rax*4]
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        mov     eax, DWORD PTR [rbp-432+rax*4]
        cmp     edx, eax
        jl      .L4
        sub     DWORD PTR [rbp-4], 1
        jmp     .L3
.L4:
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        mov     eax, DWORD PTR [rbp-224+rax*4]
        mov     DWORD PTR [rbp-8], eax
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        mov     eax, DWORD PTR [rbp-432+rax*4]
        mov     DWORD PTR [rbp-12], eax
        mov     eax, DWORD PTR [rbp-12]
        cdqe
        lea     rdx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-440]
        add     rax, rdx
        mov     eax, DWORD PTR [rax]
        mov     DWORD PTR [rbp-16], eax
        mov     edx, DWORD PTR [rbp-8]
        mov     eax, DWORD PTR [rbp-12]
        add     eax, edx
        mov     edx, eax
        shr     edx, 31
        add     eax, edx
        sar     eax
        mov     DWORD PTR [rbp-20], eax
        mov     eax, DWORD PTR [rbp-12]
        sub     eax, DWORD PTR [rbp-8]
        cmp     eax, 5
        jle     .L5
        mov     eax, DWORD PTR [rbp-20]
        cdqe
        lea     rdx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-440]
        add     rax, rdx
        mov     eax, DWORD PTR [rax]
        cmp     DWORD PTR [rbp-16], eax
        jle     .L6
        mov     eax, DWORD PTR [rbp-20]
        cdqe
        lea     rdx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-440]
        add     rax, rdx
        mov     edx, DWORD PTR [rax]
        mov     eax, DWORD PTR [rbp-8]
        cdqe
        lea     rcx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-440]
        add     rax, rcx
        mov     eax, DWORD PTR [rax]
        cmp     edx, eax
        jg      .L7
.L6:
        mov     eax, DWORD PTR [rbp-20]
        cdqe
        lea     rdx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-440]
        add     rax, rdx
        mov     eax, DWORD PTR [rax]
        cmp     DWORD PTR [rbp-16], eax
        jge     .L8
        mov     eax, DWORD PTR [rbp-20]
        cdqe
        lea     rdx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-440]
        add     rax, rdx
        mov     edx, DWORD PTR [rax]
        mov     eax, DWORD PTR [rbp-8]
        cdqe
        lea     rcx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-440]
        add     rax, rcx
        mov     eax, DWORD PTR [rax]
        cmp     edx, eax
        jge     .L8
.L7:
        mov     eax, DWORD PTR [rbp-12]
        cdqe
        lea     rdx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-440]
        add     rdx, rax
        mov     eax, DWORD PTR [rbp-20]
        cdqe
        lea     rcx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-440]
        add     rax, rcx
        mov     rsi, rdx
        mov     rdi, rax
        call    swap
        jmp     .L5
.L8:
        mov     eax, DWORD PTR [rbp-8]
        cdqe
        lea     rdx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-440]
        add     rax, rdx
        mov     edx, DWORD PTR [rax]
        mov     eax, DWORD PTR [rbp-20]
        cdqe
        lea     rcx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-440]
        add     rax, rcx
        mov     eax, DWORD PTR [rax]
        cmp     edx, eax
        jge     .L9
        mov     eax, DWORD PTR [rbp-8]
        cdqe
        lea     rdx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-440]
        add     rax, rdx
        mov     eax, DWORD PTR [rax]
        cmp     DWORD PTR [rbp-16], eax
        jl      .L10
.L9:
        mov     eax, DWORD PTR [rbp-8]
        cdqe
        lea     rdx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-440]
        add     rax, rdx
        mov     edx, DWORD PTR [rax]
        mov     eax, DWORD PTR [rbp-20]
        cdqe
        lea     rcx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-440]
        add     rax, rcx
        mov     eax, DWORD PTR [rax]
        cmp     edx, eax
        jle     .L5
        mov     eax, DWORD PTR [rbp-8]
        cdqe
        lea     rdx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-440]
        add     rax, rdx
        mov     eax, DWORD PTR [rax]
        cmp     DWORD PTR [rbp-16], eax
        jle     .L5
.L10:
        mov     eax, DWORD PTR [rbp-12]
        cdqe
        lea     rdx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-440]
        add     rdx, rax
        mov     eax, DWORD PTR [rbp-8]
        cdqe
        lea     rcx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-440]
        add     rax, rcx
        mov     rsi, rdx
        mov     rdi, rax
        call    swap
.L5:
        mov     eax, DWORD PTR [rbp-12]
        cdqe
        lea     rdx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-440]
        add     rax, rdx
        mov     eax, DWORD PTR [rax]
        mov     DWORD PTR [rbp-16], eax
        jmp     .L11
.L13:
        add     DWORD PTR [rbp-8], 1
.L12:
        mov     eax, DWORD PTR [rbp-8]
        cdqe
        lea     rdx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-440]
        add     rax, rdx
        mov     eax, DWORD PTR [rax]
        cmp     DWORD PTR [rbp-16], eax
        jg      .L13
        sub     DWORD PTR [rbp-12], 1
        jmp     .L14
.L16:
        sub     DWORD PTR [rbp-12], 1
.L14:
        mov     eax, DWORD PTR [rbp-8]
        cmp     eax, DWORD PTR [rbp-12]
        jge     .L15
        mov     eax, DWORD PTR [rbp-12]
        cdqe
        lea     rdx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-440]
        add     rax, rdx
        mov     eax, DWORD PTR [rax]
        cmp     DWORD PTR [rbp-16], eax
        jl      .L16
.L15:
        mov     eax, DWORD PTR [rbp-8]
        cmp     eax, DWORD PTR [rbp-12]
        jge     .L11
        mov     eax, DWORD PTR [rbp-12]
        cdqe
        lea     rdx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-440]
        add     rdx, rax
        mov     eax, DWORD PTR [rbp-8]
        cdqe
        lea     rcx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-440]
        add     rax, rcx
        mov     rsi, rdx
        mov     rdi, rax
        call    swap
.L11:
        mov     eax, DWORD PTR [rbp-8]
        cmp     eax, DWORD PTR [rbp-12]
        jl      .L12
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        mov     eax, DWORD PTR [rbp-432+rax*4]
        mov     DWORD PTR [rbp-12], eax
        mov     eax, DWORD PTR [rbp-12]
        cdqe
        lea     rdx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-440]
        add     rdx, rax
        mov     eax, DWORD PTR [rbp-8]
        cdqe
        lea     rcx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-440]
        add     rax, rcx
        mov     rsi, rdx
        mov     rdi, rax
        call    swap
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        mov     ecx, DWORD PTR [rbp-224+rax*4]
        mov     eax, DWORD PTR [rbp-8]
        sub     eax, ecx
        mov     edx, eax
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        mov     eax, DWORD PTR [rbp-432+rax*4]
        sub     eax, DWORD PTR [rbp-8]
        cmp     edx, eax
        jl      .L18
        mov     eax, DWORD PTR [rbp-4]
        lea     ecx, [rax+1]
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        mov     edx, DWORD PTR [rbp-224+rax*4]
        movsx   rax, ecx
        mov     DWORD PTR [rbp-224+rax*4], edx
        mov     eax, DWORD PTR [rbp-4]
        lea     ecx, [rax+1]
        mov     eax, DWORD PTR [rbp-8]
        lea     edx, [rax-1]
        movsx   rax, ecx
        mov     DWORD PTR [rbp-432+rax*4], edx
        mov     eax, DWORD PTR [rbp-8]
        lea     edx, [rax+1]
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        mov     DWORD PTR [rbp-224+rax*4], edx
        jmp     .L19
.L18:
        mov     eax, DWORD PTR [rbp-4]
        lea     ecx, [rax+1]
        mov     eax, DWORD PTR [rbp-8]
        lea     edx, [rax+1]
        movsx   rax, ecx
        mov     DWORD PTR [rbp-224+rax*4], edx
        mov     eax, DWORD PTR [rbp-4]
        lea     ecx, [rax+1]
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        mov     edx, DWORD PTR [rbp-432+rax*4]
        movsx   rax, ecx
        mov     DWORD PTR [rbp-432+rax*4], edx
        mov     eax, DWORD PTR [rbp-8]
        lea     edx, [rax-1]
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        mov     DWORD PTR [rbp-432+rax*4], edx
.L19:
        add     DWORD PTR [rbp-4], 1
.L3:
        cmp     DWORD PTR [rbp-4], 0
        jns     .L20
        nop
        nop
        leave
        ret
.LC0:
        .string "%d "
main:
        push    rbp
        mov     rbp, rsp
        push    rbx
        sub     rsp, 40
        mov     rax, rsp
        mov     rbx, rax
        mov     DWORD PTR [rbp-28], 200
        mov     eax, 200
        cdqe
        sub     rax, 1
        mov     QWORD PTR [rbp-40], rax
        mov     eax, 200
        cdqe
        mov     r8, rax
        mov     r9d, 0
        mov     eax, 200
        cdqe
        mov     rsi, rax
        mov     edi, 0
        mov     eax, 200
        cdqe
        lea     rdx, [0+rax*4]
        mov     eax, 16
        sub     rax, 1
        add     rax, rdx
        mov     esi, 16
        mov     edx, 0
        div     rsi
        imul    rax, rax, 16
        sub     rsp, rax
        mov     rax, rsp
        add     rax, 3
        shr     rax, 2
        sal     rax, 2
        mov     QWORD PTR [rbp-48], rax
        mov     edi, 0
        call    time
        mov     edi, eax
        call    srand
        mov     DWORD PTR [rbp-20], 0
        jmp     .L22
.L23:
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
        mov     rax, QWORD PTR [rbp-48]
        mov     ecx, DWORD PTR [rbp-20]
        movsx   rcx, ecx
        mov     DWORD PTR [rax+rcx*4], edx
        add     DWORD PTR [rbp-20], 1
.L22:
        mov     eax, DWORD PTR [rbp-20]
        cmp     eax, DWORD PTR [rbp-28]
        jl      .L23
        mov     edx, DWORD PTR [rbp-28]
        mov     rax, QWORD PTR [rbp-48]
        mov     esi, edx
        mov     rdi, rax
        call    sort
        mov     DWORD PTR [rbp-24], 0
        jmp     .L24
.L25:
        mov     rax, QWORD PTR [rbp-48]
        mov     edx, DWORD PTR [rbp-24]
        movsx   rdx, edx
        mov     eax, DWORD PTR [rax+rdx*4]
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC0
        mov     eax, 0
        call    printf
        add     DWORD PTR [rbp-24], 1
.L24:
        mov     eax, DWORD PTR [rbp-24]
        cmp     eax, DWORD PTR [rbp-28]
        jl      .L25
        mov     eax, 0
        mov     rsp, rbx
        mov     rbx, QWORD PTR [rbp-8]
        leave
        ret