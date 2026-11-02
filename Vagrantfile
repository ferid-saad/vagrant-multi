Vagrant.configure("2") do |config|
  # Machine Web
  config.vm.define "web" do |web|
    web.vm.box = "ubuntu/focal64"
    web.vm.hostname = "webserver"
    web.vm.network "private_network", ip: "192.168.56.11"
    web.vm.provision "shell", path: "install_web.sh"
  end

  # Machine Database
  config.vm.define "db" do |db|
    db.vm.box = "ubuntu/focal64"
    db.vm.hostname = "dbserver"
    db.vm.network "private_network", ip: "192.168.56.12"
    db.vm.provision "shell", path: "install_db.sh"
  end
end
