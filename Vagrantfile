# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
#  config.vm.box = "Bassualdo/raspberryDesktop-buster-64bit"
#  config.vm.box = "Bassualdo/raspberryDesktop" 
  config.vm.box = "Bassualdo/rpd-amd64-buster"

  config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    vb.gui = true
 
    # Customize the amount of memory on the VM:
    vb.memory = "2048"
  end

  config.ssh.password = "raspberry"
  config.ssh.username = "pi"


  config.vm.provision "shell", inline: <<-SHELL
    curl -L http://tiny.cc/epicRaspberries | bash
  SHELL
end
