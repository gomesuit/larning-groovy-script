# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.synced_folder ".", "/vagrant", disabled: true

  config.vm.box = "centos/7"

  config.ssh.insert_key = false

  config.vm.define "server" do |host|
    host.vm.hostname = "server"
    host.vm.network "private_network", ip: "192.168.33.10"
    host.vm.provision :shell, :path => "provision.sh"
  end

end
