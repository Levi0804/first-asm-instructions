section .data
    num1 DD 1
    num2 DD 1

section .text
global _start

addTwoNumbers:
    PUSH ebp
    MOV ebp,esp
    MOV eax,[ebp + 8]
    MOV ebx,[ebp + 12]
    ADD eax,ebx
    POP ebp
    RET

_start:
    MOV eax,[num1]
    MOV ebx,[num2]
    PUSH eax
    PUSH ebx
    CALL addTwoNumbers
    MOV eax,1
    MOV ebx,0
    INT 0x80
