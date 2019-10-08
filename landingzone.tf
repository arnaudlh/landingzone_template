module "cafb_blueprint_template" {
    source = "./blueprint/cafb_blueprint_template"
    
    prefix                  = local.prefix
    resource_groups         = var.latency_measurement_resource_groups
    networking              = var.latency_measurement_networking
    diagnostics_map         = local.diagnostics_map
    log_analytics_workspace = local.log_analytics_workspace
    tags                    = local.tags
}
