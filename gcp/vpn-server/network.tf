
module "network" {
  source       = "../modules/network"
  network_name = "wireguard-network"
}

resource "google_compute_firewall" "wg-vpn-rule" {
  name          = "vpc-allow-wg-vpn"
  network       = module.network.network_name
  description   = "Firewall rule for WireGuard VPN"
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["vpn"]
  allow {
    protocol = "udp"
    ports    = ["51820"]
  }
  allow {
    protocol = "udp"
    ports    = ["53"]
  }
  log_config {
    metadata = "INCLUDE_ALL_METADATA"
  }
}