;Write a program to check whether a number is divisible by 5 and 11 or not.
;PRint "Divisible by 5 and 11" or "Not divisible by 5 and 11"

data segment 
    ; add your data here! 
    msg1 db "Divisible by 5 and 11$" 
    msg2 db "Not divisible by 5 and 11$" 
    n1 dw 55
    n2 db 10
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
    ;byte division (8bit)- dividend 16bit (AX), result (AL),reminder (AH) 
    MOV AX,n1   
    MOV BL,11   ;bl=11(db)
    DIV BL      ;al=AX(55)/bl(11)=5 , AH=Reminder 
    
    MOV BL,AH   ;reminder from 11 
    
    MOV AX,n1   
    MOV BH,5    ;bl=11(db)
    DIV BH      ;al=AX(55)/bl(5)=11 , AH=Reminder 
    
    MOV BH,AH   ;reminder from 5 
    
    CMP BL,0
    JE div11
    ;else
    JNE no
    
    div11:
    CMP BH,0
    JE div5
    
    div5: 
    ;line break
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    ;show the msg     
    LEA DX, msg1
    MOV AH,9
    INT 21H
    
    JMP exit
    
    no:
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    ;show the msg     
    LEA DX, msg2
    MOV AH,9
    INT 21H    

    exit:        
    ; exit to operating system.
    mov ax, 4c00h    
    int 21h    
ends