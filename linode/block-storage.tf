resource "linode_volume" "tftest" {
  count     = var.deployment_count
  label     = "BSV.${count.index + 1}"
  region    = var.region
  size      = 20 # in GB
  linode_id = linode_instance.tftest[count.index].id
  tags      = ["tagtest1", "tagtest2"]
}