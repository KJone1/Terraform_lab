
variable "network_name" {
  description = "VPC network name"
  type        = string
  nullable    = false
  sensitive   = false
  default     = "my-vpc-network"
}