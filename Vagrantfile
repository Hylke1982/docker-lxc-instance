#!/usr/bin/env ruby
# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

 config.vm.box = "debian-jessie-lxc-puppet"
 config.vm.box_url = "https://dl.dropboxusercontent.com/u/3523744/boxes/debian-jessie-amd64-lxc-puppet/debian-jessie-lxc-puppet.box"

 config.vm.provider "virtualbox" do |v|
   v.memory = 1024
   v.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/v-root", "1"]
 end

 config.vm.define "docker-lxc" do |dockerlxc|
   dockerlxc.vm.network "private_network", ip: "33.33.33.50"
   dockerlxc.vm.provision "puppet" do |puppet|
    puppet.manifest_file = ""
  end
 end

end
