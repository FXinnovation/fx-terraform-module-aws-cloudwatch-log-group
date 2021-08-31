/**
 * Test case: default
 *
 * - encryption should be disabled.
 * - kms key should NOT be created.
 * - log retention days should be 3 days.
 */

#####
# Generate Random String
#####

resource "random_string" "test_default" {
  length  = 8
  special = false
  upper   = false
  number  = true
}

#####
# Set Locals
#####

locals {
  random_default = random_string.test_default.result
}

#####
# Test
#####

module "test_default" {
  source = "../../"

  prefix = "tflg${local.random_default}"

  log_encryption_enabled = false
  log_group_name         = "test_default"
  log_retention_days     = 3
  log_kms_key_create     = false

  tags = {
    context   = "test"
    test-name = "test_default"
  }
}
