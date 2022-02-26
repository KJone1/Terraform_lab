data "linode_sshkey" "ssh-Jan2022" {
  label = "generic-key-Jan2022"
}
data "linode_region" "region_to_country" {
  id = var.region
}
data "linode_images" "latest_image" {
  latest = true
}