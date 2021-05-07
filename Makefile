# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    Makefile                                           :+:    :+:             #
#                                                      +:+                     #
#    By: mramadan <mramadan@student.codam.nl>         +#+                      #
#                                                    +#+                       #
#    Created: 2019/10/31 10:04:26 by mramadan      #+#    #+#                  #
#    Updated: 2020/06/05 11:38:45 by Marty         ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRC = 	ft_memset.c \
		ft_bzero.c \
		ft_memcpy.c \
		ft_memccpy.c \
		ft_memmove.c \
		ft_memchr.c \
		ft_memcmp.c \
		ft_strlen.c \
		ft_strlcpy.c \
		ft_strcpy.c \
		ft_strlcat.c \
		ft_strchr.c \
		ft_strrchr.c \
		ft_strncmp.c \
		ft_strcmp.c \
		ft_atoi.c \
		ft_isalpha.c \
		ft_isdigit.c \
		ft_isalnum.c \
		ft_isascii.c \
		ft_isprint.c \
		ft_toupper.c \
		ft_tolower.c \
		ft_calloc.c \
		ft_strdup.c \
		ft_strnstr.c \
		ft_substr.c \
		ft_strjoin.c \
		ft_strtrim.c \
		ft_split.c \
		ft_itoa.c \
		ft_strmapi.c \
		ft_putchar_fd.c \
		ft_putstr_fd.c \
		ft_putendl_fd.c \
		ft_putnbr_fd.c \
		get_next_line.c \
		get_next_line_utils.c \
		cnt_prnt_array.c \
		free_array.c \
		array_insert_front.c


LIBFILES =	$(SRC:.c=.o)

BFILES = 	ft_lstnew_bonus.c \
			ft_lstadd_front_bonus.c \
			ft_lstsize_bonus.c \
			ft_lstlast_bonus.c \
			ft_lstadd_back_bonus.c \
			ft_lstdelone_bonus.c \
			ft_lstclear_bonus.c \
			ft_lstiter_bonus.c \
			ft_lstmap_bonus.c

BLIBFILES  = $(BFILES:.c=.o)


all: $(NAME)

$(NAME): $(LIBFILES)
	gcc -c -Wall -Werror -Wextra $(SRC)
	ar rc $(NAME) $(LIBFILES)

bonus:
	gcc -c -Wall -Werror -Wextra $(BFILES)
	ar rc $(NAME) $(BLIBFILES)

clean:
	/bin/rm -f $(LIBFILES) $(BLIBFILES)

fclean: clean
	/bin/rm -f $(NAME)

re: fclean all
