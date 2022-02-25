
terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.11.0"
    }
  }
}

provider "google" {
  credentials = "service_account_keys.json"
  project     = "onyx-philosophy-333713"  # project id 
  region      = "us-central1"
  zone        = "us-central1-c"
}

