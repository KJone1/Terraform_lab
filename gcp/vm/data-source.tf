
# ↓ latest rocky8 base image
data "google_compute_image" "rocky8-latest" {
  family  = "rocky-linux-8"
  project = "rocky-linux-cloud"
}