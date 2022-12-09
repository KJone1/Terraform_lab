
module "vm" {
  source         = "../modules/vm"
  name           = "wireguard"
  network_name   = module.network.network_name
  subnet_name    = module.network.subnet_name
  machine_type   = var.machine_type
  labels = {
    "environment" = "prod",
    "role"        = "vpn-server"
    "region"      = var.region
  }
  tags           = ["ssh","ping","vpn"]
  startup_script = "sudo dnf -y upgrade && sudo dnf -y install elrepo-release epel-release && sudo dnf -y install kmod-wireguard wireguard-tools && echo 'net.ipv4.ip_forward=1' >> /etc/sysctl.conf"
}