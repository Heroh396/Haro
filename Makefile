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

all :
	@echo "sh $(PWD)/schedule.sh" >> ~/.profile
	@echo "You must restart your computer to apply these changes."

clean :
	@sed -i '/schedule.sh/d' ~/.profile
