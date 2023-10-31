#####################################################
# Create Public Subnet
#####################################################

resource "ibm_pi_network" "public_subnet" {
  count                = var.pi_public_subnet_enable ? 1 : 0
  pi_cloud_instance_id = ibm_resource_instance.power-iaas_instance.guid
  pi_network_name      = "public_net"

  pi_dns           = ["9.9.9.9"]
  pi_network_type  = "pub-vlan"
  pi_network_jumbo = true
}