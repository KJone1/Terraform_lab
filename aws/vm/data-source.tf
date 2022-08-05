
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami

data "aws_ami" "rocky8-us-east1" {
  owners = ["aws-marketplace"]
  most_recent = true
  filter {
    name   = "name"
    values = ["Rocky-8-ec2*"]
  }
  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}