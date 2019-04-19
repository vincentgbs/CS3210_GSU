; AddTwo.asm - adds two 32-bit integers.
; Chapter 3 example

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
	count BYTE 100
	wVal WORD 2
	wVal2 WORD 4

.code
main proc
	mov ax, wVal
	mov al, count
	mov al, count
	mov bx, wVal
	mov wVal2, bx

	invoke ExitProcess,0
main endp
end main