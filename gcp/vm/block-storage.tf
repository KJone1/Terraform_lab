
# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_disk

resource "google_compute_disk" "app-data-storage" {
  name                      = "test-block"
  description               = "storage extantion for vm"
  size                      = 20  # in GB
  physical_block_size_bytes = 4096
  type                      = "pd-ssd"
  zone                      = "${var.region}-${var.zone}"
  labels                    = {
    "environment" = "prod",
    "role"        = "web-server-storage"
    "app-name"    = "playground"
    "region"      = "europe-central"
  }
}