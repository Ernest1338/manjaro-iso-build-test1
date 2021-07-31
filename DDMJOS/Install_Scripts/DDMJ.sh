#!/bin/bash

# Replacing firefor with brave on the bottom panel
sed -i 's/firefox/brave-browser/' ~/.config/plasma-org.kde.plasma.desktop-appletsrc

# Setting up wallpaper
sudo mkdir /usr/share/wallpapers/DDMJ
sudo wget https://raw.githubusercontent.com/Ernest1338/manjaro-iso-build-test1/main/DDMJOS/1920x1080.png -O /usr/share/wallpapers/DDMJ/1920x1080.png
plasma-apply-wallpaperimage /usr/share/wallpapers/DDMJ/1920x1080.png

# Setupping DDMJ directory if it doesn't exist yet
mkdir ~/DDMJ

# Saving current DDMJ version
curl https://raw.githubusercontent.com/Ernest1338/manjaro-iso-build-test1/main/DDMJOS/version > ~/DDMJ/version

# Setupping global theme
mkdir -p ~/.local/share/plasma/desktoptheme/
git clone https://github.com/yeyushengfan258/Win11OS-kde ~/DDMJ/Win11OS-kde
bash ~/DDMJ/Win11OS-kde/install.sh
lookandfeeltool -a com.github.yeyushengfan258.Win11OS-dark

# Getting the update checker and placing it on the desktop
wget https://raw.githubusercontent.com/Ernest1338/manjaro-iso-build-test1/main/DDMJOS/Install_Scripts/Check%20for%20DDMJ%20OS%20updates.desktop -O ~/Desktop/"Check for DDMJ OS updates.desktop"
sudo chmod +x ~/Desktop/"Check for DDMJ OS updates.desktop"
wget https://raw.githubusercontent.com/Ernest1338/manjaro-iso-build-test1/main/DDMJOS/Install_Scripts/DDMJ_updates.sh -O ~/DDMJ/DDMJ_updates.sh
sudo chmod +x ~/DDMJ/DDMJ_updates.sh

# Removing installation scripts
#rm ~/Desktop/"Transform into DDMJ OS.desktop"
#rm ~/DDMJ/DDMJ.sh

# Restarting plasmashell
pkill plasmashell
plasmashell &
