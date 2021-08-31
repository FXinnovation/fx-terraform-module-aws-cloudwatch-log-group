/**
 * Test case #02:
 *
 * - encryption should be enabled (enabled by default).
 * - kms key should be created (created by default).
 * - kms key rotation should be enabled (enabled by default).
 * - kms key deletion window should be 7 days.
 * - log retention days should be 0 day.
 */

#####
# Generate Random String
#####

resource "random_string" "test_02" {
  length  = 8
  special = false
  upper   = false
  number  = true
}

#####
# Set Locals
#####

locals {
  random_02 = random_string.test_02.result
}

#####
# Test
#####

module "test_02" {
  source = "../../"

  prefix = "tflg${local.random_02}"

  log_group_name = "test02"

  log_kms_key_name                = format("%skmslog", local.random_encryption_enabled_create_kms)
  log_kms_deletion_window_in_days = 7

  log_retention_days = 0

  tags = {
    context   = "test"
    test-name = "test_02"
  }
}
