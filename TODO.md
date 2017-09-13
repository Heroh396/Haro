<!---
/*******************************************************************************
// Project name   :
// File name      : TODO.md
// Created date   : Tue 08 Aug 2017 04:50:01 PM ICT
// Author         : Huy-Hung Ho
// Last modified  : Tue 08 Aug 2017 04:50:01 PM ICT
// Desc           :
*******************************************************************************/
-->

gnome-screensaver-command -a

at -f filename.sh now + 1 minutes

notify-send -i imgFile.jpg "Title" "notification information"

unity-mail

eval "export $(egrep -z DBUS_SESSION_BUS_ADDRESS /proc/$(pgrep -u $LOGNAME gnome-session)/environ)";
/usr/bin/notify-send -i /home/Working/Project/haro/icon/bell.png "Haro assistant" "Hello world!"
awk '{ if ( NR == 1 ) { store=$0 } else { print } }END{ print store }' test1.txt > test2.txt; mv test2.txt test1.txt;

---------------
Xclip is an application that needs environment variables such as $XAUTHORITY and $DISPLAY to talk to the X11-server. You can create a cronjob the looks as follows:

/bin/su your_username -c "export XAUTHORITY='/home/your_username/.Xauthority'; export DISPLAY='$(strings /proc/$(pgrep -n Xorg)/environ | awk -F== '$1 ~ "DISPLAY"{print $2}')'; echo -n "message" | xclip -selection clipboard"

Use your own username instead of your_username. It is a long line, but cron doesn't accept multiple lines as cronjob entries. However, here is what it does:

- /bin/su your_username: it switches the user
- -c "...": and runs the command in the quotes
- export XAUTHORITY='...';: first we need the $XAUTHORITY variable
- export DISPLAY='...': and the $DISPLAY variable, this is mostly :0, but if not, we can get the variable from the environment of the Xorg process
- echo ... | xclip ...: finally run the desired command within that environment.  No need to use absolute paths anymore because we have a minimal environment now.
