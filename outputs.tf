#####
# CloudWatch Log Group
#####

output "log_group_arn" {
  description = "The log group arn."
  value       = aws_cloudwatch_log_group.this.arn
}

output "log_group_id" {
  description = "The log group ID."
  value       = aws_cloudwatch_log_group.this.id
}

output "log_group_kms_key_id" {
  description = "The arn of the KMS Key to use when encrypting log data."
  value       = aws_cloudwatch_log_group.this.kms_key_id
}

output "log_group_name" {
  description = "The log group name."
  value       = aws_cloudwatch_log_group.this.name
}

output "log_group_retention_in_days" {
  description = "The number of days the log events are retained."
  value       = aws_cloudwatch_log_group.this.retention_in_days
}

output "log_group_tags" {
  description = "The tags assigned to the log group."
  value       = aws_cloudwatch_log_group.this.tags
}


#####
# Log Group KMS Key
#####

output "log_kms_key_arn" {
  description = "The arn of the log group key."
  value       = element(concat(aws_kms_key.this.*.arn, [""]), 0)
}

output "log_kms_key_customer_master_key_spec" {
  description = "The specifications for KMS master key."
  value       = element(concat(aws_kms_key.this.*.customer_master_key_spec, [""]), 0)
}

output "log_kms_key_deletion_window_in_days" {
  description = "The duration in days after which the key is deleted after destruction of the resource."
  value       = element(concat(aws_kms_key.this.*.deletion_window_in_days, [""]), 0)
}

output "log_kms_key_description" {
  description = "The description of the key as viewed in AWS console."
  value       = element(concat(aws_kms_key.this.*.description, [""]), 0)
}

output "log_kms_key_enable_rotation" {
  description = "Specifies whether key rotation is enabled."
  value       = element(concat(aws_kms_key.this.*.enable_key_rotation, [""]), 0)
}

output "log_kms_resource_id" {
  description = "A globally unique identifier for KMS resource."
  value       = element(concat(aws_kms_key.this.*.id, [""]), 0)
}

output "log_kms_key_is_enabled" {
  description = "Specifies whether the key is enabled."
  value       = element(concat(aws_kms_key.this.*.is_enabled, [""]), 0)
}

output "log_kms_key_id" {
  description = "A globally unique identifier for the log group KMS key."
  value       = element(concat(aws_kms_key.this.*.key_id, [""]), 0)
}

output "log_kms_key_usage" {
  description = "Specifies the intended use of the key."
  value       = element(concat(aws_kms_key.this.*.key_usage, [""]), 0)
}

output "log_kms_key_tags" {
  description = "The tags assigned to the KMS key."
  value       = element(concat(aws_kms_key.this.*.tags, [""]), 0)
}


#####
# Log Group KMS Key Alias
#####

output "log_kms_alias_arn" {
  description = "The arn of the log group key alias."
  value       = element(concat(aws_kms_alias.this.*.arn, [""]), 0)
}

output "log_kms_alias_id" {
  description = "A globally unique identifier for the log group key alias."
  value       = element(concat(aws_kms_alias.this.*.id, [""]), 0)
}

output "log_kms_alias_name" {
  description = "The display name of the log group key alias."
  value       = element(concat(aws_kms_alias.this.*.name, [""]), 0)
}

output "log_kms_alias_target_key_arn" {
  description = "The arn of the log group target key identifier."
  value       = element(concat(aws_kms_alias.this.*.target_key_arn, [""]), 0)
}

output "log_kms_alias_target_key_id" {
  description = "A globally unique identifier for the log group target key."
  value       = element(concat(aws_kms_alias.this.*.target_key_id, [""]), 0)
}
