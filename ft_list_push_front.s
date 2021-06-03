section .text
global _ft_list_push_front
extern  _malloc

_ft_list_push_front:
    xor rax, rax
    jmp _loop
_loop:
    push rdi
    push rsi
    mov rdi , 16
    call _malloc
    pop rsi
    pop rdi
    cmp rdi, 0
    jz ret1
    mov [rax], rsi
    mov rcx, [rdi]
    cmp rcx, 0
    jz equel
    mov [rax + 8], rcx

equel:
    mov [rdi], rax 
    pop rsp
ret1:
    ret





    



