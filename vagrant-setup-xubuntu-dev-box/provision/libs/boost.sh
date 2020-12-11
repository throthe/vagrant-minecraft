#!/bin/sh

# Install BOOST library
# web: http://www.boost.org/

# Boost Versions
# https://sourceforge.net/projects/boost/files/boost/1.62.0/boost_1_62_0.tar.gz
# https://sourceforge.net/projects/boost/files/boost/1.63.0/boost_1_63_0.tar.gz
# https://sourceforge.net/projects/boost/files/boost/1.64.0/boost_1_64_0.tar.gz
# https://sourceforge.net/projects/boost/files/boost/1.65.0/boost_1_65_0.tar.gz
# https://sourceforge.net/projects/boost/files/boost/1.66.0/boost_1_66_0.tar.gz

# Boost variables
BOOST_URL="https://sourceforge.net/projects/boost/files/boost/1.66.0/boost_1_66_0.tar.gz"
BOOST_VERSION="1_66_0"

# Download boost into shared folder if not available
if [ ! -f /vagrant_data/boost_$BOOST_VERSION.tar.gz ]; then
  echo 'Downloading Boost ' .$BOOST_VERSION.;
  curl -fsSL --output /vagrant_data/boost_$BOOST_VERSION.tar.gz $BOOST_URL
  sudo tar -zxf /vagrant_data/boost_$BOOST_VERSION.tar.gz --directory /opt
fi

# Install boost on /usr/local/include, /usr/local/lib 
# add libraries with --with-libraries=date_time
cd /opt/boost_$BOOST_VERSION
sudo ./bootstrap.sh --prefix=/usr/local 
sudo ./b2 install

