#!/bin/bash

current_version=$(cat ~/DDMJ/version)
update_version=$(curl -s https://raw.githubusercontent.com/Ernest1338/manjaro-iso-build-test1/main/DDMJOS/version)
echo $current_version
echo $update_version
