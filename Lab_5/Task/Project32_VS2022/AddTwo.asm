include Irvine32.inc

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.data
	var1 WORD 50 DUP(5)
.code
main proc
	Call Task1
	invoke ExitProcess,0
main endp

Task1 proc
	mov AL,sizeof var1
	ret
Task1 endp

Task2 proc
	mov AL,sizeof var1
	ret
Task2 endp

Part3 proc
	
	mov ECX,5
	ABC:

Part3 endp

end main