section .data
    msg DB "Hello, World!", 0xA
    len EQU $ - msg

section .text
global _start

_start:
    MOV eax, 4
    MOV ebx, 1
    MOV ecx, msg
    MOV edx, len
    INT 80h

    MOV eax, 1
    XOR ebx, ebx
    INT 80h
    