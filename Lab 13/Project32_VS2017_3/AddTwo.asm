; AddTwo.asm - empty template for 32bit projects
; Chapter 3 example
INCLUDE Irvine32.inc

;.386
;.model flat,stdcall
;.stack 4096
ExitProcess proto,dwExitCode:dword

.data

.code
main proc
	push 13
	call Factorial
	call WriteDec
	call Crlf
	exit
main endp
Factorial PROC
	push ebp
	mov ebp, esp
	mov eax, [ebp+8]
	cmp eax, 0
	ja L1
	mov eax, 1
	jmp L2
L1: dec eax
	push eax
	call Factorial
ReturnFact:
	mov ebx, [ebp+8]
	mul ebx
L2: pop ebp
	ret 4
Factorial ENDP
end main