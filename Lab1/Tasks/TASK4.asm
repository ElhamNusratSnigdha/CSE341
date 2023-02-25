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
;moving Data to Registers
MOV AL,A    ;AL=a=1
MOV BL,B    ;BL=b=2

SUB BL,AL   ;BL=BL(2)-AL(1)=1

;OR
MOV AL,A    ;AL=a=1
MOV BL,B    ;BL=b=2

SUB AL,BL   ;AL=AL(1)-BL(2)=-1(FF)


;exit to DOS
MOV AX,4C00H
INT 21H

MAIN ENDP
END MAIN