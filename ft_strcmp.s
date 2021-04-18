section .text
    global  _ft_strcmp

_ft_strcmp:
    push    rcx
    mov     rcx,    -1
    xor     rax, rax
    xor     rbx, rbx
    jmp     .loop

.loop:
    inc     rcx
    mov     al,    BYTE[rdi + rcx]
    mov     bl,    BYTE[rsi + rcx]
    cmp     al,     0
    je      .re
    cmp     bl,     0
    je      .re
    cmp     al,     bl
    je      .loop
    jmp     .re
.re:
    pop     rcx
    sub     rax,    rbx
    ret

