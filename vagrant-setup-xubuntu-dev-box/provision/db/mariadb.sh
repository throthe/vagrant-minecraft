#!/bin/sh

# MariaDB Server is one of the most popular database servers in the world. 
# It’s made by the original developers of MySQL and guaranteed to stay open source. 
# Notable users include Wikipedia, WordPress.com and Google.
# Website: https://mariadb.org/


# Get the key for trusted package authentication
sudo apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xF1656F24C74CD1D8
# Add MariaDB PPA
sudo add-apt-repository 'deb [arch=amd64,i386,ppc64el] http://suro.ubaya.ac.id/mariadb/repo/10.2/ubuntu xenial main'

# Once the key is imported and the repository added you can install MariaDB with:
sudo apt update
# Install MariaDB
sudo DEBIAN_FRONTEND=noninteractive apt-get -y install mariadb-server