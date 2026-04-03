##
## EPITECH PROJECT, 2026
## Makefile
## File description:
## makfile
##

##
## EPITECH PROJECT, 2025
## Makefile
## File description:
## tenz
##

SRC     = main.c \

OBJ     = $(SRC:.c=.o)
NAME    = main
CFLAGS  = -I./include
LDFLAGS = -lm

all: $(NAME)

$(NAME): $(OBJ)
	epiclang $(OBJ) $(CFLAGS) -o $(NAME) $(LDFLAGS)

%.o: %.c
	epiclang $(CFLAGS) -c $< -o $@

clean:
	@$(RM) $(OBJ)

fclean: clean
	@$(RM) $(NAME)

re: fclean all