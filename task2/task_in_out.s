%include "syscall.mac"

	SECTION .text
	GLOBAL _start
_start: ; точка входа в программу – всегда _start
	WRITE msg, len 
	READ buffer, 64
	WRITE msg2, len2 
	WRITE buffer, 64
	EXIT

	SECTION .data ; инициализированные данные
msg: 
	DB "Hello, input string:", 0xa ; байтовый массив, может содержать строки
len EQU $ - msg ; именованная константа len равна длине строки

msg2: 
	DB "You, input string:", 0xa 
len2 EQU $ - msg2 

	SECTION .bss ; не инициализированные данные
buffer:   resb 64 ; резервирование 64 байт 
