#!/bin/bash

# Replacing firefox with brave on the bottom panel
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
lookandfeeltool -a org.kde.breezedark.desktop

# Getting the update checker and placing it on the desktop
wget https://raw.githubusercontent.com/Ernest1338/manjaro-iso-build-test1/main/DDMJOS/Install_Scripts/Check%20for%20DDMJ%20OS%20updates.desktop -O ~/Desktop/"Check for DDMJ OS updates.desktop"
sudo chmod +x ~/Desktop/"Check for DDMJ OS updates.desktop"
wget https://raw.githubusercontent.com/Ernest1338/manjaro-iso-build-test1/main/DDMJOS/Install_Scripts/DDMJ_updates.sh -O ~/DDMJ/DDMJ_updates.sh
sudo chmod +x ~/DDMJ/DDMJ_updates.sh

# Configuring KWIN
kwriteconfig5 --file $HOME/.config/kwinrc --group Plugins --key contrastEnabled "True"

# Configuring breeze
kwriteconfig5 --file $HOME/.config/breezerc --group Style --key MenuOpacity "50"

# Configuring menu button
wget https://raw.githubusercontent.com/Ernest1338/manjaro-iso-build-test1/main/DDMJOS/ddmj_logo.png -O ~/DDMJ/ddmj_logo.png
kwriteconfig5 --file $HOME/.config/plasma-org.kde.plasma.desktop-appletsrc --group Containments --group 1 --group Applets --group 2 --group Configuration --group General --key icon "$HOME/DDMJ/ddmj_logo.png"

# Removing installation scripts
rm ~/Desktop/"Transform into DDMJ OS.desktop"
rm ~/DDMJ/DDMJ.sh

# Restarting plasmashell
pkill plasmashell
plasmashell &

# Welcome user
sleep 10
notify-send --expire-time=30000 --icon="alienarena" --app-name="DDMJ OS" "Installation complete" "Welcome in the DDMJ OS"
