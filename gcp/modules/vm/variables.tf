
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
  type        = map
  nullable    = false
  sensitive   = false
  default     = {
    "environment" = "dev"
    "role"        = "dev-server"
    "app"         = "playground"
  }
}
variable "tags" {
  description = "instance network tags"
  type        = list
  nullable    = false
  sensitive   = false
  default     = ["http","https","ssh","ping"]
}
variable "startup_script" {
  description = "instance startup script"
  type        = string
  nullable    = false
  sensitive   = false
  default     = ""
}
variable "attached_disk" {
  description = "attached disk self link"
  type        = string
  nullable    = false
  sensitive   = false
  default     = ""
}
variable "attached_disk_name" {
  description = "attached disk name"
  type        = string
  nullable    = false
  sensitive   = false
  default     = ""
}
