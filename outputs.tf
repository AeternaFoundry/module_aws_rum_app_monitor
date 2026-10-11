output "rum_app_monitors_id" {
  description = "Map of id values across all rum_app_monitors, keyed the same as var.rum_app_monitors"
  value       = { for k, v in aws_rum_app_monitor.rum_app_monitors : k => v.id if v.id != null && length(v.id) > 0 }
}
output "rum_app_monitors_app_monitor_configuration" {
  description = "Map of app_monitor_configuration values across all rum_app_monitors, keyed the same as var.rum_app_monitors"
  value       = { for k, v in aws_rum_app_monitor.rum_app_monitors : k => one(v.app_monitor_configuration) if v.app_monitor_configuration != null && length(v.app_monitor_configuration) > 0 }
}
output "rum_app_monitors_app_monitor_id" {
  description = "Map of app_monitor_id values across all rum_app_monitors, keyed the same as var.rum_app_monitors"
  value       = { for k, v in aws_rum_app_monitor.rum_app_monitors : k => v.app_monitor_id if v.app_monitor_id != null && length(v.app_monitor_id) > 0 }
}
output "rum_app_monitors_arn" {
  description = "Map of arn values across all rum_app_monitors, keyed the same as var.rum_app_monitors"
  value       = { for k, v in aws_rum_app_monitor.rum_app_monitors : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "rum_app_monitors_custom_events" {
  description = "Map of custom_events values across all rum_app_monitors, keyed the same as var.rum_app_monitors"
  value       = { for k, v in aws_rum_app_monitor.rum_app_monitors : k => one(v.custom_events) if v.custom_events != null && length(v.custom_events) > 0 }
}
output "rum_app_monitors_cw_log_enabled" {
  description = "Map of cw_log_enabled values across all rum_app_monitors, keyed the same as var.rum_app_monitors"
  value       = { for k, v in aws_rum_app_monitor.rum_app_monitors : k => v.cw_log_enabled if v.cw_log_enabled != null }
}
output "rum_app_monitors_cw_log_group" {
  description = "Map of cw_log_group values across all rum_app_monitors, keyed the same as var.rum_app_monitors"
  value       = { for k, v in aws_rum_app_monitor.rum_app_monitors : k => v.cw_log_group if v.cw_log_group != null && length(v.cw_log_group) > 0 }
}
output "rum_app_monitors_domain" {
  description = "Map of domain values across all rum_app_monitors, keyed the same as var.rum_app_monitors"
  value       = { for k, v in aws_rum_app_monitor.rum_app_monitors : k => v.domain if v.domain != null && length(v.domain) > 0 }
}
output "rum_app_monitors_domain_list" {
  description = "Map of domain_list values across all rum_app_monitors, keyed the same as var.rum_app_monitors"
  value       = { for k, v in aws_rum_app_monitor.rum_app_monitors : k => v.domain_list if v.domain_list != null && length(v.domain_list) > 0 }
}
output "rum_app_monitors_name" {
  description = "Map of name values across all rum_app_monitors, keyed the same as var.rum_app_monitors"
  value       = { for k, v in aws_rum_app_monitor.rum_app_monitors : k => v.name if v.name != null && length(v.name) > 0 }
}
output "rum_app_monitors_region" {
  description = "Map of region values across all rum_app_monitors, keyed the same as var.rum_app_monitors"
  value       = { for k, v in aws_rum_app_monitor.rum_app_monitors : k => v.region if v.region != null && length(v.region) > 0 }
}
output "rum_app_monitors_tags" {
  description = "Map of tags values across all rum_app_monitors, keyed the same as var.rum_app_monitors"
  value       = { for k, v in aws_rum_app_monitor.rum_app_monitors : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "rum_app_monitors_tags_all" {
  description = "Map of tags_all values across all rum_app_monitors, keyed the same as var.rum_app_monitors"
  value       = { for k, v in aws_rum_app_monitor.rum_app_monitors : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

