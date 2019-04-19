; AddTwo.asm - adds two 32-bit integers.
; Chapter 3 example

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.code
main proc
	mov	cl,15				
	mov bl,15
	mov dl,31
	add cl,bl
	sub cl,dl
	mov al,cl

	invoke ExitProcess,0
main endp
end main