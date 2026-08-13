variable "config_configuration_aggregators" {
  description = <<EOT
Map of config_configuration_aggregators, attributes below
Required:
    - name
Optional:
    - region
    - tags
    - tags_all
    - account_aggregation_source (block):
        - account_ids (required)
        - all_regions (optional)
        - regions (optional)
    - organization_aggregation_source (block):
        - all_regions (optional)
        - regions (optional)
        - role_arn (required)
EOT

  type = map(object({
    name     = string
    region   = optional(string)
    tags     = optional(map(string))
    tags_all = optional(map(string))
    account_aggregation_source = optional(object({
      account_ids = list(string)
      all_regions = optional(bool)
      regions     = optional(list(string))
    }))
    organization_aggregation_source = optional(object({
      all_regions = optional(bool)
      regions     = optional(list(string))
      role_arn    = string
    }))
  }))
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

