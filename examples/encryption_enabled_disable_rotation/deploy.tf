/**
 * Test case: encryption enabled, disable rotation
 *
 * - encryption should be enabled (enabled by default).
 * - kms key should be created (enabled by default).
 * - kms key rotation should be disabled.
 * - kms key deletion window should be 7 days.
 * - log retention days should be 731 days.
 */

#####
# Generate Random String
#####

resource "random_string" "test_encryption_enabled_disable_rotation" {
  length  = 8
  special = false
  upper   = false
  number  = true
}

#####
# Set Locals
#####

locals {
  random_encryption_enabled_create_kms = random_string.test_encryption_enabled_disable_rotation.result
}

#####
# Test
#####

module "test_encryption_enabled_disable_rotation" {
  source = "../../"

  prefix = "tflg${local.random_encryption_enabled_create_kms}"

  log_group_name = "test_encryption_enabled_disable_rotation"

  log_kms_key_name                = format("%skmslog", local.random_encryption_enabled_create_kms)
  log_kms_enable_rotation         = false
  log_kms_deletion_window_in_days = 7

  log_retention_days = 0

  tags = {
    context   = "test"
    test-name = "test_encryption_enabled_disable_rotation"
  }
}
