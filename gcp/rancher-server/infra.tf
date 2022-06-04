
module "network" {
  source       = "../modules/network"
  network_name = "my-main-vpc-network" 
}

resource "google_compute_instance" "rancher_server" {
  name           = "rancher-server"
  description    = "rancher server deployment"
  machine_type   = "e2-medium"
  zone           = "${var.region}-${var.zone}"
  desired_status = "RUNNING"
  labels         = {
    "environment" = "prod",
    "role"        = "rancher-server"
    "region"      = "europe-north"
  }
  tags           = [
    "http",
    "https",
    "ssh",
    "ping",
    "app",
  ]
  metadata       = {
    enable-oslogin = "TRUE"
  }
  metadata_startup_script = "sudo docker run --privileged -d --restart=unless-stopped -p 80:80 -p 443:443 --name rs rancher/rancher:v2.5.13"
  boot_disk {
    # ↓ On the instance, this device will be /dev/disk/by-id/google-{{device_name}}
    device_name = "rbs"
    initialize_params {
      image = data.google_compute_image.cos-latest.id 
      size  = 20            # in GB
      type  = "pd-balanced"
    }
  }
  network_interface {
    network = module.network.name
    access_config {
      network_tier = "PREMIUM" 
    } 
  }
}