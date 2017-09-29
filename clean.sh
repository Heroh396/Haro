# -----------------------------------------------------------------------------
# Project name   :
# File name      : clean.sh
# Created date   : Fri 08 Sep 2017 09:23:31 PM ICT
# Author         : Huy-Hung Ho
# Last modified  : Fri 08 Sep 2017 09:23:31 PM ICT
# Guide          :
# -----------------------------------------------------------------------------
#!/bin/bash

# Delete full cron job
crontab -r

# Delete in .profile
sed -i '/greeting.sh/d' ~/.profile
sed -i '/weather.sh/d' ~/.profile
sed -i '/execute/d' ~/.profile
