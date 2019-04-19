; AddTwo.asm - adds two 32-bit integers.
; Chapter 3 example

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
	myBytes BYTE 10h,20h,30h,40h ; [10h, 20h]...
	myWords WORD 8Ah,3Bh,72h,44h,66h ; ...[0044]h, 0066h
	myDoubles DWORD 1,2,3,4,5 ; 00[0000]01, 00[0000]02...
	myPointer DWORD myDoubles

.code
main proc
	mov esi, OFFSET myBytes
	mov ax, [esi]			; a. AX = 2010
	mov esi, myPointer
	mov ax, [esi+2]			; c. AX = 0000
	mov ax, [esi+6]			; d. AX = 0000
	mov ax, [esi-4]			; e. AX = 0044


	invoke ExitProcess,0
main endp
end main