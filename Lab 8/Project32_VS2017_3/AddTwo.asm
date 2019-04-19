; AddTwo.asm - adds two 32-bit integers.
; Chapter 3 example

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
	varB BYTE 65h,31h,02h,05h ; varB BYTE 65h,31h,[02h,05h]
	varW WORD 6543h,1202h ; varW WORD [6543h,12[02]h]
	varD DWORD 12345678h ; varD DWORD 123456[78]h

.code
main proc
	mov ax, WORD PTR [varB+2] ; a. ax = 0502h
	mov bl, BYTE PTR  varD    ; b. bl = 78h
	mov bl, BYTE PTR [varW+2] ; c. bl = 02h
	mov ax, WORD PTR [varD+2] ; d. ax = 1234h
	mov eax, DWORD PTR varW   ; e. eax = 12026543h

	invoke ExitProcess,0
main endp
end main