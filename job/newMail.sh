# -----------------------------------------------------------------------------
# Project name   :
# File name      : newMail.sh
# Created date   : Thu 07 Sep 2017 02:55:05 PM ICT
# Author         : Huy-Hung Ho
# Last modified  : Thu 07 Sep 2017 02:55:05 PM ICT
# Guide          :
# -----------------------------------------------------------------------------
#!/bin/bash

# Requirement
eval "export $(egrep -z DBUS_SESSION_BUS_ADDRESS /proc/$(pgrep -u $LOGNAME gnome-session)/environ)";

# Variable
BASEDIR=$(dirname $(readlink -m "$0"))
icon="$BASEDIR/../icon/mail.png"

# Variable
notify-send -i $icon 'Haro assistant' 'You have new mail.'
