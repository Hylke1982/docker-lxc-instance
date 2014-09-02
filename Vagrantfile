#!/usr/bin/env ruby
# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

 config.vm.box = "debian-jessie-amd64"
 config.vm.box_url = "https://downloads.sourceforge.net/project/vagrantboxjessie/debian80.box" 

 config.vm.provider "virtualbox" do |v|
   v.memory = 1024
   v.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/v-root", "1"]
 end

 config.vm.define "docker-lxc" do |dockerlxc|
   dockerlxc.vm.network "private_network", ip: "33.33.33.50"
 end

end
