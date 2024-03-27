# -*- mode: ruby -*-
# vi: set ft=ruby :

NNODES=6
$script = <<-SCRIPT
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCHb1R741f/detgXKQCdaFvrYTwnZ8xJ05JGGV+Ut46ypR9HIuZmkyCAipJv2FmTv3v2V4MEwE/1JnHbHhOOTqv23cKMcXA3NeQ8vaVvronKvxFyCyq+5Zi+aNvmZUz1U735q+KyX4YCc5CdafJpYoYDBRQi1MPi5F/t4jMdNaxKVrZbQZlORb6iqseFDJEL8lUYZfEavKb4Qy+7RTn606eB+4GwP0ahbazetuXkAsio1DrXsgEBCVwOldfyMtG4k5Hqr2ZxLShCGlF1k43AHyEsxkSyIs2SeB/EouPwxIqyOToVBg1ukGanSr06e9+waDS2C7sbxG6I/ArDJ6a2N9v rsa-key-20240326" >> /home/vagrant/.ssh/authorized_keys
SCRIPT

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  (0..NNODES - 1).each do |i|
    config.vm.define "k8s-ubuntu-#{i}" do |node|
      #node.vm.box = "ubuntu/focal64"
      node.vm.box = "ubuntu/jammy64"
      node.vm.hostname = "elk-ubuntu-#{i}"
      config.vm.provider "virtualbox" do |v|
          v.memory = 2048
          v.cpus = 2
      end
      node.vm.network "private_network", ip: "192.168.25.11#{i}"
      node.vm.provision "shell", inline: $script
      node.vm.provision "shell", inline: "echo hello from node #{i}"
    end
  end
end