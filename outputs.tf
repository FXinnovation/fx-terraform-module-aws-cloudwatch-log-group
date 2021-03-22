#####
# CloudWatch Log Group
#####

output "log_group_arn" {
  description = "The CloudWatch log group arn."
  value       = aws_cloudwatch_log_group.this.arn
}

output "log_group_id" {
  description = "The CloudWatch log group ID."
  value       = aws_cloudwatch_log_group.this.id
}

output "log_group_name" {
  description = "The CloudWatch log group name."
  value       = aws_cloudwatch_log_group.this.name
}

#####
# Log Group KMS key
#####

output "log_kms_key_arn" {
  description = "The Amazon Resource Name (ARN) of the log group key."
  value       = element(concat(aws_kms_key.this.*.arn, [""]), 0)
}

output "log_kms_key_id" {
  description = "Globally unique identifier for the log group key."
  value       = element(concat(aws_kms_key.this.*.id, [""]), 0)
}

output "log_kms_alias_arn" {
  description = "The Amazon Resource Name (ARN) of the log group key alias."
  value       = element(concat(aws_kms_alias.this.*.arn, [""]), 0)
}
