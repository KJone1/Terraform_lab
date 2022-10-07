
variable "project" {
  description = "project id"
  type        = string
  nullable    = false
  sensitive   = false
  default     = "onyx-philosophy-333713"
}
variable "region" {
  description = "region to deploy"
  type        = string
  nullable    = false
  sensitive   = false
  default     = "europe-north1" 
} 
variable "zone" {
  description = "zone to deploy -> 'a','b','c'"
  type        = string
  nullable    = false
  sensitive   = false
  default     = "c" 
}
