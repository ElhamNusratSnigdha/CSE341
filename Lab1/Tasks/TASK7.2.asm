.MODEL SMALL
.STACK 100H  

.DATA
a db 1
b db 2
c dw 300  

.CODE
MAIN PROC

;initialize ds
MOV AX,@DATA
MOV DS,AX

;enter your code here
MOV AX,C    ;AX=C=300=X
MOV BL,B    ;BL=B=2=Y 

DIV BL      ;AL=AX/BL=150, AH=REMINDER

;exit to DOS
MOV AX,4C00H
INT 21H

MAIN ENDP
END MAIN