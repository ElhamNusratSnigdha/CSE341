.MODEL SMALL
.STACK 100H  

.DATA
a db 10
b db 20  

.CODE
MAIN PROC

;initialize ds
MOV AX,@DATA
MOV DS,AX

;enter your code here
MOV AL,A    ;AL=A=10
MOV BL,B    ;BL=B=20
MOV CL,BL   ;CL=BL=20
MOV BL,AL   ;BL=AL=10
MOV AL,CL   ;AL=CL=20


;exit to DOS
MOV AX,4C00H
INT 21H

MAIN ENDP
END MAIN