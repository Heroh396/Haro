# -----------------------------------------------------------------------------
# Project name   :
# File name      : run.sh
# Created date   : Wed 06 Sep 2017 02:45:11 PM ICT
# Author         : Huy-Hung Ho
# Last modified  : Fri 08 Sep 2017 09:20:02 PM ICT
# Guide          :
# -----------------------------------------------------------------------------
#!/bin/bash

# Requirement
#for i in `atq | awk '{print $1}'`;do atrm $i;done
export DISPLAY=:0

# Variable
BASEDIR=$(dirname $(readlink -m "$0"))
PATH="$BASEDIR/execute:$PATH"

# Install app
command -v notify-send >/dev/null 2>&1 	|| sudo apt-get install notify-send
command -v at >/dev/null 2>&1 			|| sudo apt-get install at
command -v crontab >/dev/null 2>&1 		|| sudo apt-get install crontab

# Permission
chmod u+x $BASEDIR/job/*.sh $BASEDIR/*.sh $BASEDIR/execute/*

# Resting my eyes
if [[ $(crontab -l | grep -c warningTime) -eq 0 ]]
then
	(crontab -l ; echo "50 * * * * $BASEDIR/job/warningTime.sh") | crontab -
	(crontab -l ; echo "51 * * * * $BASEDIR/job/lock.sh") | crontab -
	(crontab -l ; echo "*/2 * * * * $BASEDIR/job/learnVoc.sh") | crontab -
fi

# Greeting
if [[ $(grep -c warningTime ~/.profile) -eq 0 ]]
then
	echo "at -f "$BASEDIR/job/greeting.sh" now + 1 minute 2> /dev/null" >> ~/.profile
	echo "at -f "$BASEDIR/job/weather.sh" now + 2 minute 2> /dev/null" >> ~/.profile
	echo "PATH=\"$BASEDIR/execute:\$PATH\"" >> ~/.profile
fi
