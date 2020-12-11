#!/bin/sh

# Install Ruby + RubyGems
sudo DEBIAN_FRONTEND=noninteractive apt-get -y install ruby ruby-dev
sudo DEBIAN_FRONTEND=noninteractive apt-get -y install rubygems

# Display the versions 
echo -n "Ruby Version: ";ruby --version
echo -n "RubyGems Version: ";gem --version