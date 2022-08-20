
variable "deployment_count" {
  description = "number of instances to deploy"
  type        = number
  nullable    = false
  default     = 1
}
variable "region" {
  description = "Region to deploy to"
  type        = string
  nullable    = false
  default     = "us-east-1" 
} 
variable "az" {
  description = "Availability zones to deploy to"
  type        = string
  nullable    = false
  default     = "d" 
} 
variable "pub_key_name" {
  description = "aws key pair name"
  type        = string
  nullable    = false
  default     = "key-082022"
}
