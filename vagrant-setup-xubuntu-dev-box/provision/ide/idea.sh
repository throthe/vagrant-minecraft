#!/bin/sh


# IntelliJ variables
IDEA_URL="https://download.jetbrains.com/idea/ideaIC-2017.1.2-no-jdk.tar.gz"
IDEA_VERSION="2017_1_2-no-jdk"

sudo touch /etc/sysctl.conf
echo 'fs.inotify.max_user_watches = 524288' | sudo tee -a /etc/sysctl.conf

# Download IntelliJ into shared folder if not available
if [ ! -f /vagrant_data/ideaIC-$IDEA_VERSION.tar.gz ]; then
  echo 'Downloading IntelliJ IDEA Community Edition' .$IDEA_VERSION.;
  curl -fsSL --output /vagrant_data/ideaIC-$IDEA_VERSION.tar.gz $IDEA_URL
  sudo tar -zxf /vagrant_data/ideaIC-$IDEA_VERSION.tar.gz --directory /opt
  mkdir -p $HOME/bin
  ln -s /opt/idea-IC-171.4249.39/bin/idea.sh $HOME/bin/idea.sh
fi
