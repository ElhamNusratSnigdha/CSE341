data segment 
    ; add your data here! 
    s1 db "Please insert a character.$"  
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
    LEA DX, s1
    MOV AH,9
    INT 21H
    
    ;take input character
    MOV AH,1
    INT 21H ;stored in AL
    
    MOV BL,AL ;free AL   

    ;display the character
    MOV DL,BL ;must use DL
    MOV AH,2
    INT 21H        
    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends