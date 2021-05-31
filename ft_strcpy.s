; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcpy.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: kdrissi- <kdrissi-@student.42.fr>          +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2021/03/06 18:39:09 by kdrissi-          ;+;    ;+;              ;
;    Updated: 2021/03/06 18:39:10 by kdrissi-         ;   ;.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
global _ft_strcpy

_ft_strcpy:
    xor rcx, rcx
    cmp rdi, 0
    je error
    cmp rsi, 0
    je  error
loop:
    mov bl, byte [rsi + rcx]
    cmp bl, 0x0
    je end
    mov byte [rdi + rcx], bl
    inc rcx
    jmp loop
error:
	mov	rax, 0
	ret
end:
    mov byte [rdi + rcx], 0x0
    mov rax, rdi
    ret
