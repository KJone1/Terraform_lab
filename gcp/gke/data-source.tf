
data "google_service_account" "default_sa" {
  account_id = "TfTest"
  project    = var.project
}
data "google_container_engine_versions" "gke-ver" {}