
variable "project" {
  description = "project id"
  type        = string
  nullable    = false
  sensitive   = false
}
variable "region" {
  description = "region to deploy"
  type        = string
  nullable    = false
  sensitive   = false
  default     = "us-west1" 
} 
variable "zone" {
  description = "zone to deploy -> 'a','b','c'"
  type        = string
  nullable    = false
  sensitive   = false
  default     = "c" 
}
