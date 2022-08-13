
# vpc    => https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc
# subnet => https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet
resource "aws_vpc" "vpc_network" {
  cidr_block = "160.24.0.0/16"
  instance_tenancy = "default"
  tags = {
    Name = var.network_name
  }
}

resource "aws_subnet" "first" {
  vpc_id     = aws_vpc.vpc_network.id
  availability_zone = var.availability_zone
  cidr_block = "160.24.1.0/24"

  tags = {
    Name = "First"
  }
}