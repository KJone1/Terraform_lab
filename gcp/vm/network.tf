
module "network" {
  source       = "../modules/network"
  network_name = "my-main-vpc-network"
}

resource "google_compute_firewall" "kube-fw-rule" {
  name          = "fw-allow-kube-apiserver"
  network       = module.network.network_name
  description   = "Firewall rule for kube-apiserver"
  source_ranges = ["0.0.0.0/0"]
  allow {
    protocol = "tcp"
    ports    = ["6443"]
  }
  log_config {
    metadata = "INCLUDE_ALL_METADATA"
  }
}