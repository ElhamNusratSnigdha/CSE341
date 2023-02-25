;M*N=(M+M+M....N-times)
CODE SEGMENT
    ASSUME CS:CODE,DS:CODE
    MOV CX,20
    XOR AX,AX
    A:
    ADD AX,100
    LOOP A
    HLT 
    
    