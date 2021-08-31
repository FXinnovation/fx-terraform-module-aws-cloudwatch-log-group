# terraform-module-aws-cloudwatch-log-group

**Test case #04:**

- encryption should be **enabled** (enabled by default).
- kms key should be **created** (enabled by default).
- kms key rotation should be **disabled**.
- kms key deletion window should be `7` days.
- log retention days should be `731` days.

## Usage

To run this example, you need to execute:

```
$ terraform init
$ terraform plan
$ terraform apply
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.14 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.5 |
| <a name="requirement_random"></a> [random](#requirement\_random) | >= 3.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_random"></a> [random](#provider\_random) | >= 3.1 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_test_encryption_enabled_disable_rotation"></a> [test\_encryption\_enabled\_disable\_rotation](#module\_test\_encryption\_enabled\_disable\_rotation) | ../../ | n/a |

## Resources

| Name | Type |
|------|------|
| [random_string.test_encryption_enabled_disable_rotation](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_access_key"></a> [access\_key](#input\_access\_key) | Credentials: AWS access key. | `string` | n/a | yes |
| <a name="input_secret_key"></a> [secret\_key](#input\_secret\_key) | Credentials: AWS secret key. Pass this as a variable, never write password in the code. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_test_encryption_enabled_disable_rotation_log_group_arn"></a> [test\_encryption\_enabled\_disable\_rotation\_log\_group\_arn](#output\_test\_encryption\_enabled\_disable\_rotation\_log\_group\_arn) | n/a |
| <a name="output_test_encryption_enabled_disable_rotation_log_group_id"></a> [test\_encryption\_enabled\_disable\_rotation\_log\_group\_id](#output\_test\_encryption\_enabled\_disable\_rotation\_log\_group\_id) | n/a |
| <a name="output_test_encryption_enabled_disable_rotation_log_group_kms_key_id"></a> [test\_encryption\_enabled\_disable\_rotation\_log\_group\_kms\_key\_id](#output\_test\_encryption\_enabled\_disable\_rotation\_log\_group\_kms\_key\_id) | n/a |
| <a name="output_test_encryption_enabled_disable_rotation_log_group_name"></a> [test\_encryption\_enabled\_disable\_rotation\_log\_group\_name](#output\_test\_encryption\_enabled\_disable\_rotation\_log\_group\_name) | n/a |
| <a name="output_test_encryption_enabled_disable_rotation_log_group_retention_in_days"></a> [test\_encryption\_enabled\_disable\_rotation\_log\_group\_retention\_in\_days](#output\_test\_encryption\_enabled\_disable\_rotation\_log\_group\_retention\_in\_days) | n/a |
| <a name="output_test_encryption_enabled_disable_rotation_log_group_tags"></a> [test\_encryption\_enabled\_disable\_rotation\_log\_group\_tags](#output\_test\_encryption\_enabled\_disable\_rotation\_log\_group\_tags) | n/a |
| <a name="output_test_encryption_enabled_disable_rotation_log_kms_alias_arn"></a> [test\_encryption\_enabled\_disable\_rotation\_log\_kms\_alias\_arn](#output\_test\_encryption\_enabled\_disable\_rotation\_log\_kms\_alias\_arn) | n/a |
| <a name="output_test_encryption_enabled_disable_rotation_log_kms_alias_id"></a> [test\_encryption\_enabled\_disable\_rotation\_log\_kms\_alias\_id](#output\_test\_encryption\_enabled\_disable\_rotation\_log\_kms\_alias\_id) | n/a |
| <a name="output_test_encryption_enabled_disable_rotation_log_kms_alias_name"></a> [test\_encryption\_enabled\_disable\_rotation\_log\_kms\_alias\_name](#output\_test\_encryption\_enabled\_disable\_rotation\_log\_kms\_alias\_name) | n/a |
| <a name="output_test_encryption_enabled_disable_rotation_log_kms_alias_target_key_arn"></a> [test\_encryption\_enabled\_disable\_rotation\_log\_kms\_alias\_target\_key\_arn](#output\_test\_encryption\_enabled\_disable\_rotation\_log\_kms\_alias\_target\_key\_arn) | n/a |
| <a name="output_test_encryption_enabled_disable_rotation_log_kms_alias_target_key_id"></a> [test\_encryption\_enabled\_disable\_rotation\_log\_kms\_alias\_target\_key\_id](#output\_test\_encryption\_enabled\_disable\_rotation\_log\_kms\_alias\_target\_key\_id) | n/a |
| <a name="output_test_encryption_enabled_disable_rotation_log_kms_key_arn"></a> [test\_encryption\_enabled\_disable\_rotation\_log\_kms\_key\_arn](#output\_test\_encryption\_enabled\_disable\_rotation\_log\_kms\_key\_arn) | n/a |
| <a name="output_test_encryption_enabled_disable_rotation_log_kms_key_customer_master_key_spec"></a> [test\_encryption\_enabled\_disable\_rotation\_log\_kms\_key\_customer\_master\_key\_spec](#output\_test\_encryption\_enabled\_disable\_rotation\_log\_kms\_key\_customer\_master\_key\_spec) | n/a |
| <a name="output_test_encryption_enabled_disable_rotation_log_kms_key_deletion_window_in_days"></a> [test\_encryption\_enabled\_disable\_rotation\_log\_kms\_key\_deletion\_window\_in\_days](#output\_test\_encryption\_enabled\_disable\_rotation\_log\_kms\_key\_deletion\_window\_in\_days) | n/a |
| <a name="output_test_encryption_enabled_disable_rotation_log_kms_key_description"></a> [test\_encryption\_enabled\_disable\_rotation\_log\_kms\_key\_description](#output\_test\_encryption\_enabled\_disable\_rotation\_log\_kms\_key\_description) | n/a |
| <a name="output_test_encryption_enabled_disable_rotation_log_kms_key_enable_rotation"></a> [test\_encryption\_enabled\_disable\_rotation\_log\_kms\_key\_enable\_rotation](#output\_test\_encryption\_enabled\_disable\_rotation\_log\_kms\_key\_enable\_rotation) | n/a |
| <a name="output_test_encryption_enabled_disable_rotation_log_kms_key_id"></a> [test\_encryption\_enabled\_disable\_rotation\_log\_kms\_key\_id](#output\_test\_encryption\_enabled\_disable\_rotation\_log\_kms\_key\_id) | n/a |
| <a name="output_test_encryption_enabled_disable_rotation_log_kms_key_is_enabled"></a> [test\_encryption\_enabled\_disable\_rotation\_log\_kms\_key\_is\_enabled](#output\_test\_encryption\_enabled\_disable\_rotation\_log\_kms\_key\_is\_enabled) | n/a |
| <a name="output_test_encryption_enabled_disable_rotation_log_kms_key_tags"></a> [test\_encryption\_enabled\_disable\_rotation\_log\_kms\_key\_tags](#output\_test\_encryption\_enabled\_disable\_rotation\_log\_kms\_key\_tags) | n/a |
| <a name="output_test_encryption_enabled_disable_rotation_log_kms_key_usage"></a> [test\_encryption\_enabled\_disable\_rotation\_log\_kms\_key\_usage](#output\_test\_encryption\_enabled\_disable\_rotation\_log\_kms\_key\_usage) | n/a |
| <a name="output_test_encryption_enabled_disable_rotation_log_kms_resource_id"></a> [test\_encryption\_enabled\_disable\_rotation\_log\_kms\_resource\_id](#output\_test\_encryption\_enabled\_disable\_rotation\_log\_kms\_resource\_id) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
