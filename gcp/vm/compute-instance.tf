
module "network" {
  source       = "../modules/network"
  network_name = "my-main-vpc-network" 
}

resource "google_compute_instance" "default" {
  count          = var.deployment_count
  name           = "tf-test-${count.index + 1}"
  description    = "vm instance deployment test"
  machine_type   = "e2-micro"
  zone           = "${var.region}-${var.zone}"
  desired_status = "RUNNING"
  labels         = {
    "environment" = "prod",
    "role"        = "web-server"
    "app-name"    = "playground"
    "region"      = "europe-central"
  }
  tags           = [
    "http",
    "https",
    "ssh",
    "ping",
  ]
  metadata       = {
    enable-oslogin = "TRUE"
  }
  boot_disk {
    # ↓ On the instance, this device will be /dev/disk/by-id/google-{{device_name}}
    device_name = "playground"
    initialize_params { 
      image = data.google_compute_image.rocky8-latest.id
      size  = 20            # in GB
      type  = "pd-balanced"
    }
  }
  attached_disk {
    source        = google_compute_disk.app-data-storage.self_link
    device_name   = "playground-ext"
  }
  network_interface {
    network = module.network.name
    access_config {
      network_tier = "PREMIUM" 
    } 
  }
}