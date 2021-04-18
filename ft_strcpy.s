section .text
    global  _ft_strcpy

_ft_strcpy:
    mov     rcx, -1

.loop:
    inc     rcx
    cmp     byte [rsi + rcx], 0 ;if src[i] == 0
    je      .re
    mov     bl, byte [rsi + rcx]
    mov     byte [rdi + rcx], bl ; dst[i] = src[i]
    jmp     .loop

.re:
    mov     byte [rdi + rcx], 0
    mov     rax, rdi
    ret

