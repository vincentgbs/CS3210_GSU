; AddTwo.asm - empty template for 32bit projects
include C:\Irvine\Lib32\Irvine32_Library\Irvine32.inc

; Already included in Irvine32.inc
;.386
;.model flat,stdcall
;.stack 4096
ExitProcess proto,dwExitCode:dword

.code
main proc

	mov ebx, 1431
	mov ecx, 63

	call AddTwo
	call WriteInt
	call Crlf

	invoke ExitProcess,0
main endp

AddTwo PROC
	mov eax, 0
	add eax, ebx
	add eax, ecx
	ret
AddTwo ENDP
end main