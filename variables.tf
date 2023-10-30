// Service / Account
variable "ibm_cloud_api_key" {
  description = "API Key"
  type        = string
  default     = "<key>"
}
variable "region" {
  description = "Reigon of Service"
  type        = string
  default     = "<e.g dal>"
}
variable "zone" {
  description = "Zone of Service"
  type        = string
  default     = "<e.g 12>"
}

variable "resource_group" {
  description = "Resource group name"
  type        = string
  default     = "devOps"  
}


variable "workspace_name" {
  description = "Power VS workspace name name"
  default = "powervs-workspace"
}

variable "workspace_location" {
  description = "Power VS workspace location"
  default = "syd05"
}

