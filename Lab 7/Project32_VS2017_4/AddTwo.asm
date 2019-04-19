; AddTwo.asm - adds two 32-bit integers.
; Chapter 3 example

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.code
main proc
	mov ax, 7ff0h
	add ax, 10h		; AX=8000 SF(PL)=1 ZF=0 CF=0 OF=1
	add ah, 1		; AX=8100 SF(PL)=1 ZF=0 CF=0 OF=0
	add ax, 2		; AL=  02 SF(PL)=1 ZF=0 CF=0 OF=0

	invoke ExitProcess,0
main endp
end main