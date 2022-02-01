# output "instance_1" {
#   description = "Metadata of instance 1."
#   value = [linode_instance.tftest[0].label,
#           "public ipv4: ${linode_instance.tftest[0].ip_address}",
#           "private ipv4: ${linode_instance.tftest[0].private_ip_address}",
#           "location: ${data.linode_region.region_to_country.country}" ]
# }
# output "instance_2" {
#   description = "Metadata of instance 2."
#   value = [linode_instance.tftest[1].label,
#           "public ipv4: ${linode_instance.tftest[1].ip_address}",
#           "private ipv4: ${linode_instance.tftest[1].private_ip_address}",
#           "location: ${data.linode_region.region_to_country.country}"]
# }
output "instance_metadata" {
  description = "Metadata of deployed linode instances"
  value = {
    for instance in linode_instance.tftest:
        instance.label => {public_ipv4_addr = instance.ip_address,
                          private_ip_addr   = instance.private_ip_address,
                          deployed_location = data.linode_region.region_to_country.country}
  }
}