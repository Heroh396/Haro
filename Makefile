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

SRCS := $(wildcard job/*.$(LANG))


all : $(SRCS)
	chmod u+x $(SRCS) schedule.sh
	@echo "sh $(PWD)/schedule.sh" >> ~/.profile
	@echo "You must restart your computer to apply these changes."

clean :
	@sed -i '/schedule.sh/d' ~/.profile
