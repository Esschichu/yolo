# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
    config.vm.define "master" do |subconfig|
        subconfig.vm.box = "generic/ubuntu2004"
        subconfig.vm.hostname = "master"
        subconfig.vm.provider "hyperv"
        subconfig.vm.network "public_network", bridge: "BRIDGE"

        subconfig.vm.provider "hyperv" do |h|
            h.enable_virtualization_extensions = false
            h.linked_clone = false
            h.vmname = "ubuntu_cluster_master"
        end

        subconfig.vm.provision "ansible" do |a|
            a.verbose = "v"
            a.playbook = "playbook.yml"
        end
    end
end
