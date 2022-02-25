
resource "google_compute_instance" "default" {
  name         = "tftest"
  machine_type = "e2-micro"
  tags = ["foo", "bar"]
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
    network_interface {
    network = "default"
    access_config {

    }
  }
}