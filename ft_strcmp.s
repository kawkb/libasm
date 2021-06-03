section .text
global _ft_strcmp

_ft_strcmp:
    xor rcx, rcx
    xor rax, rax
    xor r8, r8
    xor r9, r9
    jmp loop
loop:
    mov r8b, [rdi + rcx]
    mov r9b, [rsi + rcx]
    cmp r8b, 0x0
    je  end
    cmp r9b, 0x0
    je  end
    cmp r8b, r9b
    jne end
    inc rcx
    jmp loop
end:
    sub r8, r9
    mov rax, r8
    ret