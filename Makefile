# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jheat <jheat@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/10/28 19:46:14 by jheat             #+#    #+#              #
#    Updated: 2020/10/28 19:51:53 by jheat            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libasm.a

LIST  =	ft_read.s ft_write.s ft_strlen.s ft_strcpy.s ft_strcmp.s ft_strdup.s


OBJ = $(patsubst %.s,%.o,$(LIST))

HEADER = libasm.h

FLAGS = -f macho64

all: $(NAME)

$(NAME): $(OBJ)
		ar rc $(NAME) $?

%.o: %.s $(HEADER)
		nasm $(FLAGS) $< -o $@

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
