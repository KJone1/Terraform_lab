
resource "google_compute_instance" "default" {
  count          = var.deployment_count
  name           = "tf-test-${count.index + 1}"
  description    = "vm instance deployment test"
  machine_type   = "e2-micro"
  zone           = "europe-central2-c"
  desired_status = "RUNNING"
  labels         = {
    "version"     = 1.1,
    "environment" = "prod",
    "role"        = "web-server"
    "app-name"    = "playground"
    "region"      = "europe-central"
    }
  tags           = ["foo", "bar"]
  boot_disk {
    # ↓ On the instance, this device will be /dev/disk/by-id/google-{{device_name}}
    device_name = "playground"
    initialize_params {
    # image = "rocky-linux-cloud/rocky-linux-8"
      image = data.google_compute_image.pl-rocky8-latest.id 
      size  = 20            # in GB
      type  = "pd-balanced"
    }
  }
    network_interface {
    network = "default"
    access_config {
      network_tier = "PREMIUM" 
    } 
  }
}