; AddTwo.asm - adds two 32-bit integers.
; Chapter 3 example

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
	var1 DWORD 40
	var2 DWORD 13
	var4 DWORD ?

.code
main proc

	mov eax,var1
	mov ebx,5
	mul ebx			; EDX:EAX = product
	mov ebx,var2	; prevent changes to var other than var4
	sub ebx,3
	div ebx			; EAX = quotient
	mov var4,eax

	invoke ExitProcess,0
main endp
end main