data segment 
    ; add your data here! 
    s1 db "Please enter A: $"
    s2 db "Please enter B: $"
    s3 db 0AH,0DH,"A is greater","$"
    s4 db 0AH,0DH,"B is greater","$"
    s5 db 0AH,0DH,"Both are equal","$"  
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

    ;show msg1     
    LEA DX, s1
    MOV AH,9
    INT 21H
    
    ;take input character A
    MOV AH,1
    INT 21H ;stored in AL
    
    MOV BL,AL ;freed AL   
    
    ;line break
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    ;show msg2    
    LEA DX, s2
    MOV AH,9
    INT 21H
    
    ;take input character B
    MOV AH,1
    INT 21H ;stored in AL
    
    MOV BH,AL ;freed AL
    
    CMP BL,BH
    
    JE EQUAL
    JG GREATER
    
    ;show msg4
    LEA DX, s4
    MOV AH,9
    INT 21H
    JMP EXIT
    
    GREATER:
    ;show msg3     
    LEA DX, s3
    MOV AH,9
    INT 21H
    JMP EXIT
    
    EQUAL:
    ;show msg5     
    LEA DX, s5
    MOV AH,9
    INT 21H
    
  
    EXIT:        
    ; exit to operating system.
    mov ax, 4c00h    
    int 21h    
ends