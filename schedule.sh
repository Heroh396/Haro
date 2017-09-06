# -----------------------------------------------------------------------------
# Project name   :
# File name      : schedule.sh
# Created date   : Wed 06 Sep 2017 02:45:11 PM ICT
# Author         : Huy-Hung Ho
# Last modified  : Wed 06 Sep 2017 11:53:49 PM ICT
# Guide          :
# -----------------------------------------------------------------------------
#!/bin/bash


# Requirement
#for i in `atq | awk '{print $1}'`;do atrm $i;done
env DISPLAY=:0

# Some variables
root="/home/Working/Project/haro"

# Resting my eyes
restTime="09:50 10:50 11:50 12:50 13:50 14:50 15:50 16:50 20:50 21:50
22:50 23:50"

for time in $restTime
do
	at -f $root/job/lock.sh $time
done


# Greeting
at -f $root/job/hello.sh now + 1 minutes
