resource "random_id" "name1" {
  byte_length = 2
}
# resource group
data "ibm_resource_group" "resource_group" {
  name = var.resource_group
}

# powervs workspace
resource "ibm_resource_instance" "power-iaas_instance" {
  name              = var.workspace_name
  service           = "power-iaas"
  plan              = "power-virtual-server-group"
  location          = var.zone
  resource_group_id = data.ibm_resource_group.resource_group.id
  tags              = var.workspace_tags

  //User can increase timeouts
  timeouts {
    create = "15m"
    update = "15m"
    delete = "15m"
  }
}

