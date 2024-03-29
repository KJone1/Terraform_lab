
# disk    => https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_disk

resource "google_compute_disk" "storage" {
  count                     = var.deployment_count
  name                      = var.name
  description               = "storage extantion for compute instance"
  size                      = var.sizeGB # in GB
  physical_block_size_bytes = var.block_sizeBYTES
  type                      = var.type
  zone                      = var.zone
  labels                    = var.labels
}

resource "google_compute_attached_disk" "default" {
  count       = var.deployment_count
  disk        = google_compute_disk.storage[count.index].self_link
  instance    = var.attach_to
  device_name = var.name
}