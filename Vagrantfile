
Vagrant.configure(2) do |config|

  config.vm.box = "centos/7"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  # config.vm.provider "virtualbox" do |vb|
  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
  #
  #   # Customize the amount of memory on the VM:
  #   vb.memory = "2048"
  # end
  #
  # View the documentation for the provider you are using for more
  # information on available options.
  config.vm.provider "virtualbox" do |vb|
	vb.memory ="1024"
  end

  # this broke on windows machine
  config.vm.synced_folder ".", "/vagrant", disabled: true

  # required for rstudio server?
  config.vm.network "forwarded_port", guest:8787, host:8787

  # bootstrap up
  config.vm.provision "shell", path: "bootstrap.sh"
end
