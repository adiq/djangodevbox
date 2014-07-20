# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "djangodevbox"
  config.vm.box_url = "https://dl.dropboxusercontent.com/s/bky4mym578y5og7/djangodev.box"
  config.vm.network :private_network, ip: "192.168.100.2"
  # You can add more shared folders. Root folder is shared by default to /vagrant
  # config.vm.synced_folder "../data", "/vagrant_data"

  config.vm.provider :virtualbox do |v|
    v.customize ["modifyvm", :id, "--cpus", "1", "--memory", "512"]
    v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    v.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
  end  

  config.vm.provision :ansible do |ansible|
    ansible.playbook = "provisioning/playbook.yml"
    ansible.sudo = true
    ansible.inventory_path = "provisioning/hosts"
  end

end