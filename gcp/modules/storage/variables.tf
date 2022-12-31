
# --- Required ---
variable "name" {
  description = "disk name"
  type        = string
  nullable    = false
  sensitive   = false
}
variable "sizeGB" {
  description = "disk size in GB"
  type        = number
  nullable    = false
  sensitive   = false
}
# --- Optional ---
variable "deployment_count" {
  description = "number of disks to deploy"
  type        = number
  nullable    = false
  sensitive   = false
  default     = 1
}
variable "block_sizeBYTES" {
  description = "physical block size in bytes"
  type        = number
  nullable    = false
  sensitive   = false
  default     = 4096
}
variable "zone" {
  description = "zone to deploy -> 'a','b','c'"
  type        = string
  nullable    = false
  sensitive   = false
  default     = "c"
}
variable "type" {
  description = "disk type"
  type        = string
  nullable    = false
  sensitive   = false
  default     = "pd-ssd"
}
variable "labels" {
  description = "disk labels"
  type        = map(any)
  nullable    = false
  sensitive   = false
  default = {
    "environment" = "dev"
    "role"        = "server-storage"
    "app"         = "playground"
  }
}
