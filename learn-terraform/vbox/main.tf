terraform {
  required_providers {
    virtualbox = {
      source = "terra-farm/virtualbox"
      version = "0.2.2-alpha.1"
    }
  }
}

resource "virtualbox_vm" "node" {
    count = 3
    name = format("ubuntu-%02d", count.index + 1)
    image = "https://app.vagrantup.com/ubuntu/boxes/focal64/versions/20220505.0.0/providers/virtualbox.box"
    cpus = 2
    memory = "2048 MB"

    network_adapter {
        type = "bridged"
        host_interface = "enp37s0"
    }
}

