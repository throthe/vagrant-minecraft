#!/bin/sh
# sudo apt-get update

# JAVA 8
sudo DEBIAN_FRONTEND=noninteractive apt-get -y install openjdk-8-jdk openjdk-8-source 
# JAVA 9
# sudo DEBIAN_FRONTEND=noninteractive apt-get -y install openjdk-9-jdk openjdk-9-source

touch /home/$(whoami)/.bashrc
echo "export JAVA_HOME=$(/bin/readlink -f /usr/bin/javac | sed 's:/bin/javac::')" >> /home/$(whoami)/.bashrc
