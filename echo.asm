section .text
	global_start

_start:
	xor rax,rax ; 초기화
	mov rbx,rax
	mov rcx,rax
	mov rdx,rax

	sub rsp,64 ; 버퍼 할당
	
	mov rdi,0
	mov rsi, rsp
	mov rdx,63

	syscall

	mov rax,1
	mov rdi,1
	mov rsi,rsp
	mov rdx,63

	syscall

	mov rax,60
	mov rdi,0
	syscall
