section  .text
global      _ft_list_size

_ft_list_size:
    mov rsi, rdi
    xor rax, rax
    jmp _loop
_loop:
    cmp rdi, 0
    jz end
    mov rdi, [rdi + 8]
    inc rax
    jmp _loop
end:
    mov rdi, rsi
    ret