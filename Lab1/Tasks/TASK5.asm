.MODEL SMALL
.STACK 100H  

.DATA
a db 2
b db 1
  

.CODE
MAIN PROC

;initialize ds
MOV AX,@DATA
MOV DS,AX

;enter your code here 
;moving Data to Registers
MOV AL,A    ;AL=a=1
MOV BL,B    ;BL=b=2

ADD DL,AL   ;DL=AL=1
ADD AL,BL   ;AL=3
SUB AL,DL   ;AL=AL-DL=2

ADD DH,BL   
ADD BL,DL   ;BL=BL+DL=3
SUB BL,DH   ;BL=BL-DH=1

;exit to DOS
MOV AX,4C00H
INT 21H

MAIN ENDP
END MAIN