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

variable "workspace_tags" {
  description = "List of Tag names for IBM Cloud PowerVS workspace."
  type        = list(string)
  default =   [ "created from catalog" ]
}

variable "pi_image_names" {
  description = "List of images to be imported into cloud account from catalog images. Supported values can be found [here](https://github.com/terraform-ibm-modules/terraform-ibm-powervs-workspace/blob/main/docs/catalog_images_list.md)"
  type        = list(string)
  default     = ["RHEL8-SP6", "SLES15-SP4", "7300-01-01"]
}
variable "pi_public_subnet_enable" {
  description = "IBM Cloud PowerVS Public Network. Set to true to enable this."
  type        = bool
  default     = true
}