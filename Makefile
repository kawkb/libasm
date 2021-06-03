# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kdrissi- <kdrissi-@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/28 16:15:59 by kdrissi-          #+#    #+#              #
#    Updated: 2021/06/03 18:11:22 by kdrissi-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = 	libasm.a

SRC  = 	ft_strlen.s\
		ft_read.s\
	   	ft_strcmp.s\
		ft_strcpy.s\
		ft_write.s\
		ft_strdup.s

SRCNU =  ft_list_push_front.s ft_list_size.s 
		


OBJ = $(SRC:%.s=%.o)
OBJBNU = $(SRC:%.s=%.o) $(SRCNU:%.s=%.o)
 

%.o: %.s
	nasm -O0 -f macho64  $< -o $@

FLAGS = -Wall -Werror -Wextra

all : $(NAME)

$(NAME): $(OBJ)
		 ar rcs $(NAME) $(OBJ)

bonus: $(OBJBNU)
		 ar rcs $(NAME) $(OBJ)

clean :
		rm -rf $(OBJ)

fclean :
		rm -rf $(OBJBNU)
		rm $(NAME)