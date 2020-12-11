#!/bin/sh

# Hugo is one of the most popular open-source static site generators. 
# With its amazing speed and flexibility, Hugo makes building websites fun again.
# Website: http://gohugo.io/

# Hugo variables
HUGO_URL="https://github.com/gohugoio/hugo/releases/download/v0.36.1/hugo_0.36.1_Linux-64bit.deb"
HUGO_NAME="hugo-0_36_1"

if [ ! -f /vagrant_data/$HUGO_NAME.deb ]; then
  echo 'Downloading Hugo Static Website Builder 0.36.1';
  curl -fsSL --output /vagrant_data/$HUGO_NAME.deb $HUGO_URL
  sudo dpkg -i /vagrant_data/$HUGO_NAME.deb
fi

# Display the versions
echo -n "Hugo static webside generator Version: ";hugo version
