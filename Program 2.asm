.MODEL SMALL
.STACK 100H
.DATA
    ;WHERE ALL THE VARIABLE WILL BE DECLARED     
    ;BH BL 8 BITS REGISTER 1BYTE
    ;BX 16 BITS REGISTER 1WORD
    
    
    NUM DB 'd' ; DB = DEFINE BYTE d = 100
    NUM1 DB ?
    CHAR DB '#'
    STR DB "MY NAME IS EMU"
    CHAR1 DB ?
    
    
   
.CODE
    ;CODE SEGMENT
MAIN PROC   ;WORK AS INT MAIN()
    ;CODE STATEMENT
    
    ;Instruction Destination, source
    MOV AX, @DATA


    MOV DS, AX
    
    
    
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP    
    
    
    
    
END MAIN;RETURN 0
