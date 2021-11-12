SRCS			= format.c format_2.c parse.c printf.c utils.c utils_2.c write.c write_2.c

OBJS			= $(SRCS:.c=.o)

CC				= gcc
RM				= rm -f
CFLAGS			= -Wall -Wextra -Werror -I.

NAME			= libftprintf.a

all:			$(NAME)

$(NAME):		libft $(OBJS)
				ar rcs $(NAME) $(OBJS)

libft:			
				cd ./libft/ && make && make clean
				mv ./libft/libft.a libftprintf.a

bonus:			all

clean:
				$(RM) $(OBJS)

fclean:			clean
				$(RM) $(NAME)

re:				fclean $(NAME)

.PHONY:			all clean fclean re libft bonus