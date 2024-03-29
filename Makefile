# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lejulien <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/11/07 13:57:31 by lejulien          #+#    #+#              #
#    Updated: 2019/11/14 07:08:35 by lejulien         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRC = ft_atoi.c ft_isascii.c ft_memchr.c ft_memset.c ft_strncmp.c ft_toupper.c       \
		ft_bzero.c ft_isdigit.c ft_memcmp.c ft_strchr.c ft_strnstr.c ft_isalnum.c    \
		ft_isprint.c ft_memcpy.c ft_strlcat.c ft_strrchr.c ft_isalpha.c ft_calloc.c  \
		ft_memmove.c ft_memccpy.c ft_strlen.c ft_tolower.c ft_strdup.c ft_strlcpy.c  \
		ft_substr.c ft_strjoin.c ft_strtrim.c ft_split.c ft_putchar_fd.c ft_itoa.c   \
		ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_strmapi.c ft_split_charset.c

SRC_BONUS = ft_lstnew_bonus.c ft_lstadd_front_bonus.c ft_lstsize_bonus.c ft_lstlast_bonus.c    \
			ft_lstadd_back_bonus.c ft_lstdelone_bonus.c ft_lstclear_bonus.c ft_lstiter_bonus.c \
			ft_lstmap_bonus.c

OBJ = $(SRC:.c=.o)

OBJ_BONUS = $(SRC_BONUS:.c=.o)

HEADER = libft.h

CFLAGS = -Wall -Wextra -Werror

.c.o:
		gcc $(CFLAGS) -c $< -o ${<:.c=.o}

all:	$(NAME)

$(NAME):$(OBJ)
		ar rc $(NAME) $(OBJ)
		ranlib $(NAME)

bonus:	$(OBJ_BONUS)
		ar rc $(NAME) $(OBJ_BONUS)

clean:
		/bin/rm -f $(OBJ)
		/bin/rm -f $(OBJ_BONUS)

fclean: clean
		/bin/rm -f $(NAME)

re: fclean all

.PHONY: clean fclean re
