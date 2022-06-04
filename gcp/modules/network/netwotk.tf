
# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_network

resource "google_compute_network" "vpc_network" {
  name                    = var.network_name
# auto_create_subnetworks = true
}