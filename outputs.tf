output "cloudwatch_log_delivery_destination_policies_delivery_destination_name" {
  description = "Map of delivery_destination_name values across all cloudwatch_log_delivery_destination_policies, keyed the same as var.cloudwatch_log_delivery_destination_policies"
  value       = { for k, v in aws_cloudwatch_log_delivery_destination_policy.cloudwatch_log_delivery_destination_policies : k => v.delivery_destination_name if v.delivery_destination_name != null && length(v.delivery_destination_name) > 0 }
}
output "cloudwatch_log_delivery_destination_policies_delivery_destination_policy" {
  description = "Map of delivery_destination_policy values across all cloudwatch_log_delivery_destination_policies, keyed the same as var.cloudwatch_log_delivery_destination_policies"
  value       = { for k, v in aws_cloudwatch_log_delivery_destination_policy.cloudwatch_log_delivery_destination_policies : k => v.delivery_destination_policy if v.delivery_destination_policy != null && length(v.delivery_destination_policy) > 0 }
}
output "cloudwatch_log_delivery_destination_policies_region" {
  description = "Map of region values across all cloudwatch_log_delivery_destination_policies, keyed the same as var.cloudwatch_log_delivery_destination_policies"
  value       = { for k, v in aws_cloudwatch_log_delivery_destination_policy.cloudwatch_log_delivery_destination_policies : k => v.region if v.region != null && length(v.region) > 0 }
}

