
locals {
  labels = {
    "environment" = "prod",
    "role"        = "vpn-server"
    "region"      = var.region
  }
}

resource "google_compute_instance" "WireGuard_server" {
  name           = "wireguard"
  description    = "WireGuard server deployment"
  machine_type   = "e2-medium"
  zone           = "${var.region}-${var.zone}"
  desired_status = "RUNNING"
  labels         = local.labels
  tags           = [
    "ssh",
    "ping",
    "vpn",
  ]
  metadata       = {
    enable-oslogin = "TRUE"
  }
  metadata_startup_script = "sudo dnf -y upgrade && sudo dnf -y install elrepo-release epel-release && sudo dnf -y install kmod-wireguard wireguard-tools && echo 'net.ipv4.ip_forward=1' >> /etc/sysctl.conf"
  boot_disk {
    # ↓ On the instance, this device will be /dev/disk/by-id/google-{{device_name}}
    device_name = "rbs"
    initialize_params {
      image = data.google_compute_image.rocky8-latest.id 
      size  = 20            # in GB
      type  = "pd-balanced"
    }
  }
  network_interface {
    network    = module.network.network_name
    subnetwork = module.network.subnet_name
    access_config {
      network_tier = "PREMIUM" 
    } 
  }
}