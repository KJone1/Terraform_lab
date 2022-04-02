 
# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall
# https://github.com/tasdikrahman/terraform-gcp-examples/blob/master/single-and-multi-node-compute-vm/firewall.tf

resource "google_compute_firewall" "http-rule" {
  name        = "webserver-firewall-rules"
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
  name        = "webserver-firewall-rules"
  network     = google_compute_network.vpc_network.name
  description = "Firewall rule targeting tagged https web servers"
  allow {
    protocol  = "tcp"
    ports     = ["443"]
  }
  source_ranges = ["0.0.0.0/0"]
  target_tags = ["https"]
}