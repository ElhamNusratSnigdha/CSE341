CODE SEGMENT
    ASSUME CS:CODE,DS:CODE   
    XOR AX,AX
    MOV CX,1
    MOV DX,148
    A:
    ADD AX,CX
    ADD CX,3
    CMP CX,DX
    JNE A
    HLT 