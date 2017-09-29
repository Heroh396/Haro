# -----------------------------------------------------------------------------
# Project name   :
# File name      : learnVoc.sh
# Created date   : Fri 08 Sep 2017 11:08:39 AM ICT
# Author         : Huy-Hung Ho
# Last modified  : Fri 08 Sep 2017 11:08:39 AM ICT
# Guide          :
# -----------------------------------------------------------------------------
#!/bin/bash

# Requirement
eval "export $(egrep -z DBUS_SESSION_BUS_ADDRESS /proc/$(pgrep -u $LOGNAME gnome-session)/environ)"
#export DISPLAY=:0.0

# Variable
BASEDIR=$(dirname $(readlink -m "$0"))
icon="$BASEDIR/../icon/english.png"
voc="$BASEDIR/../text/voc.txt"

# Command
notify-send -i $icon "Haro assistant" "$(head -n 1 $voc)"
if (command -v crontab >/dev/null 2>&1) then
	head -n 1 $voc | awk '{print $1;}' | xclip -selection clipboard
else
	head -n 1 $voc | awk '{print $1;}'
fi

awk '{ if ( NR == 1 ) { store=$0 } else { print } }END{ print store }' $voc > tmp.txt
mv tmp.txt $voc
