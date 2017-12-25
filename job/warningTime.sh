# -----------------------------------------------------------------------------
# Project name   :
# File name      : job/warningTime.sh
# Created date   : Thu 07 Sep 2017 10:38:14 AM ICT
# Author         : Huy-Hung Ho
# Last modified  : Thu 07 Sep 2017 10:38:14 AM ICT
# Guide          :
# -----------------------------------------------------------------------------
#!/bin/bash

# Requerement
eval "export $(egrep -z DBUS_SESSION_BUS_ADDRESS /proc/$(pgrep -u $LOGNAME gnome-session)/environ)";

# Variable
BASEDIR=$(dirname $(readlink -f "$0"))
icon="$BASEDIR/../icon/relax.png"

# Command
notify-send -i $icon 'Haro assistant' 'Sleep computer for relax your eyes.\n The computer will sleep after 1 minute.'
