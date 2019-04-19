; AddTwo.asm - adds two 32-bit integers.
; Chapter 3 example

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
	myBytes BYTE 10h,20h,30h,40h 
	myWords WORD 8Ah,3Bh,72h,44h,66h 
	myDoubles DWORD 1,2,3,4,5 
	myPointer DWORD myDoubles

.code
main proc
	mov esi,OFFSET myBytes 
	mov al,[esi] ; indirect access	; a. AL = 10
	mov al,[esi+3]					; b. AL = 40
	mov esi,OFFSET myWords + 2
	mov ax,[esi]					; c. AX = 003B
	mov edi,8 ; indexed Operand 
	mov edx,[myDoubles + edi]		; d. EDX = 00000003
	mov edx,myDoubles[edi]			; e. EDX = 00000003
	mov ebx,myPointer
	mov eax,[ebx+4]					; f. EAX = 00000002

	invoke ExitProcess,0
main endp
end main