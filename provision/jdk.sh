
# Uninstall openjdk
sudo DEBIAN_FRONTEND=noninteractive apt-get -y remove openjdk*   

# Add Repo
sudo add-apt-repository ppa:webupd8team/java
# Update apt-get
sudo apt-get update

sudo DEBIAN_FRONTEND=noninteractive apt-get -y install openjdk-8-jre
