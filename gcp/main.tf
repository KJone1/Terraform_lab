
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
  region      = "europe-central2"         # Warsaw, Poland
  zone        = "europe-central2-c"       # default zone
}

