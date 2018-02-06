# Default login: vagrant / vagrant

Vagrant.configure(2) do |config|
  # Ubuntu 16.04
  config.vm.box = 'ubuntu/xenial64'
  config.vm.box_check_update = false
  config.vm.network :public_network, :bridge => "en0: Ethernet"

  # Share an additional folder to the guest VM
  config.vm.synced_folder 'data', '/vagrant_data'

  # Proxy Configuration 
  # (expect: vagrant plugin install vagrant-proxyconf)
  config.proxy.http     = "http://baligw.mitrais.com:8080"
  config.proxy.https    = "http://baligw.mitrais.com:8080"
  config.proxy.no_proxy = "localhost,127.0.0.1"

  config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    vb.gui = true
    vb.name = 'minecraft-s'
    vb.memory = 4096
    vb.cpus = 1
    vb.customize ['modifyvm', :id, '--vram', '32']
    vb.customize ['modifyvm', :id, '--clipboard', 'bidirectional']
    vb.customize ['modifyvm', :id, '--natdnshostresolver1', 'on']
    vb.customize ['modifyvm', :id, '--natdnsproxy1', 'on']
  end

  # Provisioning
  config.vm.provision "shell", inline: "sudo apt-get update"
  config.vm.provision 'shell', privileged: false, path: 'provision/base.sh', name: 'base.sh'
  config.vm.provision 'shell', privileged: false, path: 'provision/jdk.sh', name: 'jdk.sh'
  config.vm.provision 'shell', privileged: false, path: 'provision/minecraft.sh', name: 'minecraft.sh'

end