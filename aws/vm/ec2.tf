
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance

resource "aws_instance" "defualt" {
  count         = var.deployment_count
  ami           = data.aws_ami.rocky8-us-east1.id
  instance_type = "t3.small"
  key_name      = "key-082022"
  tags = {
    Name = "srv-${count.index + 1}"
  }
}