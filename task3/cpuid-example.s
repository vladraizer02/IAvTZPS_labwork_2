%include "syscall.mac"

	SECTION .text
	GLOBAL _start
	EXTERN num2decstr
_start:
	mov eax, 1
	cpuid ; return processor info in eax
	mov rdi, decstr
	mov rcx, decstr.len 
	mov rsi, digits
	call num2decstr
	WRITE decstr, decstr.len+1
	EXIT

	SECTION .data
digits: db "0123456789"
	align 4
decstr: db "000000000"
.len: equ $ - decstr
	db 0xA
