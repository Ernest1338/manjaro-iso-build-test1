#!/bin/bash

# Replacing firefor with brave on the bottom panel
sed -i 's/firefox/brave-browser/' ~/.config/plasma-org.kde.plasma.desktop-appletsrc

# Setting up wallpaper
sudo mkdir /usr/share/wallpapers/DDMJ
sudo wget https://raw.githubusercontent.com/Ernest1338/manjaro-iso-build-test1/main/DDMJOS/1920x1080.png -O /usr/share/wallpapers/DDMJ/1920x1080.png
plasma-apply-wallpaperimage /usr/share/wallpapers/DDMJ/1920x1080.png

# Restarting plasmashell
pkill plasmashell
plasmashell &
