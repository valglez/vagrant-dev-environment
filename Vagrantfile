Vagrant.configure("2") do |config|

    config.vm.define "ubuntu" do |ubuntu|
        ubuntu.vm.box = "hluaces/ubuntu-gnome"
        ubuntu.vm.provision :shell, path: "scripts/rootProvision.sh"
        ubuntu.vm.provision :shell, path: "scripts/userProvision.sh", privileged: false
	    ubuntu.vm.network "public_network", ip: "192.168.1.100", bridge: "Realtek PCIe GbE Family Controller"
        ubuntu.vm.hostname = "dev-environment"
        ubuntu.vm.provider "virtualbox" do |pmv|
            pmv.memory = 4096
            pmv.cpus   = 2
        end
    end
end