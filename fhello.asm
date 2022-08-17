format ELF executable
entry start  

segment executable
 
;include FASMLIB
SYSTEM equ linux

start:
	mov eax,4            
	mov ebx,1            
	mov ecx,hello       
	mov edx,helloLen     

	int 80h              
	
	mov eax,1            
	mov ebx,0            
	int 80h

segment readable writeable	
	hello db "Merhaba Dunya!", 10
	helloLen = $-hello 
