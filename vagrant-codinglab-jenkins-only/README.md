

"Vagrant will not operate outside the Windows Subsystem for Linux unless explicitly
instructed. Due to the inability to enforce expected Linux file ownership and
permissions on the Windows system, Vagrant will not make modifications to prevent
unexpected errors. To learn more about this, and the options that are available,
please refer to the Vagrant documentation:

  https://www.vagrantup.com/docs/other/wsl.html"

Run ```. ./setenv.sh``` to set VAGRANT_WSL_ENABLE_WINDOWS_ACCESS to true. The preceiding . causes the script to run the instructions in the original shell. Thus the set environment still exist after setenv finish. 

export VAGRANT_PREFER_SYSTEM_BIN="1"


## Requirements

If using WSL, check how C is mounted with ```mount -l```. You should see that C included 'metadata' options. If not try to 
```
sudo umount /mnt/c
sudo mount -t drvfs -o metadata C: /mnt/c 
```
or create ```/etc/wsl.conf``` and add
```
[automount]
enabled = true
options = "metadata"
```
and stop/start WSL with ```net stop LxssManager``` and ```net start LxssManager```




Vagrant Networkmanager plugin to have your hosts file configured accordingly: ```vagrant plugin install vagrant-hostmanager```.

## How to use

### Create

Run ```vagrant box update``` to pull the latest box update.

Just install Vagrant on your Unix sybsystem and you are ready to go. Keep in mind that the Vagrant versions need to be the same on Windows and the Unix subsystem. 

All boxes are created with the virtualbox provider on a CentOS7 base box. The following boxes are currently defined:
* jenkins_box
* sonar_box


### SSH into a box

Run ```vagrant ssh <sonar_box>``` to ssh into a box as vagrant user


### Destroy

Run ```vagrant destroy```
