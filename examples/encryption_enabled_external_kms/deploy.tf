/**
 * Test case: encryption enabled, external KMS
 *
 * - encryption should be enabled (enabled by default).
 * - kms key should NOT be created (external KMS).
 * - kms key rotation should be enabled (enabled by default).
 * - kms key deletion window should be 7 days.
 * - log retention days should be 14 days.
 */

#####
# Generate Random String
#####

resource "random_string" "test_encryption_enabled_external_kms" {
  length  = 8
  special = false
  upper   = false
  number  = true
}

#####
# Set Locals
#####

locals {
  random_encryption_enabled_create_kms = random_string.test_encryption_enabled_external_kms.result
}

#####
# General Data
#####

data "aws_caller_identity" "current" {}
data "aws_partition" "current" {}
data "aws_region" "current" {}

#####
# Create External Resources
#####

resource "aws_kms_key" "test_encryption_enabled_external_kms" {
  description             = "Test encryption_enabled_create_kms: KMS Key for logs encryption."
  policy                  = data.aws_iam_policy_document.test_encryption_enabled_external_kms.json
  deletion_window_in_days = 7
  enable_key_rotation     = true
}

resource "aws_kms_alias" "test_encryption_enabled_external_kms" {
  name          = "alias/tflg${local.random_encryption_enabled_create_kms}/kms/log"
  target_key_id = aws_kms_key.test_encryption_enabled_external_kms.key_id
}

data "aws_iam_policy_document" "test_encryption_enabled_external_kms" {
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

#####
# Test
#####

module "test_encryption_enabled_external_kms" {
  source = "../../"

  prefix = "tflg${local.random_encryption_enabled_create_kms}"

  log_encryption_enabled = true
  log_group_name         = "test_encryption_enabled_external_kms"

  log_kms_key_create = false
  log_kms_key_name   = format("%skmslog", local.random_encryption_enabled_create_kms)

  log_retention_days = 14

  tags = {
    context   = "test"
    test-name = "test_encryption_enabled_external_kms"
  }

  depends_on = [
    aws_kms_key.test_encryption_enabled_external_kms,
    aws_kms_alias.test_encryption_enabled_external_kms
  ]
}
