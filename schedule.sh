# -----------------------------------------------------------------------------
# Project name   :
# File name      : schedule-everyday.sh
# Created date   : Wed 06 Sep 2017 02:45:11 PM ICT
# Author         : Huy-Hung Ho
# Last modified  : Wed 06 Sep 2017 02:45:11 PM ICT
# Guide          :
# -----------------------------------------------------------------------------
#!/bin/bash

# Requirement
env DISPLAY=:0

# Some variables
helloTime="03:40"

# Resting my eyes
sleepTime="08:50 09:50 10:50 11:50 12:50 13:50 14:50 15:50 16:50 20:50 21:50
22:50 23:50"
for time in $helloTime
do
	at -f job/lock.sh $time
done


# Greeting
at -f job/hello.sh now + 5 minutes
