
output "name" {
  description = "VPC network name"
  value       = aws_vpc.vpc_network.tags.Name
}
output "subnet_id" {
  description = "VPC subnet id"
  value       = aws_subnet.first.id
}
output "sg_firewall" {
  description = "VPC security group 'firewall'"
  value       = aws_security_group.firewall
}
output "sg_wg_vpn" {
  description = "VPC security group 'wg_vpn'"
  value       = aws_security_group.wg_vpn
}
output "internet_gw" {
  description = "VPC internet gatewey"
  value       = aws_internet_gateway.gw
}