#!/bin/bash

current_version=$(cat ~/DDMJ/version)
update_version=$(curl -s https://raw.githubusercontent.com/Ernest1338/manjaro-iso-build-test1/main/DDMJOS/version)
if [ $current_version -lt $update_version ]
then
    notify-send --expire-time=30000 --icon="alienarena" --app-name="DDMJ OS Updater" "Update available - New version: v$update_version.0" "Starting an update in 30 seconds"
    sleep 30
    notify-send --icon="alienarena" --app-name="DDMJ OS Updater" "Updating..."
    wget https://raw.githubusercontent.com/Ernest1338/manjaro-iso-build-test1/main/DDMJOS/Install_Scripts/DDMJ.sh -O ~/DDMJ/DDMJ.sh
    sudo chmod +x ~/DDMJ/DDMJ.sh
    bash ~/DDMJ/DDMJ.sh
    notify-send --icon="alienarena" --app-name="DDMJ OS Updater" "Update complete"
else
    notify-send --icon="alienarena" --app-name="DDMJ OS Updater" "Everything is up-to-date"
fi
