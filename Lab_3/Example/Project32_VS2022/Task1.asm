; AddTwo.asm - adds two 32-bit integers.
; Chapter 3 example

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

include Irvine32.inc
.data
	var1 byte 0
	var2 byte 0
	var3 dword 0

.code
main proc
	
	mov AL, 5
	mov AH, 6
	add AL, AH

	mov var1, AL

	mov AL, 10
	mov AH, -7
	add AL, AH

	mov var2, AL
	
	comment.
	imul var3,var1,var2
	mov EAX, var3
	mul	9
	.

	call WriteInt

	invoke ExitProcess,0
main endp
end main