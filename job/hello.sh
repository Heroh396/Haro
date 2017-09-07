# -----------------------------------------------------------------------------
# Project name   :
# File name      : hello.sh
# Created date   : Wed 06 Sep 2017 02:45:11 PM ICT
# Author         : Huy-Hung Ho
# Last modified  : Wed 06 Sep 2017 03:38:03 PM ICT
# Guide          :
# -----------------------------------------------------------------------------
#!/bin/bash
BASEDIR=$(dirname $(readlink -f "$0"))
bellIcon="$BASEDIR/../icon/bell.png"

if  [ `date +"%H%M"` -le 1200 ]
then
	notify-send -i $bellIcon 'Haro assistant' 'Good moring, sir! \n Have a good day.'
elif [ `date +"%H%M"` -le 1800 ]
then
	notify-send -i $bellIcon 'Haro assistant' 'Good afternoon, sir! \n Best wishes for you.'
else
	notify-send -i $bellIcon 'Haro assistant' 'Good evening, sir! \n Relax and sleep soon.'
fi
