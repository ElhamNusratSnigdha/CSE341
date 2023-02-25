data segment 
    ; add your data here! 
    msg db "User Input: $"
    mx db "Maximum Number is $"
    mn db "Minimum Number is $" 
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
    
    ;take input1 character
    MOV AH,1
    INT 21H ;stored in AL
    
    MOV BL,AL ;freed AL 
    
    ;take input2 character
    MOV AH,1
    INT 21H ;stored in AL
    
    MOV BH,AL ;freed AL 
    
    ;take input3 character
    MOV AH,1
    INT 21H ;stored in AL
    
    MOV CL,AL ;freed AL


    ;comapring    
    CMP BL,BH
    JG BLg1
    ;else
    JL BHg1
    
    BLg1:
    CMP BL,CL
    JG BLg2
    ;else 
    JL CLg2
    
    BLg2:         
    ;line break
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 

    ;show the msg     
    LEA DX, mx
    MOV AH,9
    INT 21H    
    
    
    ;display the character
    MOV DL,BL ;must use DL
    MOV AH,2
    INT 21H
    
    JMP exit
    
    BHg1:
    CMP BH,CL
    JG BHg2
    ;else 
    JL CLg2
    
    BHg2:         
    ;line break
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 

    ;show the msg     
    LEA DX, mx
    MOV AH,9
    INT 21H    
    
    
    ;display the character
    MOV DL,BH ;must use DL
    MOV AH,2
    INT 21H
    
    JMP exit
    
    CLg2:         
    ;line break
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 

    ;show the msg     
    LEA DX, mx
    MOV AH,9
    INT 21H    
    
    
    ;display the character
    MOV DL,CL ;must use DL
    MOV AH,2
    INT 21H    
            
  
    exit:        
    ; exit to operating system.
    mov ax, 4c00h    
    int 21h    
ends