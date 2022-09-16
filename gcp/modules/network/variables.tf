
variable "network_name" {
  description = "VPC network name"
  type        = string
  nullable    = false
  sensitive   = false
  default     = "my-vpc-network"
}
variable "subnet_name" {
  description = "VPC subnetwork name"
  type        = string
  nullable    = false
  sensitive   = false
  default     = "my-vpc-subnetwork"
}
variable "cidr_range" {
  description = "VPC IP CIDR range"
  type        = string
  nullable    = false
  sensitive   = false
  default     = "10.2.2.0/26"
}