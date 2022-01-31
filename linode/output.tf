output "instance_1" {
  description = "Metadata of instance 1."
  value       = [ linode_instance.tftest[0].label,
                  "public ipv4: ${linode_instance.tftest[0].ip_address}",
                  "private ipv4: ${linode_instance.tftest[0].private_ip_address}",
                  "location: ${data.linode_region.region_to_country.country}"]
}
output "instance_2" {
  description = "Metadata of instance 2."
  value       = [ linode_instance.tftest[1].label,
                  "public ipv4: ${linode_instance.tftest[1].ip_address}",
                  "private ipv4: ${linode_instance.tftest[1].private_ip_address}",
                  "location: ${data.linode_region.region_to_country.country}"]
}