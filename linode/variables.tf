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