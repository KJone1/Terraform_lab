
locals {
  labels = {
    "environment" = "dev",
    "role"        = "dev-server"
    "app"         = "playground"
    "region"      = var.region
  }
}

module "network" {
  source       = "../modules/network"
  network_name = "my-main-vpc-network" 
}

module "disk" {
  source         = "../modules/storage"
  count          = var.deployment_count
  name           = "${var.name}-${count.index + 1}-disk"
  zone           = "${var.region}-${var.zone}"
  sizeGB         = 20
}
module "vm" {
  source         = "../modules/vm"
  count          = var.deployment_count
  name           = "${var.name}-${count.index + 1}"
  machine_type   = var.machine_type
  region         = var.region
  zone           = var.zone
  network_name   = module.network.network_name
  subnet_name    = module.network.subnet_name
  labels         = local.labels
  tags           = ["http","https","ssh","ping"]
  attached_disk_source = module.disk[count.index].metadata.output.self_link
  attached_disk_name = "extnd"
}