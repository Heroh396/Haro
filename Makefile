##############################################################################
# Project name   :
# File name      : Makefile
# Last modified  : Wed 16 Aug 2017 01:06:42 AM ICT
# Guide          :
###############################################################################
.PHONY: all clean

LANG	:= sh
CFLAGS  +=
LFLAGS 	+=
TARGET 	:=
CLEAR_SCREEN := clear

vpath %.sh 			job
vpath %.png %.jpg 	icon

SRCS := $(wildcard sh/*.$(LANG))

all : $(SRCS)
	sh $(SRCS)

clean :
