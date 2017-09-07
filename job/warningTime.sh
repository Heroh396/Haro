# -----------------------------------------------------------------------------
# Project name   :
# File name      : job/warningTime.sh
# Created date   : Thu 07 Sep 2017 10:38:14 AM ICT
# Author         : Huy-Hung Ho
# Last modified  : Thu 07 Sep 2017 10:38:14 AM ICT
# Guide          :
# -----------------------------------------------------------------------------
#!/bin/bash

BASEDIR=$(dirname $(readlink -f "$0"))
bellIcon="$BASEDIR/../icon/bell.png"


notify-send -i $bellIcon 'Haro assistant' 'Sleep computer for relax your eyes.'
