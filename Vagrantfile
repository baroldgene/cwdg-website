# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure('2') do |config|
  config.vm.box      = 'ubuntu/trusty32'
  config.vm.hostname = 'cwdg'

  config.vm.network :forwarded_port, guest: 3000, host: 3000

  # Uncomment if you are using Linux
  # config.vm.synced_folder '.', '/vagrant', type: 'rsync'

  # Comment this out if your aren't using OSX
  config.vm.synced_folder ".", "/vagrant", type: "nfs"

  config.vm.provision :shell, path: 'script/bootstrap.sh', keep_color: true
  config.vm.network 'private_network', ip: '192.168.50.4'
end
