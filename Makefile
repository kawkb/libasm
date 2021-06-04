# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kdrissi- <kdrissi-@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/28 16:15:59 by kdrissi-          #+#    #+#              #
#    Updated: 2021/06/04 14:12:32 by kdrissi-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = 	libasm.a

SRC  = 	ft_strlen.s\
		ft_read.s\
	   	ft_strcmp.s\
		ft_strcpy.s\
		ft_write.s\
		ft_strdup.s

SRCBONUS =  ft_list_push_front_bonus.s ft_list_size_bonus.s 


		


OBJ = $(SRC:%.s=%.o)
OBJBONUS = $(SRC:%.s=%.o) $(SRCBONUS:%.s=%.o)
 

%.o: %.s
	nasm -O0 -f macho64  $< -o $@

FLAGS = -Wall -Werror -Wextra

all : $(NAME)

$(NAME): $(OBJ)
		ar rcs $(NAME) $(OBJ)

bonus: $(OBJBONUS)
		 ar rcs $(NAME) $(OBJBONUS)

clean :
		rm -rf $(OBJBONUS)

fclean :
		rm -rf $(OBJBONUS)
		rm -rf *.out
		rm $(NAME)

re:	fclean all