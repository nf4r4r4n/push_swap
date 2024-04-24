# GLOBAL VARIABLES
CFLAGS = -Wall -Wextra -Werror

# MANDATORY PART
NAME = push_swap
SRCS = src/push_swap.c main.c
OBJS = $(SRCS:.c=.o)
LIBFT = ./ft/libft.a

all:	$(NAME)

$(NAME):
	@make -C ./ft
	cc $(CFLAGS) -I include -o $(NAME) $(SRCS) $(LIBFT)

clean:
	@make -C ./ft clean
	@rm -f $(OBJS) && echo "PUSH_SWAP:     clean"

fclean:	clean
	@make -C ./ft fclean
	@rm -f $(NAME) && echo "PUSH_SWAP:     fclean"

re: fclean all

.PHONY: all clean fclean re
