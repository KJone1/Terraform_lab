
variable "project" {
  description = "project id"
  type        = string
  nullable    = false
  sensitive   = false
  default     = "onyx-philosophy-333713"
}
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
  default     = "europe-central2" 
} 
variable "zone" {
  description = "zone to deploy -> 'a','b','c'"
  type        = string
  nullable    = false
  sensitive   = false
  default     = "c" 
}
