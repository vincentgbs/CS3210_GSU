; AddTwo.asm - adds two 32-bit integers.
; Chapter 3 example

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
	sum SDWORD 0
	sample SDWORD 50
	array SDWORD 10, 60, 20, 33, 72, 89, 45, 65, 72, 18
	arrayLen = ($ - array) / TYPE array

.code
main proc
	mov eax, 0
	mov edx, sample
	mov esi, 0
	mov ecx, arrayLen
wh:
	cmp esi, ecx
	jge endofloop
	cmp array[esi * 4], edx
	jle increasecounter
	add eax, array[esi * 4]
increasecounter:
	inc esi
	jmp wh
endofloop:
	mov sum, eax

	invoke ExitProcess,0
main endp
end main