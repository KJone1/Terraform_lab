
# https://www.terraform.io/language/settings/backends/gcs

terraform {
  required_version = " ~> 1.1.4"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.11.0"
    }
  }
}

provider "google" {
  credentials = "../service_account_keys.json"
  project     = var.project                 # Project id read from tfvars
  region      = var.region                  # Default: us-west1
  zone        = "${var.region}-${var.zone}" # Default: zone c
}