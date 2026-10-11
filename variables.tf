variable "rum_app_monitors" {
  description = <<EOT
Map of rum_app_monitors, attributes below
Required:
    - name
Optional:
    - cw_log_enabled
    - domain
    - domain_list
    - region
    - tags
    - tags_all
    - app_monitor_configuration (block):
        - allow_cookies (optional)
        - enable_xray (optional)
        - excluded_pages (optional)
        - favorite_pages (optional)
        - guest_role_arn (optional)
        - identity_pool_id (optional)
        - included_pages (optional)
        - session_sample_rate (optional)
        - telemetries (optional)
    - custom_events (block):
        - status (optional)
EOT

  type = map(object({
    name           = string
    cw_log_enabled = optional(bool)
    domain         = optional(string)
    domain_list    = optional(list(string))
    region         = optional(string)
    tags           = optional(map(string))
    tags_all       = optional(map(string))
    app_monitor_configuration = optional(object({
      allow_cookies       = optional(bool)
      enable_xray         = optional(bool)
      excluded_pages      = optional(set(string))
      favorite_pages      = optional(set(string))
      guest_role_arn      = optional(string)
      identity_pool_id    = optional(string)
      included_pages      = optional(set(string))
      session_sample_rate = optional(number)
      telemetries         = optional(set(string))
    }))
    custom_events = optional(object({
      status = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.rum_app_monitors : (
        v.app_monitor_configuration == null || (v.app_monitor_configuration.session_sample_rate == null || (v.app_monitor_configuration.session_sample_rate >= 0 && v.app_monitor_configuration.session_sample_rate <= 1))
      )
    ])
    error_message = "must be between 0 and 1"
  }
  validation {
    condition = alltrue([
      for k, v in var.rum_app_monitors : (
        v.domain_list == null || (alltrue([for x in v.domain_list : length(x) >= 1 && length(x) <= 253]))
      )
    ])
    error_message = "must be between 1 and 253 characters"
  }
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

