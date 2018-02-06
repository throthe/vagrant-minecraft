Please note: 

This server setup is only compatible with Minecraft: Java Edition.
Download minecraft_server.1.12.2.jar and run it with the following command:

java -Xmx1024M -Xms1024M -jar minecraft_server.1.12.2.jar nogui

Should you want to start the server with it's graphical user interface you can leave out the "nogui" part.

Paramenter:

Xms = initial memory size
Xmx = maximum memory size

Add in -d64 if your server is on a 64-bit Solaris system using 64-bit Java.
Add -o true to tell the server to run in online mode so only authenticated users can join

To start the service :

sudo service minecraft-server start
sudo systemctl enable minecraft-server
systemctl status minecraft-server.service 