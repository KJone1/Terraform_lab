
# ↓ custom image made with packer based on rocky8
data "google_compute_image" "pl-rocky8-latest" {
  family  = "pl-rocky8"
}
# ↓ latest rocky8 base image
data "google_compute_image" "rocky8-latest" {
  family  = "rocky-linux-8"
  project = "rocky-linux-cloud"
}