
variable "project" {
  description = "project id"
  type        = map
  nullable    = false
  sensitive   = false
  default     = {
    test-project = "onyx-philosophy-333713"
  }
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
  type        = map
  nullable    = false
  sensitive   = false
  default     = {
    poland      = "europe-central2"
    finland     = "europe-north1"
    belgium     = "europe-west1"
    england     = "europe-west2"
    germany     = "europe-west3"
    switzerland = "europe-west6"
       
  } 
}
