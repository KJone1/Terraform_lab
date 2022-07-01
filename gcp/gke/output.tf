
output "node_version" {
  description = "gke nodes Kubernetes version"
  value       = data.google_container_engine_versions.gke-ver.default_cluster_version
}