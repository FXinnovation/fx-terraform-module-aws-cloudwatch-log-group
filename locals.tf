#####
# Locals
#####

locals {
  log_group_path = format("%s/%s",
    var.prefix,
    var.log_group_name
  )

  log_kms_key_alias_name = (
    var.log_encryption_enabled ?
    format("alias/%s/%s", var.prefix, var.log_kms_key_name) :
    ""
  )

  log_kms_key_id = (
    var.log_kms_key_create ?
    element(concat(aws_kms_key.this.*.arn, [""]), 0) :
    element(concat(data.aws_kms_key.this.*.arn, [""]), 0)
  )

  tags = merge(
    {
      managed-by = "terraform"
      Terraform  = true
    },
    var.tags
  )
}
