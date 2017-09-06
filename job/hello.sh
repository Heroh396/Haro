# -----------------------------------------------------------------------------
# Project name   :
# File name      : hello.sh
# Created date   : Wed 06 Sep 2017 02:45:11 PM ICT
# Author         : Huy-Hung Ho
# Last modified  : Wed 06 Sep 2017 03:38:03 PM ICT
# Guide          :
# -----------------------------------------------------------------------------
#!/bin/bash
bellIcon="/home/Working/Project/haro/icon/bell.png"

if  [ `date +"%H%M"` -le 1200 ]
then
	notify-send -i $bellIcon 'Good moring, sir!' 'Have a good day'
elif [ `date +"%H%M"` -le 1800 ]
then
	notify-send -i $bellIcon 'Good afternoon, sir!' 'Best wishes for sir'
else
	notify-send -i $bellIcon 'Good evening, sir!' 'Relax and sleep soon :D'
fi
