#!/bin/sh

# Package Manager for containerised software packages that are simple to create and install. 
# They auto-update and are safe to run. And because they bundle their dependencies, 
# they work on all major Linux systems without modification.
# Website: https://snapcraft.io/

sudo DEBIAN_FRONTEND=noninteractive apt-get -y install snapd

# Display the versions
echo -n "Snap Package Manager Version: ";snap --version