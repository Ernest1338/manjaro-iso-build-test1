#!/bin/bash

# Replacing firefor with brave on the bottom panel
sed -i 's/firefox/brave-browser/' ~/.config/plasma-org.kde.plasma.desktop-appletsrc

# Setting up wallpaper
sudo mkdir /usr/share/wallpapers/DDMJ
sudo wget https://raw.githubusercontent.com/Ernest1338/manjaro-iso-build-test1/main/DDMJOS/1920x1080.png -O /usr/share/wallpapers/DDMJ/1920x1080.png
plasma-apply-wallpaperimage /usr/share/wallpapers/DDMJ/1920x1080.png

# Setupping DDMJ directory
mkdir ~/DDMJ

# Getting the update checker and placing it on the desktop
wget https://raw.githubusercontent.com/Ernest1338/manjaro-iso-build-test1/main/DDMJOS/Install_Scripts/Check%20for%20DDMJ%20OS%20updates.desktop -O ~/Desktop/"Check for DDMJ OS updates.desktop"
sudo chmod +x ~/Desktop/"Check for DDMJ OS updates.desktop"
wget https://raw.githubusercontent.com/Ernest1338/manjaro-iso-build-test1/main/DDMJOS/Install_Scripts/DDMJ_updates.sh -O ~/DDMJ/DDMJ_updates.sh
sudo chmod +x ~/DDMJ/DDMJ_updates.sh

# Restarting plasmashell
pkill plasmashell
plasmashell &
