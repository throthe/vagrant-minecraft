
# Uninstall openjdk
sudo DEBIAN_FRONTEND=noninteractive apt-get -y remove openjdk*   


sudo DEBIAN_FRONTEND=noninteractive -y install --reinstall ca-certificate

# Add Repo
sudo add-apt-repository ppa:webupd8team/java
# Update apt-get
sudo apt-get update

# Automatically accept Oracle Lincense 
sudo sh -c 'echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections'

# Install Java 7 / 8 / 9 
# sudo DEBIAN_FRONTEND=noninteractive apt-get -y install oracle-java7-installer
sudo DEBIAN_FRONTEND=noninteractive apt-get -y install oracle-java8-installer
# sudo DEBIAN_FRONTEND=noninteractive apt-get -y install oracle-java9-installer

# Set Java 8 / 9 as default
sudo DEBIAN_FRONTEND=noninteractive apt-get -y install oracle-java8-set-default
# sudo DEBIAN_FRONTEND=noninteractive apt-get -y install oracle-java9-set-default
