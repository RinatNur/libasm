section .text
	global _ft_write
    extern ___error

_ft_write:
	mov rax, 0x2000004
    syscall
	jc exit_error
	ret

exit_error:
	push	rax             ;код шибки
	call	___error
	pop		r12             ;
	mov		[rax],	r12
	mov		rax,	-1
	ret
		