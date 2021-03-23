/**
 * Test case #04:
 *
 * - encryption should be enabled.
 * - kms key should be created.
 * - kms key rotation should be disabled.
 * - kms key deletion window should be 7 days.
 * - log retention days should be 731 days.
 */

#####
# Generate Random String
#####

resource "random_string" "test_04" {
  length  = 8
  special = false
  upper   = false
  number  = true
}

#####
# Set Locals
#####

locals {
  random_04 = random_string.test_04.result
}

#####
# Test
#####

module "test_04" {
  source = "../../"

  prefix = "tflg${local.random_04}"

  log_group_name = "test04"

  log_kms_key_name                = "kms/log"
  log_kms_enable_rotation         = false #tfsec:ignore:AWS019
  log_kms_deletion_window_in_days = 7

  log_retention_days = 0

  tags = {
    context   = "test"
    test-name = "test_04"
  }
}
