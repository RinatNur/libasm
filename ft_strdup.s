section .text
    extern  _malloc
    extern  _ft_strlen
    extern  _ft_strcpy
    global  _ft_strdup

_ft_strdup:
    call    _ft_strlen  ;rax = ft_strlen(rdi)
    inc     rax         ;rax += 1 (для \0)
    push    rdi         ;значение str в стек
    mov     rdi,    rax ;rdi = длина новой строки
    call    _malloc     ; malloc(rdi)
    cmp     rax,    0
    jz      err_exit
    pop     rbx         ;rbx = str
    mov     rsi,    rbx
    mov     rdi,    rax
    call    _ft_strcpy
    ret

err_exit:
    mov     rax,    -1
    ret
