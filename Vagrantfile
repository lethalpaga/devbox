# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  config.vm.box = "hashicorp/precise64"
  #config.vm.synced_folder "../data", "/vagrant_data"

  config.vm.hostname = "devbox"

  config.vm.provider "virtualbox" do |vb|
    vb.gui = true
    vb.memory = "1024"
    vb.name = "devbox"
  end

  if ENV['ATLAS_TOKEN']
    config.push.define "atlas" do |push|
      push.app = "lethalpaga/devbox_instance"
      atlas_token = ENV['ATLAS_TOKEN']
    end
  end

  config.vm.provision "chef_solo" do |chef|
    chef.environments_path = 'environments'
    chef.add_recipe "devbox::default"
    
    chef.environment = 'github'
  end
  
  # Copy the ssh, vim and git configuration
  #config.vm.provision 'copy_my_conf' do |copy_conf|
  #  copy_conf.git
  #  copy_conf.vim
  #  copy_conf.ssh
  #end

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"
end
