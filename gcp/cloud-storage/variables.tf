
variable "project" {
  description = "project id"
  type        = map
  nullable    = false
  sensitive   = false
  default     = {
    test-project = "onyx-philosophy-333713"
  }
}
variable "region" {
  description = "region to deploy"
  type        = string
  nullable    = false
  sensitive   = false
  default     = "europe-central2" 
}
