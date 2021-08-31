/**
 * Test case #01:
 *
 * - encryption should be disabled.
 * - kms key should NOT be created.
 * - log retention days should be 3 days.
 */

#####
# Generate Random String
#####

resource "random_string" "test_01" {
  length  = 8
  special = false
  upper   = false
  number  = true
}

#####
# Set Locals
#####

locals {
  random_01 = random_string.test_01.result
}

#####
# Test
#####

module "test_01" {
  source = "../../"

  prefix = "tflg${local.random_01}"

  log_encryption_enabled = false
  log_group_name         = "test01"
  log_retention_days     = 3
  log_kms_key_create     = false

  tags = {
    context   = "test"
    test-name = "test_01"
  }
}
