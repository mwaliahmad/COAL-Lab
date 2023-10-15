; AddTwo.asm - adds two 32-bit integers.
; Chapter 3 example

include Irvine32.inc
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
	var1 byte 0
	var2 byte 0
	var3 byte 0

.code
main proc
	
	mov EAX, 5
	mov ECX, 6
	mul ECX

	mov ECX, 3
	add ECX, 7

	imul ECX, 21
	
	sub EAX, ECX

	call WriteInt

	invoke ExitProcess,0
main endp
end main