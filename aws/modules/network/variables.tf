
variable "network_name" {
  description = "VPC network name"
  type        = string
  nullable    = false
  default     = "my-vpc-network"
}
variable "availability_zone" {
  description = "VPC availability zone"
  type        = string
  nullable    = false
}