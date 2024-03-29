
# --- Required ---
variable "name" {
  description = "instance names without deployment count number"
  type        = string
  nullable    = false
  sensitive   = false
}
variable "network_name" {
  description = "VPC network name"
  type        = string
  nullable    = false
  sensitive   = false
}
variable "subnet_name" {
  description = "VPC subnetwork name"
  type        = string
  nullable    = false
  sensitive   = false
}
variable "image" {
  description = "startup image"
  type        = string
  nullable    = false
  sensitive   = false
}
# --- Optional ---
variable "deployment_count" {
  description = "number of instances to deploy"
  type        = number
  nullable    = false
  sensitive   = false
  default     = 1
}
variable "region" {
  description = "region to deploy to"
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
variable "machine_type" {
  description = "instance type"
  type        = string
  nullable    = false
  sensitive   = false
  default     = "e2-standard-4"
}
variable "labels" {
  description = "instance labels"
  type        = map(any)
  nullable    = false
  sensitive   = false
  default     = {}
}
variable "tags" {
  description = "instance network tags"
  type        = list(any)
  nullable    = false
  sensitive   = false
  default     = ["http", "https", "ssh", "ping"]
}
variable "startup_script" {
  description = "instance startup script"
  type        = string
  nullable    = false
  sensitive   = false
  default     = ""
}

