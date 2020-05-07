# -*- mode: ruby -*-
# vi: set ft=ruby :

$script = <<-'SCRIPT'
cp /tmp/provision.desktop /usr/share/applications/provision.desktop
cp /tmp/provision.sh /bin/provision.sh
chmod a+x /bin/provision.sh
SCRIPT

Vagrant.configure("2") do |config|
<<<<<<< HEAD
#  config.vm.box = "Bassualdo/raspberryDesktop-buster-64bit"
#  config.vm.box = "Bassualdo/raspberryDesktop" 
  config.vm.box = "Bassualdo/rpd-buster"
  config.vm.box_version = "2020-02-14"

  config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    vb.gui = true
 
    # Customize the amount of memory on the VM:
    vb.memory = "2048"
    # Enable copy paste
    vb.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
  end

  config.ssh.password = "raspberry"
  config.ssh.username = "pi"

  config.vm.provision "file", source: "provision.sh", destination: "/tmp/provision.sh"
  config.vm.provision "file", source: "provision.desktop", destination: "/tmp/provision.desktop"


  config.vm.provision "shell", inline: $script

  config.vm.provision "shell", privileged: false, inline: <<-SHELL
curl -L http://tiny.cc/epicRaspberries | bash
  SHELL

end
