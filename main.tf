#####
# CloudWatch Log Group
#####

resource "aws_cloudwatch_log_group" "this" {
  name              = local.log_group_path
  retention_in_days = var.log_retention_days
  kms_key_id        = var.log_encryption_enabled ? local.log_kms_key_id : null

  tags = merge(
    local.tags,
    {
      Name = local.log_group_path
    }
  )
}


#####
# CloudWatch Log Group KMS key
#####

resource "aws_kms_key" "this" {
  count = (var.log_encryption_enabled && var.log_kms_key_create) ? 1 : 0

  description             = "KMS Key for ${var.log_group_name} logs encryption."
  policy                  = element(concat(data.aws_iam_policy_document.this.*.json, [""]), 0)
  deletion_window_in_days = var.log_kms_deletion_window_in_days
  enable_key_rotation     = var.log_kms_enable_rotation

  tags = merge(
    local.tags,
    {
      Name = format("%s-%s", var.prefix, var.log_kms_key_name)
    }
  )
}

resource "aws_kms_alias" "this" {
  count = (var.log_encryption_enabled && var.log_kms_key_create) ? 1 : 0

  name          = local.log_kms_key_alias_name
  target_key_id = element(concat(aws_kms_key.this.*.key_id, [""]), 0)
}


#####
# CloudWatch Log Group Policy
#####

data "aws_kms_key" "this" {
  count = (var.log_encryption_enabled && !var.log_kms_key_create) ? 1 : 0

  key_id = local.log_kms_key_alias_name
}

data "aws_iam_policy_document" "this" {
  count = (var.log_encryption_enabled && var.log_kms_key_create) ? 1 : 0

  statement {
    sid = "AllowCloudWatchLogs01"

    actions = [
      "kms:Encrypt*",
      "kms:Decrypt*",
      "kms:ReEncrypt*",
      "kms:GenerateDataKey*",
      "kms:Describe*"
    ]

    effect = "Allow"

    principals {
      type = "Service"

      identifiers = [
        format(
          "logs.%s.amazonaws.com",
          data.aws_region.current.name
        )
      ]
    }

    resources = ["*"]
  }

  statement {
    sid = "EnableIAMUserPermissions"

    actions = [
      "kms:*",
    ]

    effect = "Allow"

    principals {
      type = "AWS"

      identifiers = [
        format(
          "arn:%s:iam::%s:root",
          data.aws_partition.current.partition,
          data.aws_caller_identity.current.account_id
        )
      ]
    }

    resources = ["*"]
  }
}
