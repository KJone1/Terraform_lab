 
# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall
# https://github.com/tasdikrahman/terraform-gcp-examples/blob/master/single-and-multi-node-compute-vm/firewall.tf

resource "google_compute_firewall" "http-rule" {
  name        = "vpc-allow-http"
  network     = google_compute_network.vpc_network.name
  description = "Firewall rule targeting tagged http web servers"
  allow {
    protocol  = "tcp"
    ports     = ["80"]
  }
  source_ranges = ["0.0.0.0/0"]
  target_tags = ["http"]
}
resource "google_compute_firewall" "https-rule" {
  name        = "vpc-allow-https"
  network     = google_compute_network.vpc_network.name
  description = "Firewall rule targeting tagged https web servers"
  allow {
    protocol  = "tcp"
    ports     = ["443"]
  }
  source_ranges = ["0.0.0.0/0"]
  target_tags = ["https"]
}
resource "google_compute_firewall" "ssh-rule" {
  name        = "vpc-allow-ssh"
  network     = google_compute_network.vpc_network.name
  description = "Firewall rule for ssh connection"
  allow {
    protocol  = "tcp"
    ports     = ["22"]
  }
  source_ranges = ["0.0.0.0/0"]
  target_tags = ["ssh"]
}
resource "google_compute_firewall" "ping-rule" {
  name        = "vpc-allow-icmp"
  network     = google_compute_network.vpc_network.name
  description = "Firewall rule for ping"
  allow {
    protocol  = "icmp"
  }
  source_ranges = ["0.0.0.0/0"]
  target_tags = ["ping"]
}
resource "google_compute_firewall" "internal-rule" {
  name        = "vpc-allow-internal"
  network     = google_compute_network.vpc_network.name
  description = "Firewall rule for internal communication"
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
  source_ranges = ["10.128.0.0/9"]
}