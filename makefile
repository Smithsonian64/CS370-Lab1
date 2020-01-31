# makefile for Lab1
# Michael Smith
# January 24 2020
# Creates the executable lab1 from wordlengthlab1.l

all:	lab1 #executable

lab1:	lex.yy.c #c file from lex
	gcc -o lab1 lex.yy.c

lex.yy.c:	wordlengthlab1.l #lex file
	lex wordlengthlab1.l
