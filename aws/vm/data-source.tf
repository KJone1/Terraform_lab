
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami

data "aws_ami" "rhel-us-east1" {
  owners = ["309956199498"]
  most_recent = true
  filter {
    name   = "name"
    values = ["RHEL-8*"]
  }
  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}

data "aws_ami" "amzlinux-us-east1" {
  owners = ["137112412989"]
  most_recent = true
  filter {
      name   = "name"
      values = ["amzn-ami*"]
  }
  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}