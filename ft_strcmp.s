
section .text
global _ft_strcmp

_ft_strcmp:
    xor rcx, rcx
loop
    mov al, [rdi + rcx]
    mov bl, [rsi + rcx]
    cmp al, 0x0
    je  _end
    cmp bl, 0x0
    je  _end
    cmp al, bl
    jne _end
    inc rcx
    jmp _loop
_end
    sub al, bl
    mov rax, al
    ret