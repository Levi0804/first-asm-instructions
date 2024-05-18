section .data
    num1 DD 1
    num2 DD 2
    result DD 0

section .text
global _start

_start:
    MOV eax,[num1]
    ADD eax,[num2]
    MOV [result],eax

    MOV eax,1
    MOV ebx,[result]
    INT 80h