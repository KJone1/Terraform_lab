
# compute => https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance
# disk    => https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_disk

locals {
  base_name   = "khan"
  labels = {
    "environment" = "dev",
    "role"        = "dev-server"
    "app"         = "playground"
    "region"      = var.region
  }
}

module "network" {
  source       = "../modules/network"
  network_name = "my-main-vpc-network" 
}

resource "google_compute_disk" "app-data-storage" {
  count                     = var.deployment_count
  name                      = "${local.base_name}-${count.index + 1}-disk"
  description               = "storage extantion for vm"
  size                      = 20  # in GB
  physical_block_size_bytes = 4096
  type                      = "pd-ssd"
  zone                      = "${var.region}-${var.zone}"
  labels                    = local.labels
}

resource "google_compute_instance" "default" {
  count          = var.deployment_count
  name           = "${local.base_name}-${count.index + 1}"
  description    = "vm instance deployment test"
  machine_type   = "e2-standard-4"
  zone           = "${var.region}-${var.zone}"
  desired_status = "RUNNING"
  labels         = local.labels
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
    source        = google_compute_disk.app-data-storage[count.index].self_link
    device_name   = "playground-ext"
  }
  network_interface {
    network    = module.network.network_name
    subnetwork = module.network.subnet_name
    access_config {
      network_tier = "PREMIUM" 
    } 
  }
}