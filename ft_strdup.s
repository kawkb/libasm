# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strdup.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kdrissi- <kdrissi-@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/03/05 17:42:41 by kdrissi-          #+#    #+#              #
#    Updated: 2021/03/05 18:35:31 by kdrissi-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
global  _ft_strdup
extern  _malloc
extern  _ft_strlen
extern  _ft_strcpy

_ft_strdup:
    call _ft_strlen
    inc rax
    push rdi
    mov rdi, rax
    call _malloc
    pop rsi
    call _ft_strcpy
    ret
    
    