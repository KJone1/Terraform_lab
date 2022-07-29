
# https://www.terraform.io/language/settings/backends/gcs

terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.11.0"
    }
  }
}

provider "google" {
  credentials = "../service_account_keys.json"
  project     = var.project                  # Project id 
  region      = var.region                   # Default: Hamina, Finland, eu-north1
  zone        = "${var.region}-${var.zone}"  # Default: zone c
}