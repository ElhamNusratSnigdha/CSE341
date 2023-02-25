;Adding, Subtraction, Increment, Decrement, Negative, Byte Multiplication (8bit), Word Multiplication (16bit), Byte Division (8bit), Word Division (16bit)

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

;moving Data to registers
MOV AL,A    ;al=a=1
MOV BL,B    ;bl=b=2

;adding
ADD AL,BL   ;al=al(1)+bl(2)=3
;subtraction
SUB AL,BL   ;al=al(3)-bl(2)=1  
;increment
INC AL      ;al=al+1=2
;decrement
DEC AL      ;al=al-1=1  
;negative
NEG AL      ;al=-1

;byte multiplication (8bit)-must use (AL), result at (AX)
MOV AL,3    ;al=3 [db]
MUL BL      ;AX=al(3)*bl(2)=6  

;word multiplication (16bit)-must use (AX), result at (high"DX", low"AX")
MOV AX,10000;AX=10000[dw]
MUL C       ;DX:AX=AX(10000)*C(30000)=300000000 
   
;byte division (8bit)- dividend 16bit (AX), result (AL),reminder (AH) 
MOV AX,C    ;AX=C=30000(dw)
MOV BL,10   ;bl=10(db)
DIV BL      ;al=AX(30000)/bl(10)=3000 , AH=Reminder

;word division (16bit)- dividend 16bit (DX:AX), result (AX),reminder (DX)  
MOV AX,C    ;AX=C=30000(dw)
MOV BX,10000;BX=10000(dw)
DIV BX      ;AX=DX:AX(30000)/BX(10000)=3 , DX=Reminder


;exit to DOS
MOV AX,4C00H
INT 21H

MAIN ENDP
END MAIN