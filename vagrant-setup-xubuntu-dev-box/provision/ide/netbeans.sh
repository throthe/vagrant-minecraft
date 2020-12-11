
# http://download.netbeans.org/netbeans/8.1/final/bundles/netbeans-8.1-linux.sh
# http://download.netbeans.org/netbeans/8.2/final/

NETBEANS_URL="http://download.netbeans.org/netbeans/8.1/final/bundles/netbeans-8.1-linux.sh"
NETBEANS_NAME="netbeans-8.1-linux"

# Download NetBeans IDE into shared folder
if [ ! -f /vagrant_data/$NETBEANS_NAME.sh ]; then
  echo 'Downloading NetBeans 8.2 SE Edition'
  curl -fsSL --output /vagrant_data/$NETBEANS_NAME.sh $NETBEANS_URL
fi

# Change permissions to execute
sudo chmod +x /vagrant_data/$NETBEANS_NAME.sh
# Install NetBeans IDE
sudo /vagrant_data/$NETBEANS_NAME.sh --silent -J-Dnb-base.installation.location=/opt/netbeans-8.1

# Set NetBeans global accessable 
touch /home/$(whoami)/.bashrc
echo "alias netbeans='/opt/netbeans-8.1/netbeans'" >> /home/$(whoami)/.bashrc