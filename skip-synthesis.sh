#!/bin/sh
## EPITECH PROJECT, 2018
## automakefile
## File description:
## skip synthesis
##

awk '{print $3, "\t", $9}' | grep \ $1
