CODE SEGMENT
    ASSUME CS:CODE,DS:CODE  
MOV CX,5
MOV AH,2

;Triversing technique1(for DB)
    ;LEA SI,A
    ;ARRAY:
    ;MOV DL,[SI]
    ;add dl,30h
    ;INT 21H
    ;INC SI
    ;LOOP ARRAY     

;Triversing technique2(for DB)
    ;mov si,0
    ;ARRAY:
    ;mov dl,a[si] 
    ;add dl,30h
    ;INT 21H
    ;INC SI 
    ;LOOP ARRAY

;Triversing technique2(for WB)
    mov si,0
    ARRAY: 
    mov DX,a[si] 
    ADD DX,30H
    INT 21H
    add si,2 
    LOOP ARRAY 

;a db "ABCDE" 
;a db 1,2,3,4,5
a dw 1,2,3,4,5
  
CODE ENDS 
END
;C:\emu8086\inc\0_com_template.txt