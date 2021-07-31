#!/bin/bash

# To quickly get and run: curl -sSfL https://tinyurl.com/ddmjos1 | bash

# Making DDMJ directory if it doesn't yet exists
mkdir ~/DDMJ

# Getting the install scripts and placing them in the proper directories
wget https://raw.githubusercontent.com/Ernest1338/manjaro-iso-build-test1/main/DDMJOS/Install_Scripts/DDMJ.sh -O ~/DDMJ/DDMJ.sh
wget https://raw.githubusercontent.com/Ernest1338/manjaro-iso-build-test1/main/DDMJOS/Install_Scripts/Transform%20into%20DDMJ%20OS.desktop -O ~/Desktop/"Transform into DDMJ OS.desktop"
sudo chmod +x ~/Desktop/"Transform into DDMJ OS.desktop"
