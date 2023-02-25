.MODEL SMALL
.STACK 100H  

.DATA
a db 1
b db 2
 

.CODE
MAIN PROC

;initialize ds
MOV AX,@DATA
MOV DS,AX

;enter your code here
MOV AL,A    ;AL=1
MOV BL,B    ;BL=2

SUB BL,AL   ;BL=BL-AL=1
MOV AL,BL   ;AL=BL=1

;exit to DOS
MOV AX,4C00H
INT 21H

MAIN ENDP
END MAIN