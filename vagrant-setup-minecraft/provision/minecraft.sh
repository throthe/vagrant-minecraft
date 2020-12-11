#!/bin/sh

# Install minecraft server

# VARIABLES
MINECRAFT_SERVER_URL="https://s3.amazonaws.com/Minecraft.Download/versions/1.12.2/minecraft_server.1.12.2.jar"
MINECRAFT_SERVER_VERSION="1_12_2"
MINECRAFT_BASE_FOLDER="/srv/minecraft-server"


# Download Minecraft Server into shared folder
if [ ! -f /vagrant_data/minecraft_server.1.12.2.jar ]; then
  echo 'Downloading Minecraft Server' .$MINECRAFT_SERVER_VERSION.;
  curl -fsSL --output /vagrant_data/minecraft_server.1.12.2.jar $MINECRAFT_SERVER_URL
fi

if [ ! -d "$MINECRAFT_BASE_FOLDER" ]; then
  sudo mkdir "$MINECRAFT_BASE_FOLDER"
fi

if [ ! -d "$MINECRAFT_BASE_FOLDER/plugins" ]; then
  sudo mkdir "$MINECRAFT_BASE_FOLDER/plugins"
fi

sudo cp -f /vagrant_data/minecraft_server.1.12.2.jar /srv/minecraft-server/
sudo cp -f /vagrant_data/worldedit-bukkit-6.1.7.3.jar /srv/minecraft-server/plugins
sudo cp -f /vagrant_data/Essentials-2.x-SNAPSHOT.jar /srv/minecraft-server/plugins

# set up a user and group for minecraft so that it doesn't run as root
sudo adduser --system --home /srv/minecraft-server minecraft
sudo addgroup --system minecraft

# this adds user "minecraft" the group "minecraft"
sudo adduser minecraft minecraft 

# hand your server-installation over to our new user, 
# in /srv/minecraft-server
sudo chown -R minecraft.minecraft /srv/minecraft-server

sudo cp -n /vagrant_data/minecraft-server.service /etc/systemd/system/minecraft-server.service