section .data			  ; en esta seccion se almacenan los datos estaticos que no cambian durante la ejecucion
    msg db "Hello world!",10      ; msg es la variable. db significa define byte. 10 es el codigo ascii para \n

section .text			  ; define la seccion de codigo del programa donde estan las instrucciones
    global _start		  ; declara que la etiqueta _start es gobal y significa que es el punto de entrada del programa

_start:				  ; marca el comienzo del programa
    mov rax, 1			   
    mov rdi, 1
    mov rsi, msg
    mov rdx, 13
    syscall
    
    mov rax, 60
    mov rdi, 0
    syscall
