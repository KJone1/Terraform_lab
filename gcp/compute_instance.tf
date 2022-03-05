
resource "google_compute_instance" "default" {
  name           = "tftest"
  description    = "vm instance deployment test"
  machine_type   = "e2-micro"
  zone           = "europe-central2-c"
  desired_status = "RUNNING"
  tags = ["foo", "bar"]
  boot_disk {
    device_name = "playground"
    initialize_params {
    # image = "rocky-linux-cloud/rocky-linux-8"
      image = data.google_compute_image.pl-rocky8-latest 
    }
  }
    network_interface {
    network = "default"
    access_config {
      network_tier = "PREMIUM" 
    } 
  }
}