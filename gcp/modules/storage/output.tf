
output "id" {
  value       = try(google_compute_disk.data-storage[0].id, "")
}
output "name" {
  value       = try(google_compute_disk.data-storage[0].name, "")
}
output "self_link" {
  description = "self_link is a URL that points to the instance's metadata and configuration"
  value       = try(google_compute_disk.data-storage[0].self_link, "")
}
output "deployed_zone" {
  value       = try(google_compute_disk.data-storage[0].zone, "")
}
output "size" {
  description = "Disk size in GB"
  value       = try(google_compute_disk.data-storage[0].size, "")
}
output "block_size" {
  description = "Disk block size, defaults to 4096"
  value       = try(google_compute_disk.data-storage[0].physical_block_size_bytes, "")
}
output "type" {
  value       = try(google_compute_disk.data-storage[0].type, "")
}