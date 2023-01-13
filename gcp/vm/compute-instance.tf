
locals {
  labels = {
    "environment" = "dev",
    "role"        = "dev-server"
    "app"         = "playground"
    "region"      = var.region
  }
  tags = ["http", "https", "ssh", "ping"]
}

module "network" {
  source       = "../modules/network"
  network_name = "my-main-vpc-network"
}

module "disk" {
  source    = "../modules/storage"
  count     = var.deployment_count
  name      = "${var.name}-${count.index + 1}-ext"
  zone      = "${var.region}-${var.zone}"
  sizeGB    = 20
  attach_to = module.vm[count.index].id
}

module "vm" {
  source       = "../modules/vm"
  count        = var.deployment_count
  name         = "${var.name}-${count.index + 1}"
  machine_type = var.machine_type
  image        = data.google_compute_image.rocky8-latest.id
  region       = var.region
  zone         = var.zone
  network_name = module.network.network_name
  subnet_name  = module.network.subnet_name
  labels       = local.labels
  tags         = local.tags
}