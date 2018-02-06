#!/bin/sh

# Install minecraft server
# web: http://www.boost.org/

# URL
MINECRAFT_SERVER_URL="https://s3.amazonaws.com/Minecraft.Download/versions/1.12.2/minecraft_server.1.12.2.jar"
MINECRAFT_SERVER_VERSION="1_12_2"

# Download Minecraft Server into shared folder
if [ ! -f /vagrant_data/minecraft_server.1.12.2.jar ]; then
  echo 'Downloading Minecraft Server' .$MINECRAFT_SERVER_VERSION.;
  curl -fsSL --output /vagrant_data/minecraft_server.1.12.2.jar $MINECRAFT_SERVER_URL
  sudo mv -i /vagrant_data/minecraft_server.1.12.2.jar /srv/minecraft_server.jar
fi

# set up a user and group for minecraft so that it doesn't run as root
sudo adduser --system --home /srv/minecraft-server minecraft
sudo addgroup --system minecraft

# this adds user "minecraft" the group "minecraft"
sudo adduser minecraft minecraft 

# hand your server-installation over to our new user, 
# in /srv/minecraft-server
sudo chown -R minecraft.minecraft /srv/minecraft-server

if [ ! -f /etc/init/minecraft-server.conf ]; then
    printf "# description 'start and stop the minecraft-server'" > /etc/init/minecraft-server.conf;
    printf "start on runlevel [2345]" > /etc/init/minecraft-server.conf;
    printf "stop on runlevel [^2345]" > /etc/init/minecraft-server.conf;
    printf "console log" > /etc/init/minecraft-server.conf;
    printf "chdir /srv/" > /etc/init/minecraft-server.conf;
    printf "setuid minecraft" > /etc/init/minecraft-server.conf;
    printf "setgid minecraft" > /etc/init/minecraft-server.conf;
    printf "respawn" > /etc/init/minecraft-server.conf;
    printf "respawn limit 20 5" > /etc/init/minecraft-server.conf;
    printf "xec /usr/bin/java -Xms1536M -Xmx2048M -jar minecraft_server.jar nogui" > /etc/init/minecraft-server.conf;
fi;