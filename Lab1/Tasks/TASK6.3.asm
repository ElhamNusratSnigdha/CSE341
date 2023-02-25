.MODEL SMALL
.STACK 100H 

.DATA
a db 1
b db 2
c db 3 

.CODE
MAIN PROC

;initialize ds
MOV AX,@DATA
MOV DS,AX

;enter your code here
MOV AL,A    ;AL=A=1
MOV BL,B    ;BL=B=2
MOV CL,C    ;CL=C=3

INC BL      ;BL+1=3
ADD AL,BL   ;AL=AL+BL=1+3=4
MOV CL,AL   ;CL=AL=4

;exit to DOS
MOV AX,4C00H
INT 21H

MAIN ENDP
END MAIN

