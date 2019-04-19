; AddTwo.asm - adds two 32-bit integers.
; Chapter 3 example

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
	temp dword ?

.code
main proc
	mov eax,0
	mov ecx,10			; outer loop counter
	L1:
		mov eax,3
		mov temp,ecx
		mov ecx,5		; inner loop counter
	L2:
		add eax,5
		LOOP L2			; repeat inner loop
		mov ecx,temp
	LOOP L1				; repeat outter loop

	; What is the final value of EAX? 1C

	invoke ExitProcess,0
main endp
end main