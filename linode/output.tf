output "instance_metadata" {
  description = "Metadata of deployed Linode instances"
  value = {
    for instance in linode_instance.tftest :
    instance.label => { public_ipv4_addr = instance.ip_address,
      private_ip_addr                    = instance.private_ip_address,
      deployed_location                  = data.linode_region.region_to_country.country,
    status = instance.status }
  }
}
output "volume_metadata" {
  description = "Metadata of deployed Block Storage Volumes"
  value = {
    for volume in linode_volume.tftest :
    volume.label => { disk_path = volume.filesystem_path,
      size                      = volume.size,
      status                    = volume.status,
    connected_to = volume.linode_id }
  }
}