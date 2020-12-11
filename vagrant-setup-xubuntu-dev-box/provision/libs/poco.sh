#!/bin/sh

# Installing external dependencies 
# used for:
#   - NetSSL_OpenSSL and Crypt require OpenSSL.
#   - Data/ODBC requires ODBC (Microsoft ODBC on Windows, unixODBC or iODBC on Unix/Linux)
#   - Data/MySQL requires the MySQL client.

sudo DEBIAN_FRONTEND=noninteractive apt-get -y install openssl libssl-dev
sudo DEBIAN_FRONTEND=noninteractive apt-get -y install libiodbc2 libiodbc2-dev
sudo DEBIAN_FRONTEND=noninteractive apt-get -y install libmysqlclient-dev


# POCO Variables
POCO_URL="https://pocoproject.org/releases/poco-1.8.1/poco-1.8.1.tar.gz"
POCO_VERSION="1_8_1"

# Download POCO into shared folder if not available
if [ ! -f /vagrant_data/poco-$POCO_VERSION.tar.gz ]; then
  echo 'Downloading POCO libraries version ' .$POCO_VERSION.;
  curl -fsSL --output /vagrant_data/poco-$POCO_VERSION.tar.gz $POCO_URL
  sudo tar -zxf /vagrant_data/poco-$POCO_VERSION.tar.gz --directory /opt
fi

# Install POCO on /usr/local/include, /usr/local/lib 
# add libraries with --with-libraries=date_time
cd /opt/poco-$BOOST_VERSION
sudo ./configure --prefix=/usr/local --no-tests --no-samples
sudo make -j4
sudo make -s install