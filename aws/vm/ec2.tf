
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance


resource "aws_instance" "defualt" {
  count         = var.deployment_count
  ami           = "ami-004b161a1cceb1ceb" # us-east-1
  instance_type = "t3.small"
}