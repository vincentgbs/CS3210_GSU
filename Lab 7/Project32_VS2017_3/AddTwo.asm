; AddTwo.asm - adds two 32-bit integers.
; Chapter 3 example

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
	arrayD DWORD 10000h, 20000h, 30000
	
.code
main proc
	mov eax, arrayD+0	; EAX = 00010000
	mov ebx, [arrayD+4]	; EBX = 00020000
	mov edx, [arrayD+8]	; EDX = 00007530
	mov ecx, [arrayD+2]	; ECX = 00000001

	invoke ExitProcess,0
main endp
end main