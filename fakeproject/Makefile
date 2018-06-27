##
## EPITECH PROJECT, 2018
## yet another Makefile for .
## File description:
## build doom, YAM!
##

SRC	=	src/main.c	\
		src/bfg.c	\
		src/gzdoom.c	\

SOURCES_DIR = src

PROJECT_DIR = .

HEADERS_DIR = include

EXEC = doom

CC = gcc

CFLAGS = -Wall -Wextra -O2

BCK_DIR = backup

ZIP = zip

UNZIP = unzip

OBJ	=	$(SRC:.c=.o)

VERSION	=	1_0

all:		$(OBJ)
	$(CC) $(OBJ) -o $(EXEC) $(CFLAGS) -I$(HEADERS_DIR)

clean:
	rm -f $(OBJ)

fclean:		clean
	rm -f a.out

re:		fclean all

num:
	@echo "$(VERSION)"

archive:
	mkdir -p $(BCK_DIR)
	$(ZIP) $(BCK_DIR)/backup$(VERSION).$(ZIP) $(SRC)
	@echo "backup$(VERSION).$(ZIP) file generated."

revert:
	$(UNZIP) $(BCK_DIR)/backup$(VERSION).$(ZIP)

delete:
	rm $(BCK_DIR)/backup$(VERSION).$(ZIP)

.PHONY: all clean fclean re num archive revert delete
