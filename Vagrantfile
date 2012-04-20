# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "squeeze64"
  
  # Customize memory
  #config.vm.customize ["modifyvm", :id, "--memory", "256"]
  
  config.vm.provision :puppet do |puppet|
	  #puppet.pp_path = "/vagrant"
		puppet.manifests_path = "manifests"
		puppet.module_path = "../"
		puppet.manifest_file = "site.pp"
		puppet.options = "--verbose"
	end
  
  # Percona1
  config.vm.define :percona1 do |percona1_config|
  	percona1_config.vm.host_name = "percona1"
  	percona1_config.vm.network :hostonly, "192.168.33.10"
  end
  
  # Percona2
  config.vm.define :percona2 do |percona2_config|
  	percona2_config.vm.host_name = "percona2"
  	percona2_config.vm.network :hostonly, "192.168.33.11"
  end
  
  # Percona 3
  config.vm.define :percona3 do |percona3_config|
  	percona3_config.vm.host_name = "percona3"
  	percona3_config.vm.network :hostonly, "192.168.33.12"
  end
end