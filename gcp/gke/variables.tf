
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
  default     = "europe-central2"
}
variable "zone" {
  description = "zone to deploy -> 'a','b','c'"
  type        = string
  nullable    = false
  sensitive   = false
  default     = "a"
}
variable "cluster_name" {
  description = "GKE cluster name"
  type        = string
  nullable    = false
  sensitive   = false
  default     = "Prime"
}
variable "cluster_node_name" {
  description = "GKE cluster node name"
  type        = string
  nullable    = false
  sensitive   = false
  default     = "EX"
}
variable "cluster_node_count" {
  description = "GKE cluster node count"
  type        = number
  nullable    = false
  sensitive   = false
  default     = 3
}
variable "cluster_node_type" {
  description = "GKE cluster node machine type"
  type        = string
  nullable    = false
  sensitive   = false
  default     = "e2-medium"
}