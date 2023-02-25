.MODEL SMALL
.STACK 100H  

.DATA
a db 10  

.CODE
MAIN PROC

;initialize ds
MOV AX,@DATA
MOV DS,AX

;enter your code here
MOV AL,A    ;AL=a=10
MOV BL,AL   ;BL=AL=10

;exit to DOS
MOV AX,4C00H
INT 21H

MAIN ENDP
END MAIN