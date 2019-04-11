; AddTwo.asm - empty template for 32bit projects
; Chapter 3 example

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
	var1 SDWORD -2
	var2 SDWORD 20
	var3 SDWORD 2
	var4 SDWORD ?

.code
main proc

	mov eax,var2
	neg eax
	cdq ; extend dword to quadword (with sign)
	idiv var3 ; EDX = remainder, EAX = quotient
	mov ebx,eax ; EBX = saves the right side
	mov eax,-5
	imul var1 ; EDX:EAX = left side
	idiv ebx
	mov var4,eax

	invoke ExitProcess,0
main endp
end main