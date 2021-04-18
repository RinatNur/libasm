segment .text
    global  _ft_strlen

_ft_strlen:
    mov		rax,	0
    test    rdi,    rdi
    jz      re
.loop:
	cmp     BYTE [rdi+rax], 0
	jz      re
    inc		rax
	jne     .loop
re:
	ret