.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC  
    MOV AH,1
    INT 21H
    CMP AL,'Y'
    
    JE THEN:
    CMP AL,'y'
    JE THEN 
    JMP ELSE_
    
    THEN:
    MOV AH,2
    MOV DL,AL
    INT 21H
    JMP END_IF
    
    ELSE_:    
    MOV AH,4CH
    INT 21H
    
    END_IF:
    MAIN ENDP
END MAIN