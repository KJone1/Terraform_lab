
# network     => https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_network
# subnetworks => https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork
resource "google_compute_network" "vpc_network" {
  name                    = var.network_name
  auto_create_subnetworks = false
}
resource "google_compute_subnetwork" "vpc_subnet" {
  name          = var.subnet_name
  ip_cidr_range = var.cidr_range
  network       = google_compute_network.vpc_network.id
}