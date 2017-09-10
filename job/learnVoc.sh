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
eval "export $(egrep -z DBUS_SESSION_BUS_ADDRESS /proc/$(pgrep -u $LOGNAME gnome-session)/environ)";

# Variable
BASEDIR=$(dirname $(readlink -m "$0"))
icon="$BASEDIR/../icon/english.png"

# Command
notify-send -i $icon "Haro assistant" "$(head -n 1 $BASEDIR/../voc.txt)"

awk '{ if ( NR == 1 ) { store=$0 } else { print } }END{ print store }' $BASEDIR/../voc.txt > $BASEDIR/../tmp.txt
mv $BASEDIR/../tmp.txt $BASEDIR/../voc.txt
#/usr/bin/goldendict hello
