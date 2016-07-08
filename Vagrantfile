# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
# config.vm.box = "trusty-x64-desktop/5.0.14"
# config.vm.network "public_network"
# config.vm.hostname = "packer-test"
  config.ssh.username = "vagrant"
  config.ssh.password = "vagrant"
# config.ssh.forward_agent = true
# config.ssh.forward_x11 = true

  config.vm.provider "virtualbox" do |v|
      v.gui = true
      v.customize ["modifyvm", :id, "--rtcuseutc", "on"]
      v.customize ["modifyvm", :id, "--hwvirtex", "on"]
      v.customize ["modifyvm", :id, "--nestedpaging", "on"]
      v.customize ["modifyvm", :id, "--vtxvpid", "on"]
      v.customize ["modifyvm", :id, "--largepages", "on"]
      v.customize ["modifyvm", :id, "--acpi", "on"]
      v.customize ["modifyvm", :id, "--nictype1", "virtio"]
      v.customize ["modifyvm", :id, "--groups", "/Clean Slate"]
      v.customize ["modifyvm", :id, "--memory", "2048"]
      v.customize ["modifyvm", :id, "--vram", "24"]
      v.customize ["modifyvm", :id, "--cpus", "2"]
  end

  config.vm.define "desktop" do |desktop|
      desktop.vm.provider "virtualbox" do |v|
          config.vm.box = "xenial-x64-desktop/5.0.20"
          v.gui = true
          v.name = "packer.desktop"
          v.customize ["modifyvm", :id, "--memory", "4096"]
      end
  end
  
  config.vm.define "server" do |server|
      server.vm.provider "virtualbox" do |v|
          config.vm.box = "xenial-x64-server/5.0.24"
          v.gui = true
          v.name = "packer.server"
      end
  end
  
end
