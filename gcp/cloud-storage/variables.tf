
variable "project" {
  description = "project id"
  type        = map(any)
  nullable    = false
  sensitive   = false
  default = {
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
variable "zone" {
  description = "zone to deploy -> 'a','b','c'"
  type        = string
  nullable    = false
  sensitive   = false
  default     = "c"
}
