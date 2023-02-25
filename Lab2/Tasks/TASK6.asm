CODE SEGMENT 
    ASSUME CS:CODE,DS:CODE
    
;STRING INPUT    
    MOV AH,9
    LEA DX,OBE
    INT 21H
;INPUT 1ST CHARACTER    
    MOV AH,1
    INT 21H    
    MOV BL,AL 
;INPUT 2ND CHARACTER    
    INT 21H
    MOV CL,AL
;INPUT 3RD CHARACTER    
    INT 21H    
    MOV CH,AL
    
;OUTPUT 1ST CHARACTER    
    MOV AH,2         
    MOV DL,BL
    INT 21H
    MOV DH,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    
;OUTPUT 2ND CHARACTER             
    MOV DL,CL
    INT 21H
    MOV DH,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
;OUTPUT 3RD CHARACTER           
    MOV DL,CH
    INT 21H
           
    HLT
OBE DB "ENTER THREE INITIALS: $"