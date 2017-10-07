#!/usr/bin/env bash

#file: makefile for Unix assignment guessinggame.sh
#makefile is used to create README.md for the project


all: README.md
README.md:
	touch README.md
	echo "# **Unix Assignment - Guessing game**" > README.md
	echo "# guessinggame.sh" >> README.md
	echo "make run on $(date)" >> README.md
	echo "Number of lines of code in guessinggame.sh $(grep -c -P '\S' guessinggame.sh)" >> README.md


