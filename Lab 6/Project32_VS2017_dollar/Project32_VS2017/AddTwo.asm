; Calculating the size of the String

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
	myString BYTE "This is a very long string made by your instructor to test how $ works in this lab hope you will like it",0
	myString_length = ($ - myString)

.code
main proc
	mov eax, 0
	mov al, myString_length

	invoke ExitProcess,0
main endp
end main