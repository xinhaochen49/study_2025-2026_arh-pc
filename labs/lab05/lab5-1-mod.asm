;-----------------------------------------------------------------
; Программа вывода сообщения на экран, ввода строки с клавиатуры и вывода введенной строки
;-----------------------------------------------------------------
SECTION .data
msg: DB 'Введите строку:',10
msgLen: EQU $-msg

SECTION .bss
buf1: RESB 80

SECTION .text
GLOBAL _start
_start:
;------------ Вывод приглашения
mov eax,4
mov ebx,1
mov ecx,msg
mov edx,msgLen
int 80h

;------------ Ввод строки
mov eax, 3
mov ebx, 0
mov ecx, buf1
mov edx, 80
int 80h

; Сохраняем длину введенной строки
mov edi, eax

;------------ Вывод введенной строки
mov eax,4
mov ebx,1
mov ecx, buf1
mov edx, edi
int 80h

;------------ Выход
mov eax,1
mov ebx,0
int 80h
