data segment 
    ; add your data here! 
    s1 db "1st number: $" 
    s2 db "2nd number: $"
    s3 db "THE SUM OF 5 AND 4 IS $"
ends

stack segment
    dw 128 dup(0)
ends

code segment
start:
    mov ax, data
    mov ds, ax
    mov es, ax

    ; add your code here 
    
    ;show the 1stmsg  
    LEA DX, S1 
    MOV AH,9
    INT 21H    
    
    ;take 1st input 5
    MOV AH,1
    INT 21H ;stored in AL
    
    MOV BL,AL
    
    ;line break
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    LEA DX,S2
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H ;stored in AL
    
    MOV BH,AL
    
    ADD BL,BH
    SUB BL,60H
    ADD BL,30H  
    
    ;line break
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    ;show the 1stmsg  
    LEA DX, S3 
    MOV AH,9
    INT 21H  
    
    ;display the character
    MOV DL,BL ;must use DL
    MOV AH,2
    INT 21H        
    
  
            
    ; exit to operating system.
    mov ax, 4c00h    
    int 21h    
ends