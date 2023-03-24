
# compute => https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance

resource "google_compute_instance" "default" {
  count          = var.deployment_count
  name           = var.name
  description    = "vm instance deployment"
  machine_type   = var.machine_type
  zone           = "${var.region}-${var.zone}"
  desired_status = "RUNNING"
  labels         = var.labels
  tags           = var.tags
  metadata = {
    enable-oslogin = "TRUE"
  }
  metadata_startup_script = var.startup_script
  boot_disk {
    # ↓ On the instance, this device will be /dev/disk/by-id/google-{{device_name}}
    device_name = "main"
    initialize_params {
      image = var.image
      size  = 40 # in GB
      type  = "pd-balanced"
    }
  }
  network_interface {
    network    = var.network_name
    subnetwork = var.subnet_name
    access_config {
      network_tier = "PREMIUM"
    }
  }
  lifecycle {
    ignore_changes = [attached_disk]
  }
}