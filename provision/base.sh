#!/bin/sh

# Install base and common tools we need
sudo DEBIAN_FRONTEND=noninteractive apt-get -y install \
bzip2 \
ca-certificates \
coreutils \
curl \
gzip \
lsb-release \
man-db \
net-tools \
patch \
sed \
software-properties-common \
tar \
unzip \
wget \
zip
