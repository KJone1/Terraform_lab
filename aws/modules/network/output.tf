
output "name" {
  description = "VPC network name"
  value       = aws_vpc.vpc_network.tags.Name
}
output "subnet_id" {
  description = "VPC network name"
  value       = aws_subnet.first.id
}
output "sg_firewall_id" {
  description = "vpc security group 'firewall' id"
  value       = aws_security_group.firewall.id
}
