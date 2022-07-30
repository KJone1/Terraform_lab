
variable "deployment_count" {
  description = "number of instances to deploy"
  type        = number
  nullable    = false
  sensitive   = false
  default     = 1
}
variable "region" {
  description = "region to deploy"
  type        = string
  nullable    = false
  sensitive   = false
  default     = "us-east-1" 
} 
