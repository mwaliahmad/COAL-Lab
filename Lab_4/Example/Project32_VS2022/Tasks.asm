include Irvine32.inc

.386
.model flat,stdcall
.stack 4096

ExitProcess proto,dwExitCode:dword

.data
	var1 EQU <"Hello World", 0Dh , 0Ah, 0> 
	var3 BYTE var1
	temp1 = ($ - var3)

	var2 EQU <"Assembly Language", 0Dh , 0Ah, 0>
	var4 BYTE var2
	temp2 = ($ - var4)
	
	var1 EQU <"Monday", 0Dh , 0Ah, 0> 
	var2 EQU <"Tuesday", 0Dh , 0Ah, 0>
	var3 EQU <"Wednesday", 0Dh , 0Ah, 0> 
	var4 EQU <"Thursday", 0Dh , 0Ah, 0>	
	var5 EQU <"Friday", 0Dh , 0Ah, 0> 
	var6 EQU <"Saturday", 0Dh , 0Ah, 0>
	var7 EQU <"Sunday", 0Dh , 0Ah, 0>

	week BYTE var1, var2, var3, var4, var5, var6, var7
	
.code
main proc
	Call task1
	invoke ExitProcess,0

main endp


task1 proc
	
	mov EDX, offset var3
	Call WriteString

	mov EDX, offset var4
	Call WriteString

	mov EAX, temp1	
	Call WriteInt

	mov EAX, temp2	
	Call WriteInt

	ret
task1 endp

task2 proc
		
	mov EDX, week + 1
	Call WriteString

	ret
task2 endp
end main