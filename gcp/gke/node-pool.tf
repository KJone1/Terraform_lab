
# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/container_node_pool

resource "google_container_node_pool" "primary_node_pool" {
  name       = var.cluster_node_name
  location   = "${var.region}-${var.zone}"
  cluster    = google_container_cluster.prime.name
  node_count = var.cluster_node_count
  version    = data.google_container_engine_versions.gke-ver.default_cluster_version

  node_config {
    preemptible  = true
    machine_type = var.cluster_node_type
    disk_size_gb = 20
    disk_type    = "pd-standard"
    labels = {
      "role"    = "cluster-node"
      "cluster" = google_container_cluster.prime.name
    }
    tags = [
      "http",
      "https",
      "ssh",
      "ping",
    ]
    service_account = data.google_service_account.default_sa.email
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
}
