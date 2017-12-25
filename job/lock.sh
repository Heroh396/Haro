# -----------------------------------------------------------------------------
# Project name   :
# File name      : look.sh
# Created date   : Wed 06 Sep 2017 03:23:10 PM ICT
# Author         : Huy-Hung Ho
# Last modified  : Wed 06 Sep 2017 03:23:10 PM ICT
# Guide          :
# -----------------------------------------------------------------------------
#!/bin/bash

# Requirement
eval "export $(egrep -z DBUS_SESSION_BUS_ADDRESS /proc/$(pgrep -u $LOGNAME gnome-session)/environ)";

sleep 1
gnome-screensaver-command -la

