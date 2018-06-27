#!/bin/bash
##
## EPITECH PROJECT, 2018
## SYN_automakefile_2017
## File description:
## create config for automakefile by yosmont
##

ask_var()
{
	read -sp "do you want a $1 ? [Yy|Nn]" yon
	echo
	if [ $yon == "Y" -o $yon == "y" ]; then
		create_var $1
	elif [ $yon != "N" -a $yon != "n" ]; then
		ask_var $1
	fi
}

create_var()
{
	read -p "$1 value: " value
	if [ $1 == "source_filename" ]; then
		echo "$value" >> $config_name
	else
		echo "$1;$value" >> $config_name
	fi
}

call_automakefile()
{
	if [ -e automakefile ];then
		while [ $check == 0 ]; do
			read -sp "do you want a execute your automakefile with ? [Yy|Nn]" yon
			echo
			if [ $yon == "Y" -o $yon == "y" ]; then
				./automakefile $config_name
				echo
				echo "__________automakefile_________"
				cat Makefile
				echo "**********END********"
				echo
				check=1
			elif [ $yon == "N" -a $yon == "n" ]; then
				check=1
			fi
		done
	else
		echo "no automakefile found in this directory"
		read -sp "do you have it in command or alias ? [Yy|Nn]" yon
		echo
		if [ $yon == "Y" -o $yon == "y" ]; then
			automakefile $config_name
			echo
			echo "__________automakefile_________"
			cat Makefile
			echo "**********END********"
			check=1
		elif [ $yon == "N" -a $yon == "n" ]; then
			check=1
		fi
	fi
}

echo "******************************"
echo "** create config by yosmont **"
echo "******************************"
echo
read -p "config file name: " config_name
if [ -e $config_name ];then
	rm $config_name
fi
touch $config_name
var_mandatory_name=("source_filename" "PROJECT_DIR")
var_name=("HEADERS_DIR" "LIBS_DIR" "EXEC" "CC" "CFLAGS" "LDFLAGS" "BCK_DIR" "ZIP" "ZIPFLAGS" "UNZIP" "UNZIPFLAGS")
ask_var "SOURCE_DIR"
for i in ${var_mandatory_name[@]}; do
	create_var $i
done
for i in ${var_name[@]}; do
	ask_var $i
done
check=0
echo
echo "_________"$config_name"__________"
cat $config_name
echo "**********END********"
echo
call_automakefile
