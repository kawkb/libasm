section .text
global _ft_strcmp

_ft_strcmp:
    xor rcx, rcx
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
    sub r8b, r9b
    movsx rax, r8b
    ret