# Minecraft Notes


## Server

The server setup is only compatible with Minecraft: __Java Edition__.

### Vagrant Provisioning

#### Directory-Structure of the project

vagrant-minecraft/
├── data/
│   ├── bootstrap.css
│   ├── bootstrap.min.css
│   ├── bootstrap-theme.css
│   └── bootstrap-theme.min.css
├── provision/
│   ├── bootstrap.js
│   └── bootstrap.min.js
├── README.md
└── Vagrantfile

The Vagrant box is set with 

### Run Server

`java -Xmx1024M -Xms2048M -jar minecraft_server.1.12.2.jar nogui`

Should you want to start the server with it's graphical user interface you can leave out the `nogui` part.

:exclamation: If you run your minecraft server the very first time, additional files are created within 
the minecraft-server directory. The minecraft-server will come up, but terminate with the message *You need to agree to the EULA in order to run the server. Go to eula.txt for more info*. Open the EULA with `sudo vi eula.txt` and change `eula=false` to `eula=true`.
Save and exit the file and run the server with the above command again. Your minecraft-server should successfully run now.  

#### Paramenter

* -Xms = initial memory size (i.e. `-Xmx1024M`)
* -Xmx = maximum memory size (i.e. `-Xms2048M`)
* -d64 = using 64-bit Java
* -o = run in online mode so only authenticated users can join

### Import/Export worlds created with singleplayer mode

To export maps, you need to go into your minecraft saves directory. 
1. Open `C:\Users\<user>\AppData\Roaming\.minecraft\saves directory`
2. Find your offline created world content included in a directory with the given name
3. zip the directory
4. publish it ...

To import maps, you need to download a world from any source (usually zip-packed).
1. Copy the zip achieve to `C:\Users\<user>\AppData\Roaming\.minecraft\saves`
2. Unzip the achieve
3. Open Minecraft-client and select Singleplayer
4. Select your new world

## ToDo

- [ ] Change the permissions to all nesseccary files to system-user `minecraft`
- [ ] Start the minecraft-server as service. Some useful commands

* Start: `sudo service minecraft-server start`
* Status: `sudo service minecraft-server status`
* Stop: `sudo service minecraft-server stop`
* Restart: `sudo service minecraft-server restart`

- [ ] XX