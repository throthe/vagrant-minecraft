# Vagrant XFCE Dev-Env

A portable virtual development environment using based on [Vagrant](https://www.vagrantup.com/) and [Ubuntu](https://xubuntu.org/). 
The desktop environment is [XFCE](https://xfce.org/) since it is extreme lightweight, fast and low on system resources. 

The Vagrant base box is the official [Ubuntu 16.04](https://atlas.hashicorp.com/ubuntu/boxes/xenial64) 64-bit box, 
available from Hashicorp Atlas.

## Installation

Prerequisites:

* [VirtualBox](https://www.virtualbox.org/wiki/Downloads). This has been tested with version 5.1.20
* [Vagrant](https://vagrantup.com/downloads.html). This has been tested using version 1.9.4

For Proxy Support:

* [Vagrant Proxy Plugin](https://github.com/tmatilai/vagrant-proxyconf). This plugin is necessary whenever you are behind a proxy. 

Install the vagrant proxy plugin, run this command:

	vagrant plugin install vagrant-proxyconf

The proxy can be configured in the `Vagrantfile`:
	
	config.proxy.http     = "http://yourproxy:8080"
	config.proxy.https    = "http://yourproxy:8080"
	config.proxy.no_proxy = "localhost,127.0.0.1"

The provision includes several tools and libraries. Include the scripts into the provisioning for the environment as you need.
Find the scripts within the following folder structure in this repository.

* provision				-> select basic tools
* provision/db 			-> select your database/s 
* provision/ide 		-> select your favorite IDE
* provision/depl 		-> select your deployment tools
* provision/libs 		-> select libraries (only C++ so far)
* provision/scm 		-> select your software configuration management tool
* provision/lang/cpp	-> select compiler and tools for C++
* provision/lang/go		-> select GO Lang version and tools
* provision/other		-> everything what fits nowhere else

## How to use...

Clone or download this repository and run: 

    vagrant up

The __ubuntu__ user password is __ubuntu__.
The __vagrant__ user password is __vagrant__.

### Other useful commands

	vagrant destroy
	vagrant ssh
	vagrant provision
	vagrant suspend

## Notes

* Add your local customisation to `provision/local.sh`.
* Add additional users into `provision/login.sh`.

## Ideas

* the shared folder should be accessable with a variable
* testing ansible