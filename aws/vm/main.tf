
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.24.0"
    }
  }
}

locals {
  terraform_cred = csvdecode(file("../terraform_credential_keys.csv"))
  access_key     = local.terraform_cred[0]["Access key ID"]
  secret_key     = local.terraform_cred[0]["Secret access key"]
}

provider "aws" {
  region     = var.region # defaults to us-east-1
  access_key = local.access_key
  secret_key = local.secret_key
  default_tags {
    tags = {
      region = var.region
    }
  }
}