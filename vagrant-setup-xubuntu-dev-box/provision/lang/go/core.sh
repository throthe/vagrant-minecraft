#!/bin/sh


# Add Repo
sudo add-apt-repository -y ppa:gophers/archive
# Update apt-get
sudo apt-get update

sudo DEBIAN_FRONTEND=noninteractive apt-get -y golang-1.9-go

# !! Note that golang-1.9-go puts binaries in /usr/lib/go-1.9/bin. 
# !! If you want them on your PATH, you need to make that change yourself 

