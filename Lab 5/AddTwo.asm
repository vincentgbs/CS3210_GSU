; AddTwo.asm - adds two 32-bit integers.
; Chapter 3 example

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
	Xval sdword 26
	Yval dword 30
	Zval dword 40

.code
main proc
	mov ebx, Yval
	add ebx, Zval
	sub Xval, ebx
	mov eax, Xval

	invoke ExitProcess,0
main endp
end main