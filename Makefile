# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kdrissi- <kdrissi-@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/28 16:15:59 by kdrissi-          #+#    #+#              #
#    Updated: 2021/04/28 16:31:31 by kdrissi-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = 	libasm.a

SRC  = 	ft_strlen.o\
		ft_read.o\
	   	ft_strcmp.o\
		ft_strcpy.o\
		ft_strdup.o\
		ft_strlen.o\
		ft_write.o

FLAGS = -Wall -Werror -Wextra

all : $(NAME)

$(NAME): $(SRC)
		 ar rcs $(NAME) $(SRC)

clean :
		rm -rf $(SRC)