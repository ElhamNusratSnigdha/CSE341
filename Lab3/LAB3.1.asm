data segment 
    ; add your data here! 
    a db 8
    b db 5
    s1 db "GREATER$" 
    S2 DB "LESSER$"
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
    mov ax, data
    mov ds, ax
    mov es, ax

    ; add your code here   
    
    MOV AL,a
    MOV BL,b
    CMP AL,BL
    JG GREATER
 
    LEA DX,S2
    MOV AH,9
    INT 21H
    JMP EXIT
    
    
    GREATER:
    LEA DX,S1
    MOV AH,9
    INT 21H
    
    
    EXIT:
            
    ; exit to operating system.
    mov ax, 4c00h    
    int 21h    
ends