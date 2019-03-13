; AddTwo.asm - adds two 32-bit integers.
; Chapter 3 example

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
	;#1
	;myBytes BYTE 10h,20h,30h,40h
	;myWords WORD 8Ah,3Bh,72h,44h,66h
	;myDoubles DWORD 1,2,3,4,5

	;#3
	;dVal DWORD 12345678h

	;#5
	;myBytes BYTE 10h,20h,30h,40h
	;myWords WORD 3 DUP(?),2000h
	;myString BYTE "ABCDE"

	;#6
	;myBytes BYTE 10h,20h,30h,40h
	;myWords WORD 8Ah,3Bh,72h,44h,66h
	;myDoubles DWORD 1,2,3,4,5
	;myPointer DWORD myDoubles

	;#class challenge
	;source BYTE 'Awad Mussa',0
	source BYTE 'Vincent Hu',0
	dest BYTE SIZEOF source DUP(0)

.code
main proc
	;#1
	;mov esi,OFFSET myBytes
	;mov ax,[esi] ; a. AX =
	;mov eax,DWORD PTR myWords ; b. EAX =

	;mov esi,OFFSET myDoubles
	;mov ax,[esi+2] ; c. AX =
	;mov ax,[esi+6] ; d. AX =
	;mov ax,[esi-4] ; e. AX =

	;#2
	;mov eax,0
	;mov ecx,10 ; outer loop counter
	;L1:
	;mov eax,3
	;mov ecx,5 ; inner loop counter
	;L2:
	;add eax,5
	;loop L2 ; repeat inner loop
	;loop L1 ; repeat outer loop

	;#3
	;mov ax,3
	;mov WORD PTR dVal+2,ax
	;mov eax,dVal

	;#4
	;mov eax,0
	;mov ecx,10 ; outer loop counter
	;L1:
	;mov eax,3
	;mov ecx,5 ; inner loop counter
	;L2:
	;add eax,5
	;loop L2 ; repeat inner loop
	;loop L1 ; repeat outer loop

	;#5
	;mov eax,TYPE myBytes ; a.
	;mov eax,LENGTHOF myBytes ; b.
	;mov eax,SIZEOF myBytes ; c.
	;mov eax,TYPE myWords ; d.
	;mov eax,LENGTHOF myWords ; e.
	;mov eax,SIZEOF myWords ; f.
	;mov eax,SIZEOF myString ; g.

	;mov eax, DWORD PTR myBytes

	;#6
	;mov esi,OFFSET myBytes
	;mov al,[esi] ; a. AL =
	;mov al,[esi+3] ; b. AL =
	;mov esi,OFFSET myWords + 2
	;mov ax,[esi] ; c. AX =
	;mov edi,8
	;mov edx,[myDoubles + edi] ; d. EDX =
	;mov edx,myDoubles[edi] ; e. EDX =
	;mov ebx,myPointer
	;mov eax,[ebx+4] ; f. EAX =

	;#class challenge
	;mov esi, 0
	;mov ecx, SIZEOF source
	;L1:
	;	mov al, source[esi]
	;	mov dest[esi], al
	;	inc esi
	;LOOP L1

	mov esi, OFFSET source
	mov edi, OFFSET dest
	mov eax, 0
	mov ecx, SIZEOF source
	L1:
		mov bl, [esi + eax]
		mov [edi + eax], bl
		inc eax
	LOOP L1

	invoke ExitProcess,0
main endp
end main
