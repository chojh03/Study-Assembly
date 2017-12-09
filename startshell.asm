section .data
	msg db "/bin/sh"

section .text
	global_start

_start:

	mov rax,59
	mov rdi,msg
	xor rsi,rsi
	xor rdx,rdx
	syscall

	mov rax, 60
	xor rdi, rdi 
	syscall
