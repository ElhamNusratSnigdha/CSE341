.MODEL SMALL
.STACK 100H  

.DATA
a db 4
b db 2
c dB 30 

.CODE
MAIN PROC

;initialize ds
MOV AX,@DATA
MOV DS,AX

;enter your code here
MOV AL,C    ;al=c=30 =X
MOV BL,B    ;bl=b=2   =Y
MOV DL,A    ;DL=a=4   =Z  

MUL BL      ;AX=AL*BL=60
DIV DL      ;AL=AX/DL=15, AH=REMINDER=0 

;exit to DOS
MOV AX,4C00H
INT 21H

MAIN ENDP
END MAIN