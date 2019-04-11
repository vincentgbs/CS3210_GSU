; AddTwo.asm - adds two 32-bit integers.
; Chapter 3 example

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data

.code
main proc

	mov al,0D4h
	shr al,1 ; a.       al=6A		CF=0		OF=1 
	mov al,0D4h 
	sar al,1 ; b.       al=EA		CF=0		OF=0 
	mov al,0D4h 
	sar al,4 ; c.		al=FD		CF=0		OF=0 
	mov al,0D4h 
	rol al,1 ; d.		al=A9		CF=1		OF=0 
	mov al,0D4h 
	ror al,3 ; e.		al=9A		CF=1		OF=0 


	invoke ExitProcess,0
main endp
end main