 
# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall
# https://github.com/tasdikrahman/terraform-gcp-examples/blob/master/single-and-multi-node-compute-vm/firewall.tf

resource "google_compute_firewall" "http-rule" {
  name          = "vpc-allow-http"
  network       = google_compute_network.vpc_network.name
  description   = "Firewall rule targeting tagged http web servers"
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["http"]
  allow {
    protocol  = "tcp"
    ports     = ["80"]
  }
  log_config {
    metadata = "INCLUDE_ALL_METADATA"
  }
}
resource "google_compute_firewall" "https-rule" {
  name          = "vpc-allow-https"
  network       = google_compute_network.vpc_network.name
  description   = "Firewall rule targeting tagged https web servers"
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["https"]
  allow {
    protocol  = "tcp"
    ports     = ["443"]
  }
  log_config {
    metadata = "INCLUDE_ALL_METADATA"
  }
}
resource "google_compute_firewall" "health-check-rule" {
  name          = "vpc-allow-health-check"
  network       = google_compute_network.vpc_network.name
  description   = "Firewall rule allowing health checks from gcp L7 LB"
  source_ranges = ["35.191.0.0/16","130.211.0.0/22"]
  allow {
    protocol  = "tcp"
    ports     = ["30000-32767"]
  }
  log_config {
    metadata = "INCLUDE_ALL_METADATA"
  }
}
resource "google_compute_firewall" "ssh-rule" {
  name          = "vpc-allow-ssh"
  network       = google_compute_network.vpc_network.name
  description   = "Firewall rule for ssh connection"
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["ssh"]
  allow {
    protocol  = "tcp"
    ports     = ["22"]
  }
  log_config {
    metadata = "INCLUDE_ALL_METADATA"
  }
}
resource "google_compute_firewall" "ping-rule" {
  name          = "vpc-allow-icmp"
  network       = google_compute_network.vpc_network.name
  description   = "Firewall rule for ping"
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["ping"]
  allow {
    protocol  = "icmp"
  }
}
resource "google_compute_firewall" "internal-rule" {
  name          = "vpc-allow-internal"
  network       = google_compute_network.vpc_network.name
  description   = "Firewall rule for internal communication"
  source_ranges = ["10.128.0.0/9"]
  allow {
    protocol  = "tcp"
    ports     = ["0-65535"]
  }
  allow {
    protocol  = "udp"
    ports     = ["0-65535"]
  }
  allow {
    protocol  = "icmp"
  }
}
