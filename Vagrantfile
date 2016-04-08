# -*- mode: ruby -*-
# vi: set ft=ruby :

# Needed plugins:
# - vagrant-berkshelf
# - copy_my_conf

Vagrant.configure(2) do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  config.vm.box = "ubuntu/wily64"
  #config.vm.synced_folder "../data", "/vagrant_data"

  config.vm.hostname = "devbox"

  config.vm.provider "virtualbox" do |vb|
    vb.gui = true
    vb.memory = "1024"
    vb.name = "devbox"
    vb.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
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

    chef.environment = ENV['DEVBOX_ENV'] || 'github'
  end

  # Copy the ssh, vim and git configuration
  #config.vm.provision 'copy_my_conf' do |copy_conf|
  #  copy_conf.git
  #  copy_conf.vim
  #  copy_conf.ssh
  #end
end
