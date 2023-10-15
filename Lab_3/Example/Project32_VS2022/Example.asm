; AddTwo.asm - adds two 32-bit integers.
; Chapter 3 example

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

include Irvine32.inc
.data
	sum DWORD 0

.code
main proc
	mov	EDX, 5				
	mov ECX, 6
	add EDX, ECX
	mov sum, EDX
	mov EAX, sum

	call WriteInt

	invoke ExitProcess,0
main endp
end main