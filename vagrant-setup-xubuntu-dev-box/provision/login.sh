
# Correct the disply name and password for default ubuntu user in confusing Login screen
sudo chfn -f "ubuntu" ubuntu
sudo usermod --password $(echo ubuntu | openssl passwd -1 -stdin) ubuntu
