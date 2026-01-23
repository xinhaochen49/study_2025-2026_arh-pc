%include 'in_out.asm'

SECTION .data
msg: DB 'Введите строку: ',0h

SECTION .bss
buf1: RESB 80

SECTION .text
GLOBAL _start
_start:

mov eax, msg
call sprint           ; 这里改为sprint，而不是sprintLF

mov ecx, buf1
mov edx, 80
call sread

call quit

