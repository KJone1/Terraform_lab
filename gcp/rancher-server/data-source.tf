
# ↓ latest Container-Optimized OS 93-lts base image
data "google_compute_image" "cos-latest" {
  family  = "cos-93-lts"
  project = "cos-cloud"
}