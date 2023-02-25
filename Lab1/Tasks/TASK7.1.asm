.MODEL SMALL
.STACK 100H  

.DATA
a db 1
b db 2
c dw 30000  

.CODE
MAIN PROC

;initialize ds
MOV AX,@DATA
MOV DS,AX

;enter your code here
MOV AL,A    ;AL=A=1=X
MOV BL,B    ;BL=B=2=Y

MUL BL      ;AX=AL*BL=2

;exit to DOS
MOV AX,4C00H
INT 21H

MAIN ENDP
END MAIN