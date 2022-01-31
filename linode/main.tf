terraform {
  required_providers {
    linode = {
      source  = "linode/linode"
      version = "1.25.1"
    }
  }
}

# Configure the Linode Provider
provider "linode" {
  token = var.LINODE_TOKEN
}