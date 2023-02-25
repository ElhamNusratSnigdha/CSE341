.MODEL SMALL
.STACK 100H  

.DATA
a db 1
b db 2
c db 3
d db 5  

.CODE
MAIN PROC

;initialize ds
MOV AX,@DATA
MOV DS,AX

;enter your code here
;(1+2)*(3-1)/3+3+2-(1*2)
;3*2/5+3+2-2

MOV BL,A    ;BL=1
MOV BH,B    ;BH=2
MOV CL,C    ;CL=3
MOV CH,D    ;CH=5

MOV AL,CL   ;AL=3
MUL BH      ;AX=AL*BH=6
;6/5+3+2-2 

MOV AX,6    ;AX=6
DIV CH      ;AL=AX/CH=1 AH=.5
;AL(1)+3+2-2

ADD AL,CL ;AL=1+3=4
ADD AL,BH ;AL=4+2=6
SUB AL,BH ;AL=6-2=4

;exit to DOS
MOV AX,4C00H
INT 21H

MAIN ENDP
END MAIN