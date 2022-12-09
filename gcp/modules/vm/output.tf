
output "id" {
  description = "unique string identifier that is assigned to a VM instance"
  value       = try(google_compute_instance.default[0].id, "")
}
output "name" {
  value       = try(google_compute_instance.default[0].name, "")
}
output "machine_type" {
  value       = try(google_compute_instance.default[0].machine_type, "")
}
output "instance_id" {
  description = "instance uuid"
  value       = try(google_compute_instance.default[0].instance_id, "")
}
output "deployed_zone" {
  value       = try(google_compute_instance.default[0].zone, "")
}
output "deployed_image" {
  value       = try(google_compute_instance.default[0].boot_disk[0].initialize_params[0].image, "")
}