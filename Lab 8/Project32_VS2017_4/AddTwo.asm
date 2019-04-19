; AddTwo.asm - adds two 32-bit integers.
; Chapter 3 example

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
	myBytes BYTE 10h,20h,30h,40h
	myWords WORD 3 DUP(?),2000h
	myString BYTE "ABCDE" 

.code
main proc
	mov eax,TYPE myBytes      ; a. eax = 1
	mov eax,LENGTHOF myBytes  ; b. eax = 4
	mov eax,SIZEOF myBytes    ; c. eax = 4
	mov eax,TYPE myWords      ; d. eax = 2
	mov eax,LENGTHOF myWords  ; e. eax = 4
	mov eax,SIZEOF myWords    ; f. eax = 8
	mov eax,SIZEOF myString   ; g. eax = 5

	invoke ExitProcess,0
main endp
end main