
# vpc              => https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc
# subnet           => https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet
# internet_gateway => https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway
# route_table      => https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table
# rt_association   => https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association

resource "aws_vpc" "vpc_network" {
  cidr_block = "160.24.0.0/16"
  instance_tenancy = "default"
  tags = {
    Name = var.network_name
  }
}

resource "aws_subnet" "first" {
  vpc_id            = aws_vpc.vpc_network.id
  availability_zone = var.availability_zone
  cidr_block        = "160.24.1.0/24"

  tags = {
    Name = "First"
  }
}
resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.vpc_network.id
  tags = {
    Name = "internet_gw"
  }
}
resource "aws_route_table" "toydeploy-rt" {
  vpc_id = aws_vpc.vpc_network.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }
}

resource "aws_route_table_association" "toydeploy-rta" {
  subnet_id      = aws_subnet.first.id
  route_table_id = aws_route_table.toydeploy-rt.id
}