##
## EPITECH PROJECT, 2018
## yet another Makefile for test
## File description:
## build executable_name, YAM!
##

SRC	=	subfolder_containing_the_source_files/dependence1	\
		subfolder_containing_the_source_files/dependence2	\

PROJECT_DIR = test

SOURCES_DIR = subfolder_containing_the_source_files

HEADERS_DIR = subfolder_containing_the_header_files

LIBS_DIR = subfolder_containing_librairies

EXEC = executable_name

CC = compilator_binary

CFLAGS = compilation_flag1 compilation_flag1

LDFLAGS = linking_flag1 linking_flag2

BCK_DIR = name_of_the_backup_folder

ZIP = compression_binary

ZIPFLAGS = compression_options

UNZIP = decompression_binary

UNZIPFLAGS = decompression_options

OBJ	=	$(SRC:.c=.o)

VERSION	=	1_0

all:		$(OBJ)
	$(MAKE) -C $(LIBS_DIR)
	$(CC) $(OBJ) -o $(EXEC) $(CFLAGS) -I$(HEADERS_DIR) -L$(LIBS_DIR) $(LDFLAGS)

clean:
	$(MAKE) -C $(LIBS_DIR) clean
	rm -f $(OBJ)

fclean:		clean
	$(MAKE) -C $(LIBS_DIR) fclean
	rm -f a.out

re:		fclean all

num:
	@echo "$(VERSION)"

archive:
	mkdir -p $(BCK_DIR)
	$(ZIP) $(ZIPFLAGS) $(BCK_DIR)/backup$(VERSION).$(ZIP) $(SRC)
	@echo "backup$(VERSION).$(ZIP) file generated."

revert:
	$(UNZIP) $(UNZIPFLAGS) $(BCK_DIR)/backup$(VERSION).$(ZIP)

delete:
	rm $(BCK_DIR)/backup$(VERSION).$(ZIP)

.PHONY: all clean fclean re num archive revert delete
