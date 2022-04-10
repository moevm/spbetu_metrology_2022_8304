swap(int*, int*):
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
sort(int*, int):
        push    rbp
        mov     rbp, rsp
        sub     rsp, 208
        mov     QWORD PTR [rbp-200], rdi
        mov     DWORD PTR [rbp-204], esi
        mov     DWORD PTR [rbp-112], 0
        mov     eax, DWORD PTR [rbp-204]
        sub     eax, 1
        mov     DWORD PTR [rbp-192], eax
        mov     DWORD PTR [rbp-12], 0
        jmp     .L3
.L24:
        mov     eax, DWORD PTR [rbp-12]
        cdqe
        mov     edx, DWORD PTR [rbp-112+rax*4]
        mov     eax, DWORD PTR [rbp-12]
        cdqe
        mov     eax, DWORD PTR [rbp-192+rax*4]
        cmp     edx, eax
        jl      .L4
        sub     DWORD PTR [rbp-12], 1
        jmp     .L3
.L4:
        mov     eax, DWORD PTR [rbp-12]
        cdqe
        mov     eax, DWORD PTR [rbp-112+rax*4]
        mov     DWORD PTR [rbp-4], eax
        mov     eax, DWORD PTR [rbp-12]
        cdqe
        mov     eax, DWORD PTR [rbp-192+rax*4]
        mov     DWORD PTR [rbp-8], eax
        mov     eax, DWORD PTR [rbp-8]
        cdqe
        lea     rdx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-200]
        add     rax, rdx
        mov     eax, DWORD PTR [rax]
        pxor    xmm0, xmm0
        cvtsi2ss        xmm0, eax
        movss   DWORD PTR [rbp-16], xmm0
        mov     edx, DWORD PTR [rbp-4]
        mov     eax, DWORD PTR [rbp-8]
        add     eax, edx
        mov     edx, eax
        shr     edx, 31
        add     eax, edx
        sar     eax
        mov     DWORD PTR [rbp-20], eax
        mov     eax, DWORD PTR [rbp-8]
        sub     eax, DWORD PTR [rbp-4]
        cmp     eax, 5
        jle     .L5
        mov     eax, DWORD PTR [rbp-20]
        cdqe
        lea     rdx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-200]
        add     rax, rdx
        mov     eax, DWORD PTR [rax]
        pxor    xmm1, xmm1
        cvtsi2ss        xmm1, eax
        movss   xmm0, DWORD PTR [rbp-16]
        comiss  xmm0, xmm1
        jbe     .L6
        mov     eax, DWORD PTR [rbp-20]
        cdqe
        lea     rdx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-200]
        add     rax, rdx
        mov     edx, DWORD PTR [rax]
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        lea     rcx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-200]
        add     rax, rcx
        mov     eax, DWORD PTR [rax]
        cmp     edx, eax
        jg      .L8
.L6:
        mov     eax, DWORD PTR [rbp-20]
        cdqe
        lea     rdx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-200]
        add     rax, rdx
        mov     eax, DWORD PTR [rax]
        pxor    xmm0, xmm0
        cvtsi2ss        xmm0, eax
        comiss  xmm0, DWORD PTR [rbp-16]
        jbe     .L9
        mov     eax, DWORD PTR [rbp-20]
        cdqe
        lea     rdx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-200]
        add     rax, rdx
        mov     edx, DWORD PTR [rax]
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        lea     rcx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-200]
        add     rax, rcx
        mov     eax, DWORD PTR [rax]
        cmp     edx, eax
        jge     .L9
.L8:
        mov     eax, DWORD PTR [rbp-8]
        cdqe
        lea     rdx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-200]
        add     rdx, rax
        mov     eax, DWORD PTR [rbp-20]
        cdqe
        lea     rcx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-200]
        add     rax, rcx
        mov     rsi, rdx
        mov     rdi, rax
        call    swap(int*, int*)
        jmp     .L5
.L9:
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        lea     rdx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-200]
        add     rax, rdx
        mov     edx, DWORD PTR [rax]
        mov     eax, DWORD PTR [rbp-20]
        cdqe
        lea     rcx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-200]
        add     rax, rcx
        mov     eax, DWORD PTR [rax]
        cmp     edx, eax
        jge     .L12
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        lea     rdx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-200]
        add     rax, rdx
        mov     eax, DWORD PTR [rax]
        pxor    xmm0, xmm0
        cvtsi2ss        xmm0, eax
        comiss  xmm0, DWORD PTR [rbp-16]
        ja      .L13
.L12:
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        lea     rdx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-200]
        add     rax, rdx
        mov     edx, DWORD PTR [rax]
        mov     eax, DWORD PTR [rbp-20]
        cdqe
        lea     rcx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-200]
        add     rax, rcx
        mov     eax, DWORD PTR [rax]
        cmp     edx, eax
        jle     .L5
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        lea     rdx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-200]
        add     rax, rdx
        mov     eax, DWORD PTR [rax]
        pxor    xmm1, xmm1
        cvtsi2ss        xmm1, eax
        movss   xmm0, DWORD PTR [rbp-16]
        comiss  xmm0, xmm1
        jbe     .L5
.L13:
        mov     eax, DWORD PTR [rbp-8]
        cdqe
        lea     rdx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-200]
        add     rdx, rax
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        lea     rcx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-200]
        add     rax, rcx
        mov     rsi, rdx
        mov     rdi, rax
        call    swap(int*, int*)
.L5:
        mov     eax, DWORD PTR [rbp-8]
        cdqe
        lea     rdx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-200]
        add     rax, rdx
        mov     eax, DWORD PTR [rax]
        pxor    xmm0, xmm0
        cvtsi2ss        xmm0, eax
        movss   DWORD PTR [rbp-16], xmm0
        jmp     .L15
.L17:
        add     DWORD PTR [rbp-4], 1
.L16:
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        lea     rdx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-200]
        add     rax, rdx
        mov     eax, DWORD PTR [rax]
        pxor    xmm1, xmm1
        cvtsi2ss        xmm1, eax
        movss   xmm0, DWORD PTR [rbp-16]
        comiss  xmm0, xmm1
        ja      .L17
        sub     DWORD PTR [rbp-8], 1
        jmp     .L18
.L20:
        sub     DWORD PTR [rbp-8], 1
.L18:
        mov     eax, DWORD PTR [rbp-4]
        cmp     eax, DWORD PTR [rbp-8]
        jge     .L19
        mov     eax, DWORD PTR [rbp-8]
        cdqe
        lea     rdx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-200]
        add     rax, rdx
        mov     eax, DWORD PTR [rax]
        pxor    xmm0, xmm0
        cvtsi2ss        xmm0, eax
        comiss  xmm0, DWORD PTR [rbp-16]
        ja      .L20
.L19:
        mov     eax, DWORD PTR [rbp-4]
        cmp     eax, DWORD PTR [rbp-8]
        jge     .L15
        mov     eax, DWORD PTR [rbp-8]
        cdqe
        lea     rdx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-200]
        add     rdx, rax
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        lea     rcx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-200]
        add     rax, rcx
        mov     rsi, rdx
        mov     rdi, rax
        call    swap(int*, int*)
.L15:
        mov     eax, DWORD PTR [rbp-4]
        cmp     eax, DWORD PTR [rbp-8]
        jl      .L16
        mov     eax, DWORD PTR [rbp-12]
        cdqe
        mov     eax, DWORD PTR [rbp-192+rax*4]
        mov     DWORD PTR [rbp-8], eax
        mov     eax, DWORD PTR [rbp-8]
        cdqe
        lea     rdx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-200]
        add     rdx, rax
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        lea     rcx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-200]
        add     rax, rcx
        mov     rsi, rdx
        mov     rdi, rax
        call    swap(int*, int*)
        mov     eax, DWORD PTR [rbp-12]
        cdqe
        mov     ecx, DWORD PTR [rbp-112+rax*4]
        mov     eax, DWORD PTR [rbp-4]
        sub     eax, ecx
        mov     edx, eax
        mov     eax, DWORD PTR [rbp-12]
        cdqe
        mov     eax, DWORD PTR [rbp-192+rax*4]
        sub     eax, DWORD PTR [rbp-4]
        cmp     edx, eax
        jl      .L22
        mov     eax, DWORD PTR [rbp-12]
        lea     ecx, [rax+1]
        mov     eax, DWORD PTR [rbp-12]
        cdqe
        mov     edx, DWORD PTR [rbp-112+rax*4]
        movsx   rax, ecx
        mov     DWORD PTR [rbp-112+rax*4], edx
        mov     eax, DWORD PTR [rbp-12]
        lea     ecx, [rax+1]
        mov     eax, DWORD PTR [rbp-4]
        lea     edx, [rax-1]
        movsx   rax, ecx
        mov     DWORD PTR [rbp-192+rax*4], edx
        mov     eax, DWORD PTR [rbp-4]
        lea     edx, [rax+1]
        mov     eax, DWORD PTR [rbp-12]
        cdqe
        mov     DWORD PTR [rbp-112+rax*4], edx
        jmp     .L23
.L22:
        mov     eax, DWORD PTR [rbp-12]
        lea     ecx, [rax+1]
        mov     eax, DWORD PTR [rbp-4]
        lea     edx, [rax+1]
        movsx   rax, ecx
        mov     DWORD PTR [rbp-112+rax*4], edx
        mov     eax, DWORD PTR [rbp-12]
        lea     ecx, [rax+1]
        mov     eax, DWORD PTR [rbp-12]
        cdqe
        mov     edx, DWORD PTR [rbp-192+rax*4]
        movsx   rax, ecx
        mov     DWORD PTR [rbp-192+rax*4], edx
        mov     eax, DWORD PTR [rbp-4]
        lea     edx, [rax-1]
        mov     eax, DWORD PTR [rbp-12]
        cdqe
        mov     DWORD PTR [rbp-192+rax*4], edx
.L23:
        add     DWORD PTR [rbp-12], 1
.L3:
        cmp     DWORD PTR [rbp-12], 0
        jns     .L24
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
        mov     DWORD PTR [rbp-28], 80
        mov     eax, DWORD PTR [rbp-28]
        movsx   rdx, eax
        sub     rdx, 1
        mov     QWORD PTR [rbp-40], rdx
        movsx   rdx, eax
        mov     r8, rdx
        mov     r9d, 0
        movsx   rdx, eax
        mov     rsi, rdx
        mov     edi, 0
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
        jmp     .L28
.L29:
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
.L28:
        mov     eax, DWORD PTR [rbp-20]
        cmp     eax, DWORD PTR [rbp-28]
        jl      .L29
        mov     edx, DWORD PTR [rbp-28]
        mov     rax, QWORD PTR [rbp-48]
        mov     esi, edx
        mov     rdi, rax
        call    sort(int*, int)
        mov     DWORD PTR [rbp-24], 0
        jmp     .L30
.L31:
        mov     rax, QWORD PTR [rbp-48]
        mov     edx, DWORD PTR [rbp-24]
        movsx   rdx, edx
        mov     eax, DWORD PTR [rax+rdx*4]
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC0
        mov     eax, 0
        call    printf
        add     DWORD PTR [rbp-24], 1
.L30:
        mov     eax, DWORD PTR [rbp-24]
        cmp     eax, DWORD PTR [rbp-28]
        jl      .L31
        mov     eax, 0
        mov     rsp, rbx
        mov     rbx, QWORD PTR [rbp-8]
        leave
        ret