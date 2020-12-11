# Eclipse IDE for Java Developers
# http://eclipse.bluemix.net/packages/oxygen.2/data/eclipse-java-oxygen-2-linux-gtk.tar.gz
# http://eclipse.bluemix.net/packages/oxygen.2/data/eclipse-java-oxygen-2-linux-gtk-x86_64.tar.gz

# Eclipse IDE for Java EE Developers
# http://eclipse.bluemix.net/packages/oxygen.2/data/eclipse-jee-oxygen-2-linux-gtk.tar.gz
# http://eclipse.bluemix.net/packages/oxygen.2/data/eclipse-jee-oxygen-2-linux-gtk-x86_64.tar.gz

# Eclipse IDE for C/C++ Developers
# http://eclipse.bluemix.net/packages/oxygen.2/data/eclipse-cpp-oxygen-2-linux-gtk.tar.gz
# http://eclipse.bluemix.net/packages/oxygen.2/data/eclipse-cpp-oxygen-2-linux-gtk-x86_64.tar.gz

# http://eclipse.bluemix.net/packages/oxygen.2/data/eclipse-php-oxygen-2-linux-gtk.tar.gz
# http://eclipse.bluemix.net/packages/oxygen.2/data/eclipse-php-oxygen-2-linux-gtk-x86_64.tar.gz

# http://eclipse.bluemix.net/packages/oxygen.2/data/eclipse-javascript-oxygen-2-linux-gtk.tar.gz
# http://eclipse.bluemix.net/packages/oxygen.2/data/eclipse-javascript-oxygen-2-linux-gtk-x86_64.tar.gz

ECLIPSE_URL="http://eclipse.bluemix.net/packages/oxygen.2/data/eclipse-cpp-oxygen-2-linux-gtk-x86_64.tar.gz"
ECLIPSE_NAME="eclipse-oxygen-cpp"

# Download Eclipse IDE into shared folder
if [ ! -f /vagrant_data/$ECLIPSE_NAME.tar.gz ]; then
  echo 'Downloading Eclipse C++ Oxygen Edition'
  curl -fsSL --output /vagrant_data/$ECLIPSE_NAME.tar.gz $ECLIPSE_URL
fi

# Unpack into /opt
sudo tar -zxf /vagrant_data/$ECLIPSE_NAME.tar.gz --directory /opt

# Create links
# sudo ln -s /opt/eclipse/eclipse /root/eclipse
# sudo ln -s /opt/eclipse/eclipse /home/vagrant/eclipse

# Set Eclipse global accessable 
touch /home/$(whoami)/.bashrc
echo "alias ecplise='/opt/eclipse/eclipse'" >> /home/$(whoami)/.bashrc