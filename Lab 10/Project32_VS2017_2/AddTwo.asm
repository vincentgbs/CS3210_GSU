; AddTwo.asm - adds two 32-bit integers.
; Chapter 3 example

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data

.code
main proc

	;mov eax, 0
	;mov ebx, 0
	;mov ecx, 0
	mov al,00001111b
	test al,00000010b	; a. CF=0	ZF=0	SF=0	al= 0F
	mov bl,00000110b
	cmp bl,00000101b	; b. CF=0	ZF=0	SF=0	bl= 06
	mov cl,00000101b
	cmp cl,00000111b	; c. CF=1	ZF=0	SF=1	cl= 05

	invoke ExitProcess,0
main endp
end main