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
MOV AL,A    ;AL=A=1 
MOV BL,B    ;BL=B=2    
DEC AL      ;AL=0

SUB AL,BL   ;AL=AL-BL=0-2=-2

 

;exit to DOS

MOV AX,4C00H
INT 21H

MAIN ENDP
END MAIN

