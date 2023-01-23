
output "instance_metadata" {
  description = "Metadata of deployed gcp compute instance"
  value = {
    for instance in module.vm[*] :
    instance.name => instance

  }
}
output "disk_metadata" {
  description = "Metadata of deployed gcp compute disk"
  value = {
    for disk in module.disk[*] :
    disk.name => disk

  }
}