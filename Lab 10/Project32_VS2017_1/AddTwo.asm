; AddTwo.asm - adds two 32-bit integers.
; Chapter 3 example

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data

.code
main proc

	mov al,01101111b	; 0. Al= 6F
	and al,00101101b	; a. Al= 2D
	mov al,6Dh
	and al,4Ah			; b. Al= 48
	mov al,00001111b	; 0. Al= 0F
	or al,61h			; c. Al= 6F
	mov al,94h
	xor al,37h			; d. Al= A3

	invoke ExitProcess,0
main endp
end main