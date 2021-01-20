section .text
	global print

print:
	xor rbx, rbx

	loop:
		inc rbx
		cmp byte [rax + rbx], 0
		jne loop

	mov rsi, rax
	mov rax, 1
	mov rdi, 1
	mov rdx, rbx
	syscall

	ret