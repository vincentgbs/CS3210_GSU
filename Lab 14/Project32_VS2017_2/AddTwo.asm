; AddTwo.asm - empty template for 32bit projects
; Chapter 3 example

INCLUDE Irvine32.inc
INCLUDE macros.inc

;.386
;.model flat,stdcall
;.stack 4096
ExitProcess proto,dwExitCode:dword

.data
	first REAL8 123.456
	second REAL8 10.0
	third REAL8 ?

.code
main proc
	finit	; initialize FPU
; Push two floats and display the stack
	fld first
	fld second
	call ShowFPUStack
; Input two floats and display their product
	mWrite "Please enter a real number: "
	call ReadFloat
	mWrite "Please enter a real number: "
	call ReadFloat
	fmul ST(0), ST(1)
	mWrite "Their product is: "
	call WriteFloat
	call Crlf

	exit
main endp
end main