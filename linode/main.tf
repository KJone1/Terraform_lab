terraform {
  required_providers {
    linode = {
      source  = "linode/linode"
      version = "1.25.2"
    }
  }
  backend "s3" {
    bucket = "tfstate"
    key    = "network/terraform.tfstate"
    region = "eu-central-1"                        # e.g. us-east-1
    endpoint = "eu-central-1.linodeobjects.com"    # e.g. us-est-1.linodeobjects.com
    access_key = "BVH1JK7NQXK1TS55F53C"
    secret_key = "QRu5NKBrBcJofPDFh9lH1KPIhzUhJzL5Qo6XvDRA"
    skip_credentials_validation = true
    # According to Terraform's documentation: (Optional) Skip the credentials validation 
    # via the STS API. Presumably this is referring to Amazon STS, but I'll be honest; 
    # I don't care. If this isn't set to true, Terraform will ask Amazon if you Linode 
    # credentials are valid S3 credentials. You don't want that.
  }
}

# Configure the Linode Provider
provider "linode" {
  token = var.LINODE_TOKEN
}