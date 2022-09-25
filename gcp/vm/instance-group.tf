
# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance_group

resource "google_compute_instance_group" "servers" {
  name        = "terraform-servers"
  description = "Terraform instance group"
  zone        = "${var.region}-${var.zone}"
  instances   = google_compute_instance.default[*].id
}
