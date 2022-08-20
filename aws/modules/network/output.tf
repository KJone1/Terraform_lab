
output "name" {
  description = "VPC network name"
  value       = aws_vpc.vpc_network.tags.Name
}
output "subnet_id" {
  description = "VPC network name"
  value       = aws_subnet.first.id
}
output "sg_firewall" {
  description = "vpc security group 'firewall'"
  value       = aws_security_group.firewall
}