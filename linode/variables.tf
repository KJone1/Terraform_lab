variable "LINODE_TOKEN" {
  description = "Linode accese token"
  type        = string
  nullable    = false
  sensitive   = true
}
variable "region" {
  description = "instance location"
  type        = string
  nullable    = false
  sensitive   = false
  default     = "ap-west"
}
variable "deployment_count" {
  description = "number of instances and block storage volumes to deploy"
  type        = number
  nullable    = false
  sensitive   = false
}