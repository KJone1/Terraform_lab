
output "vpc_id" {
  description = "VPC network id"
  value       = aws_vpc.vpc_network.id
}
output "subnet_id" {
  description = "VPC subnet id"
  value       = aws_subnet.first.id
}
output "sg_basic" {
  description = "VPC security group 'basic'"
  value       = aws_security_group.basic
}
output "internet_gw" {
  description = "VPC internet gatewey"
  value       = aws_internet_gateway.gw
}