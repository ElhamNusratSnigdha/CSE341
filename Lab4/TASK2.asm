;GCD of 32 & 20
CODE SEGMENT
    ASSUME CS:CODE,DS:CODE
    MOV AX,32
    MOV CX,20
    A: 
    XOR DX,DX
    DIV CX
    MOV AX,CX
    MOV CX,DX
    CMP DX,0
    JNE A
    
    HLT