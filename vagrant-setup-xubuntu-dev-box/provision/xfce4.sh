#!/bin/sh
sudo DEBIAN_FRONTEND=noninteractive apt-get -y install xubuntu-core^
sudo DEBIAN_FRONTEND=noninteractive apt-get -y install xserver-xorg-legacy
sudo DEBIAN_FRONTEND=noninteractive apt-get -y install virtualbox-guest-dkms virtualbox-guest-utils virtualbox-guest-x11
sudo VBoxClient --checkhostversion
sudo VBoxClient --clipboard
sudo VBoxClient --display
sudo VBoxClient --draganddrop
sudo VBoxClient --seamless

# Enhance fonts in xfce4
# sudo xfconf-query -c xsettings -p /Xft/Antialias -s 1
# sudo xfconf-query -c xsettings -p /Xft/HintStyle -s hintmedium
# sudo xfconf-query -c xsettings -p /Xft/DPI -s 96

echo "$(whoami):$(whoami)" | sudo chpasswd