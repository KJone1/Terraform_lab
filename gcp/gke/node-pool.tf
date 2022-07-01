
# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/container_node_pool

resource "google_container_node_pool" "primary_node_pool" {
  name       = "louis-mckay"
  location   = "${var.region}-${var.zone}"
  cluster    = google_container_cluster.khan.name
  node_count = 3
  version    = data.google_container_engine_versions.gke-ver.default_cluster_version
       
  node_config {
    preemptible  = true
    machine_type = "e2-small"
    disk_size_gb = 20
    disk_type    = "pd-standard"
    labels       = {
    "environment" = "prod"
    "role"        = "cluster-node"
    "region"      = var.region
    } 
    tags          = [
      "http",
      "https",
      "ssh",
      "ping",
      "app",
    ]  
    service_account = data.google_service_account.Test_Proj_TfTest.email
    oauth_scopes    = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
}
