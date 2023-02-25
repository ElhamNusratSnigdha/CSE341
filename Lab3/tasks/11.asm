data segment 
    ; add your data here! 
    msg db "Input: $"
    y db "Y$"  
    n db "N$" 
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

    ;show the msg     
    LEA DX, msg
    MOV AH,9
    INT 21H
    
    ;take input character
    MOV AH,1
    INT 21H ;stored in AL
    
    CMP AL,33h
    JE triangle
    
    ;else
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    LEA DX, n
    MOV AH,9
    INT 21H
    JMP E   
    
    triangle:
    ;line break
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    LEA DX, y
    MOV AH,9
    INT 21H
    
    E:           
    ; exit to operating system.
    mov ax, 4c00h    
    int 21h    
ends