 .MODEL SMALL
.STACK 200H
.DATA                   
    CR EQU ODH
    LF EQU OAH
    
    MSG1 DB 'ENTER A LOWER CASE LETTER:$'
    MSG2 DB 0DH,0AH, 'In Upper Case it is:'
    CHAR DB ?,'$'
.CODE
MAIN PROC
    
    MOV AX,@DATA
    MOV DS, AX
    LEA DX,MSG1
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H
    
    SUB AL,20H
    MOV CHAR,AL
    LEA DX, MSG2
    MOV AH,9
    INT 21H
        
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN