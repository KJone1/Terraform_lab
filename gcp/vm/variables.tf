
variable "project" {
  description = "project id"
  type        = string
  nullable    = false
  sensitive   = false
}
variable "name" {
  description = "instance name"
  type        = string
  nullable    = false
  sensitive   = false
}
variable "deployment_count" {
  description = "number of instances to deploy"
  type        = number
  nullable    = false
  sensitive   = false
  default     = 1
}
variable "machine_type" {
  description = "machine type"
  type        = string
  nullable    = false
  sensitive   = false
  default     = "e2-standard-4"
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
