#!/bin/sh

# Install minecraft bukkit server

# VARIABLES
MINECRAFT_SPIGOT_BT_URL="https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar"
MINECRAFT_SERVER_VERSION="1.8"
MINECRAFT_SPIGOT_FOLDER="/srv/minecraft-spigot"


# Download Minecraft Server into shared folder
if [ ! -f /vagrant_data/BuildTools.jar ]; then
  echo 'Downloading Spigot Build Tools' .$MINECRAFT_SPIGOT_BT_URL.;
  curl -fsSL --output /vagrant_data/BuildTools.jar $MINECRAFT_SPIGOT_BT_URL
fi

if [ ! -d "$MINECRAFT_SPIGOT_FOLDER" ]; then
  sudo mkdir "$MINECRAFT_SPIGOT_FOLDER";
  sudo cp -f /vagrant_data/BuildTools.jar "$MINECRAFT_SPIGOT_FOLDER/"
fi

# sudo java -jar BuildTools.jar --rev 1.12.2