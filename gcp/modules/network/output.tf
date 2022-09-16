
output "network_name" {
  description = "VPC network name"
  value       = google_compute_network.vpc_network.name
}
output "subnet_name" {
  description = "VPC subnetwork name"
  value       = google_compute_subnetwork.vpc_subnet.name
}