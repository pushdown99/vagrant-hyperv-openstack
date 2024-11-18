# -*- mode: ruby -*-
# vi: set ft=ruby :

box = "boxen/ubuntu-22.04"
ver = "2024.07.24.10"
master = "os-master"

Vagrant.configure("2") do |config|
  config.vm.define master do |c|
    c.vm.box=box
    c.vm.box_version = ver
    c.vm.provider :hyperv do |v|
      v.vmname=master
      v.cpus=2
      v.memory=2048
      v.linked_clone=true
    end

    c.vm.hostname=master
    c.vm.synced_folder ".", "/vagrant", disabled: true
    c.vm.network "forwarded_port", guest: 22, host: "#{port}0", auto_correct: true, id: "ssh"
  end
end