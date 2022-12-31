
# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/container_cluster

module "network" {
  source       = "../modules/network"
  network_name = "my-main-vpc-network"
}

resource "google_container_cluster" "khan" {
  name     = "roosevelt-khan"
  location = "${var.region}-${var.zone}"
  # ↑ If you specify a zone the cluster will be a zonal cluster, 
  # If you specify a only the region the cluster will be a regional cluster.
  resource_labels = {
    "environment" = "prod"
  }
  network                  = module.network.network_name
  subnetwork               = module.network.subnet_name
  remove_default_node_pool = true
  initial_node_count       = 1
}

