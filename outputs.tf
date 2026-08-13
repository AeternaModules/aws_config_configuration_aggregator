output "config_configuration_aggregators_id" {
  description = "Map of id values across all config_configuration_aggregators, keyed the same as var.config_configuration_aggregators"
  value       = { for k, v in aws_config_configuration_aggregator.config_configuration_aggregators : k => v.id if v.id != null && length(v.id) > 0 }
}
output "config_configuration_aggregators_account_aggregation_source" {
  description = "Map of account_aggregation_source values across all config_configuration_aggregators, keyed the same as var.config_configuration_aggregators"
  value       = { for k, v in aws_config_configuration_aggregator.config_configuration_aggregators : k => v.account_aggregation_source if v.account_aggregation_source != null && length(v.account_aggregation_source) > 0 }
}
output "config_configuration_aggregators_arn" {
  description = "Map of arn values across all config_configuration_aggregators, keyed the same as var.config_configuration_aggregators"
  value       = { for k, v in aws_config_configuration_aggregator.config_configuration_aggregators : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "config_configuration_aggregators_name" {
  description = "Map of name values across all config_configuration_aggregators, keyed the same as var.config_configuration_aggregators"
  value       = { for k, v in aws_config_configuration_aggregator.config_configuration_aggregators : k => v.name if v.name != null && length(v.name) > 0 }
}
output "config_configuration_aggregators_organization_aggregation_source" {
  description = "Map of organization_aggregation_source values across all config_configuration_aggregators, keyed the same as var.config_configuration_aggregators"
  value       = { for k, v in aws_config_configuration_aggregator.config_configuration_aggregators : k => v.organization_aggregation_source if v.organization_aggregation_source != null && length(v.organization_aggregation_source) > 0 }
}
output "config_configuration_aggregators_region" {
  description = "Map of region values across all config_configuration_aggregators, keyed the same as var.config_configuration_aggregators"
  value       = { for k, v in aws_config_configuration_aggregator.config_configuration_aggregators : k => v.region if v.region != null && length(v.region) > 0 }
}
output "config_configuration_aggregators_tags" {
  description = "Map of tags values across all config_configuration_aggregators, keyed the same as var.config_configuration_aggregators"
  value       = { for k, v in aws_config_configuration_aggregator.config_configuration_aggregators : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "config_configuration_aggregators_tags_all" {
  description = "Map of tags_all values across all config_configuration_aggregators, keyed the same as var.config_configuration_aggregators"
  value       = { for k, v in aws_config_configuration_aggregator.config_configuration_aggregators : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

