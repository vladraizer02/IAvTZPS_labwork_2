%include "syscall.mac"
	SECTION .text
	GLOBAL num2decstr
num2decstr:
	mov rdx, 0
	mov rbx, 10
	div rbx
	mov dl, [rsi + rdx] ; для этих бит выбираем цифру из таблицы
	mov [rdi+rcx-1], dl ; записываем цифру в конец строки
	loop num2decstr ; повторяем, пока rcx>0
	ret
