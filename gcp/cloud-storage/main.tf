
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
  project     = var.project["test-project"]  # project id 
  region      = var.region                   # Warsaw, Poland, eu-central2
  zone        = "${var.region}-c"            # default zone
}

