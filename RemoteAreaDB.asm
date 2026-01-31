.MODEL SMALL
.STACK 100h

.DATA
dbFile db 'records.txt',0
msg db 13,10,'Menu'
    db 13,10,'1 Insert Data'
    db 13,10,'2 Modify Data'
    db 13,10,'3 Remove Data'
    db 13,10,'4 View Data'
    db 13,10,'5 Arrange Records'
    db 13,10,'6 Calculate Totals'
    db 13,10,'7 Quit','$'

choice db 13,10,'Choice: $'

.CODE
MAIN PROC
    mov ax,@data
    mov ds,ax

MENU_LOOP:
    lea dx,msg
    mov ah,09h
    int 21h

    lea dx,choice
    mov ah,09h
    int 21h

    mov ah,01h
    int 21h
    sub al,'0'

    cmp al,1
    je INSERT
    cmp al,2
    je MODIFY
    cmp al,3
    je REMOVE
    cmp al,4
    je VIEW
    cmp al,5
    je ARRANGE
    cmp al,6
    je SUM
    cmp al,7
    je QUIT

    jmp MENU_LOOP

INSERT:  jmp MENU_LOOP
MODIFY:  jmp MENU_LOOP
REMOVE:  jmp MENU_LOOP
VIEW:    jmp MENU_LOOP
ARRANGE: jmp MENU_LOOP
SUM:     jmp MENU_LOOP

QUIT:
    mov ah,4Ch
    int 21h
MAIN ENDP
END MAIN

