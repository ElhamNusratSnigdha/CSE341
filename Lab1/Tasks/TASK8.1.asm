.MODEL SMALL
.STACK 100H  

.DATA
a dw 236DF
b dw AF  

.CODE
MAIN PROC

;initialize ds
MOV AX,@DATA
MOV DS,AX

;enter your code here
MOV AL,A    ;al=a=1
MOV BL,B    ;bl=b=2

;exit to DOS
MOV AX,4C00H
INT 21H

MAIN ENDP
END MAIN