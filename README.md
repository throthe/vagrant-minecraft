# Minecraft Notes

## Server

The server setup is only compatible with Minecraft: __Java Edition__.

### Run Server

`java -Xmx1024M -Xms1024M -jar minecraft_server.1.12.2.jar nogui`

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


### Import/Export worlds created with singleplayer mode

To export maps, you need to go into your minecraft saves directory. 
* Open `C:\Users\<user>\AppData\Roaming\.minecraft\saves directory`
* Find your offline created world content included in a directory with the given name
* zip the directory
* publish it ...

To import maps, you need to download a world from any source (usually zip-packed).
* Copy the zip achieve to `C:\Users\<user>\AppData\Roaming\.minecraft\saves`
* Unzip the achieve
* Open Minecraft-client and select Singleplayer
* Select your new world