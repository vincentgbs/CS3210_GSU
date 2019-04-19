; AddTwo.asm - empty template for 32bit projects
; Chapter 3 example

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data

	aName BYTE "Abraham Lincoln",0
	nameSize = ($ - aName) - 1

.code
main proc

; Push the name on the stack
	mov ecx, nameSize
	mov esi, 0
L1: movzx eax, aName[esi]
	push eax
	inc esi
	loop L1

; Pop the name from stack, store in array
	mov ecx, nameSize
	mov esi, 0
L2: pop eax
	mov aName[esi], al
	inc esi
	loop L2

	invoke ExitProcess,0
main endp
end main