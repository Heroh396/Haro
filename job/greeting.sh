# -----------------------------------------------------------------------------
# Project name   :
# File name      : hello.sh
# Created date   : Wed 06 Sep 2017 02:45:11 PM ICT
# Author         : Huy-Hung Ho
# Last modified  : Wed 06 Sep 2017 03:38:03 PM ICT
# Guide          :
# -----------------------------------------------------------------------------
#!/bin/bash

# Requirement
eval "export $(egrep -z DBUS_SESSION_BUS_ADDRESS /proc/$(pgrep -u $LOGNAME gnome-session)/environ)";

# Variable
BASEDIR=$(dirname $(readlink -m "$0"))
icon="$BASEDIR/../icon/smile.png"

# Command
if  [ `date +"%H%M"` -le 1200 ]
then
	notify-send -i $icon 'Haro assistant' 'Good moring, sir! \n Have a good day.'
elif [ `date +"%H%M"` -le 1800 ]
then
	notify-send -i $icon 'Haro assistant' 'Good afternoon, sir! \n Best wishes for you.'
else
	notify-send -i $icon 'Haro assistant' 'Good evening, sir! \n Relax and sleep soon.'
fi
