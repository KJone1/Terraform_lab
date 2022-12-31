
# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket#nested_versioning

resource "google_storage_bucket" "default" {
  name                        = "tf_test_default"
  location                    = "EUROPE-CENTRAL2" # Warsaw
  force_destroy               = false
  storage_class               = "STANDARD"
  uniform_bucket_level_access = true
  labels = {
    "environment" = "prod",
    "role"        = "web-server-bucket"
    "app-name"    = "playground"
    "region"      = "europe-central"
  }
  versioning {
    enabled = true
  }
  lifecycle_rule {
    condition {
      age = 3
    }
    action {
      type = "Delete"
    }
  }
  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  }
  cors {
    origin          = ["*"]
    method          = ["GET", "HEAD", "PUT", "POST", "DELETE"]
    response_header = ["*"]
    max_age_seconds = 3600
  }
}