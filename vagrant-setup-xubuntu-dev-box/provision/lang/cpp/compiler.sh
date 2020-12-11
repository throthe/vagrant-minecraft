#!/bin/sh

sudo DEBIAN_FRONTEND=noninteractive apt-get -y install software-properties-common
sudo add-apt-repository -y ppa:ubuntu-toolchain-r/test 

sudo apt-get update
sudo DEBIAN_FRONTEND=noninteractive apt-get -y install gcc-snapshot
sudo apt-get update 

# C++ 6
sudo DEBIAN_FRONTEND=noninteractive apt-get -y install gcc-6 g++-6
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-6 60 --slave /usr/bin/g++ g++ /usr/bin/g++-6 

# C++ 4.8
sudo DEBIAN_FRONTEND=noninteractive apt-get -y install gcc-4.8 g++-4.8 
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.8 60 --slave /usr/bin/g++ g++ /usr/bin/g++-4.8

# !! When completed, you must change to the gcc you want to work with by default. Type in your terminal:
# sudo update-alternatives --config gcc