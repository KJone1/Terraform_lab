
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami

data "aws_ami" "ubuntu-us-east1" {
  most_recent = true
  filter {
      name   = "image-id"
      values = ["ami-0149b2da6ceec4bb0"]
  }
  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}