output "power-vm_ip" {
  value = ibm_pi_instance.instance.pi_network[0].ip_address
}

# output "power-iaas_instance_guid" {
#   value = ibm_resource_instance.power-iaas_instance.guid
# }i

