; AddTwo.asm - empty template for 32bit projects
; Chapter 3 example

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data

.code
main proc
	call example1
	add al, 1
	invoke ExitProcess, 0
main endp
example1 proc
	push 6
	push 5
	call addtwo
	add esp, 8  ;comment this line and see what happens
	ret
example1 endp 
addtwo proc
	push ebp
	mov ebp,esp
	mov eax, [ebp+12]
	add eax, [ebp+8]
	pop ebp
	ret
addtwo endp
end main
