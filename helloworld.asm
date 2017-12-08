section .data ; data section
	hi db "Hello world" ; save helloworld

section .text ; text section
	global_start 

_start: ; start function
	mov rax,1 ; syscall 1, write();
	mov rdi,1 ; file discripter , 1
	mov rsi,hi ; text
	mov rdx, 12 ; length text
	syscall ; fun!

	mov rax, 60 ; syscall 60, exit
	mov rdi, 0 ; exit(0)
	syscall ; fun!
