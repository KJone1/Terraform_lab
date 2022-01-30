terraform {
  required_providers {
    linode  = {
      source  = "linode/linode"
      version = "1.25.1"
    }
  }
}
variable "LINODE_TOKEN" {
  type        = string
  description = "Linode accese token"
  nullable    = false
  sensitive   = true
}
# Configure the Linode Provider
provider "linode" {
  token     = "${var.LINODE_TOKEN}"
}

resource "linode_instance" "tftest" {
    label           = "tf_test"
    image           = "linode/rocky8"
    region          = "ap-west"
    type            = "g6-standard-2"
    authorized_keys = ["ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIH/Ek7QHteH8JQYs2+49PazwQvghmpxjw5x3hexSYDQ0 linode-homelab"]
    root_pass       = "bloodyvladi"
  # group           = "group_test"
    tags            = [ "tag_test1","tag_test2" ]
    swap_size       = 256
  # private_ip      = true
}
