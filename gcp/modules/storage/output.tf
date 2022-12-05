
output "metadata" {
  description = "Metadata of deployed gcp compute disk"
  value = {
    for disk in google_compute_disk.data-storage:
      "output" => {
        name              = disk.name, 
        id                = disk.id
        self_link         = disk.self_link
        deployed_zone     = disk.zone
        size              = disk.size
        block_size        = disk.physical_block_size_bytes
        type              = disk.type
      }
  }
}