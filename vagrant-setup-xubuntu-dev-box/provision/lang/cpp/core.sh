#!/bin/sh

# Install build-essential
# web: https://packages.ubuntu.com/xenial/build-essential

sudo DEBIAN_FRONTEND=noninteractive apt-get -y install build-essential

# Install cmake 
# web: https://cmake.org/

sudo DEBIAN_FRONTEND=noninteractive apt-get -y install cmake

# Install autotools 
# web:

sudo DEBIAN_FRONTEND=noninteractive apt-get -y install autoconf automake libtool