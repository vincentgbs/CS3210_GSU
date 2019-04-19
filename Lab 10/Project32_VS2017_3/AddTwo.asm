; AddTwo.asm - adds two 32-bit integers.
; Chapter 3 example

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data

.code
main proc

	mov eax, 0
	mov bl, 3
	mov cl, 2
	cmp bl,cl
	ja next
	mov al,50
	mov dl,23
	sub al, dl
	next:

	invoke ExitProcess,0
main endp
end main