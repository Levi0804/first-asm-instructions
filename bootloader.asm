ORG 0
BITS 16

JMP 0x7c0:start

start:
    CLI
    MOV ax, 0x7c0
    MOV ds, ax
    MOV es, ax
    MOV ax, 0x00
    MOV ss, ax
    MOV sp, 0x7c00
    STI

    MOV si, message
    CALL print
    JMP $   

print:
    MOV bx, 0
.loop:
    LODSB
    CMP al, 0
    JE .done
    CALL print_char
    JMP .loop
.done:
    RET

print_char:
    MOV ah, 0eh
    INT 0x10
    RET

message: DB 'Hello, World!', 0

times 510 - ($ - $$) DB 0   
DW 0xAA55