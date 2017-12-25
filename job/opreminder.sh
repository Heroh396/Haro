# -----------------------------------------------------------------------------
# Project name   :
# File name      : opreminder.sh
# Created date   : Fri 08 Sep 2017 11:44:22 AM ICT
# Author         : Huy-Hung Ho
# Last modified  : Fri 08 Sep 2017 11:44:22 AM ICT
# Guide          :
# -----------------------------------------------------------------------------
#!/bin/bash

#One Piece Manga reminder
#I created a file named .newop that contains the latest chapter.
let new=$(cat ~/.newop)
wget --read-timeout=30 -t20 -O one-piece.html http://www.mangareader.net/103/one-piece.html

if (( $(cat .opreminder.txt | grep "One Piece $new" | wc -l) >=1 ))
then
    (( new+=1 ))
    echo $new
    echo $new > ~/.newop
    /usr/bin/notify-send "A new chapter of One Piece was released."
else
    /usr/bin/notify-send "No new chapter for One Piece."
    /usr/bin/notify-send "The latest chapter is still $new."
fi
exit
