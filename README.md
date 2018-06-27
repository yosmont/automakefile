# automakefile
Epitech SYN_automakefile_2017 project

The goal was to use config file for create new makefile

Usage: ./automakefile config_path

exemple of a config file:

dependence1.c dependence2.c
PROJECT_DIR;test
SOURCES_DIR;subfolder_containing_the_source_files
HEADERS_DIR;subfolder_containing_the_header_files
LIBS_DIR;subfolder_containing_librairies
EXEC;executable_name
CC;compilator_binary
CFLAGS;compilation_flag1 compilation_flag1
LDFLAGS;linking_flag1 linking_flag2
BCK_DIR;name_of_the_backup_folder
ZIP;compression_binary
ZIPFLAGS;compression_options
UNZIP;decompression_binary
UNZIPFLAGS;decompression_options

only line with .c file and PROJECT_DIR are mandatory, the order isn't important

# create_config.sh
you can easely create your config file with create_config.sh

Usage: ./create_config.sh config_path
