# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mreidenb <mreidenb@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/10/18 08:11:09 by mreidenb          #+#    #+#              #
#    Updated: 2023/08/29 12:33:41 by mreidenb         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC		= gcc
CFLAGSS	= -Wall -Wextra -Werror
INCFLAG	= -I .
AR		= ar
ARFLAGS = -rcs

NAME	= libft.a
MAIN	= isalpha isdigit isalnum isascii isprint strlen memset bzero memcpy memccpy\
		memmove strlcpy strlcat toupper tolower strchr strrchr strncmp memchr\
		memcmp strnstr atoi calloc strdup substr strjoin strtrim split itoa\
		strmapi striteri putchar_fd putstr_fd putendl_fd putnbr_fd strjoin_free\
		printf/ft_printf atoi_l printf_fd/ft_printf_fd vecdup vecfree veclen\
		vecadd vecdelete vecreplace vecresize
BONUS	= lstnew lstadd_front lstsize lstlast lstadd_back lstdelone lstclear\
		lstiter lstmap

MAINFILES	= $(addprefix ft_,$(addsuffix .c, $(MAIN)))
BONUSFILES	= $(addprefix ft_,$(addsuffix .c, $(BONUS)))
MAINOBJ	= $(MAINFILES:.c=.o)
BONUSOBJ = $(BONUSFILES:.c=.o)

$(NAME): $(MAINOBJ)
	$(AR) $(ARFLAGS) $@ $^

bonus:	$(BONUSOBJ)
	$(AR) $(ARFLAGS) $(NAME) $^

%.o : %.c
	@$(CC) -c $(CFLAGSS) $(INCFLAG) $< -o $@

clean:
	@rm -f $(MAINOBJ) $(BONUSOBJ)

fclean:	clean
	@rm -f $(NAME)

re:		fclean all

all:	$(NAME) bonus

allclean: all clean

.PHONY: bonus clean fclean re all
