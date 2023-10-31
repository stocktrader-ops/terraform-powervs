output "power-iaas_instance_crn" {
  value = ibm_resource_instance.power-iaas_instance.id
}

output "power-iaas_instance_guid" {
  value = ibm_resource_instance.power-iaas_instance.guid
}

output "pi_images" {
  description = "Object containing imported PowerVS image names and image ids."
  value       = local.pi_images
}

output "pi_public_subnet" {
  description = "Created PowerVS public subnet."
  value = var.pi_public_subnet_enable ? {
    "name" = ibm_pi_network.public_subnet[0].pi_network_name
    "id" = ibm_pi_network.public_subnet[0].network_id } : {}
}