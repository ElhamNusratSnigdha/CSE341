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

    ;compare is done:
    ;if destination-source = +(destination is greater)
    ;if 
    
    MOV AL,8
    MOV BL,4
    CMP AL,BL
    JG GREATER
    ;==(JE), >(JG), <(JL), >=(JGE), <=(JLE)
    SUB AL,2
    JMP EXIT
    
    
    GREATER:
    ADD AL,2
    
    
    EXIT:
            
    ; exit to operating system.
    mov ax, 4c00h    
    int 21h    
ends