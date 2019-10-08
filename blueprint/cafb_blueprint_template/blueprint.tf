
module "resource_groups" {
    source  = "aztfmod/caf-resource-group/azurerm"
    version = "~>0.1.0"
  
    prefix          = var.prefix
    resource_groups = var.resource_groups
    tags            = local.tags
}

module "virtual_network_region1" {
    source  = "aztfmod/caf-virtual-network/azurerm"
    version = "~>0.1.0"

    virtual_network_rg          = module.resource_groups.object.rg1.name
    prefix                      = var.prefix
    location                    = var.networking.region1.location
    networking_object           = var.networking.region1
    tags                        = local.tags
    diagnostics_map             = var.diagnostics_map
    log_analytics_workspace     = var.log_analytics_workspace
}

