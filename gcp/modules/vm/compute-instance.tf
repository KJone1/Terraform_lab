
# compute => https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance
# disk    => https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_disk

resource "google_compute_instance" "default" {
  count          = var.deployment_count
  name           = "${var.name}-${count.index + 1}"
  description    = "vm instance deployment"
  machine_type   = var.machine_type
  zone           = "${var.region}-${var.zone}"
  desired_status = "RUNNING"
  labels         = var.labels
  tags           = var.tags
  metadata       = {
    enable-oslogin = "TRUE"
  }
  boot_disk {
    # ↓ On the instance, this device will be /dev/disk/by-id/google-{{device_name}}
    device_name = "main"
    initialize_params { 
      image = data.google_compute_image.rocky8-latest.id
      size  = 20            # in GB
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
}