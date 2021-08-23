# terraform-module-aws-cloudwatch-log-group

**Test case #03:**

- encryption should be **enabled** (enabled by default).
- kms key should **NOT be created** (external KMS).
- kms key rotation should be **enabled** (enabled by default).
- kms key deletion window should be `7` days.
- log retention days should be `14` days.

## Usage

```
# terraform init
# terraform apply
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 0.13 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | >= 3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3.0 |
| <a name="provider_random"></a> [random](#provider\_random) | >= 3.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_test_03"></a> [test\_03](#module\_test\_03) | ../../ | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_kms_alias.test_03](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_alias) | resource |
| [aws_kms_key.test_03](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_key) | resource |
| [random_string.test_03](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_iam_policy_document.test_03](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_partition.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/partition) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_access_key"></a> [access\_key](#input\_access\_key) | Credentials: AWS access key. | `string` | n/a | yes |
| <a name="input_secret_key"></a> [secret\_key](#input\_secret\_key) | Credentials: AWS secret key. Pass this as a variable, never write password in the code. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_test_03_log_group_arn"></a> [test\_03\_log\_group\_arn](#output\_test\_03\_log\_group\_arn) | n/a |
| <a name="output_test_03_log_group_id"></a> [test\_03\_log\_group\_id](#output\_test\_03\_log\_group\_id) | n/a |
| <a name="output_test_03_log_group_kms_key_id"></a> [test\_03\_log\_group\_kms\_key\_id](#output\_test\_03\_log\_group\_kms\_key\_id) | n/a |
| <a name="output_test_03_log_group_name"></a> [test\_03\_log\_group\_name](#output\_test\_03\_log\_group\_name) | n/a |
| <a name="output_test_03_log_group_retention_in_days"></a> [test\_03\_log\_group\_retention\_in\_days](#output\_test\_03\_log\_group\_retention\_in\_days) | n/a |
| <a name="output_test_03_log_group_tags"></a> [test\_03\_log\_group\_tags](#output\_test\_03\_log\_group\_tags) | n/a |
| <a name="output_test_03_log_kms_alias_arn"></a> [test\_03\_log\_kms\_alias\_arn](#output\_test\_03\_log\_kms\_alias\_arn) | n/a |
| <a name="output_test_03_log_kms_alias_id"></a> [test\_03\_log\_kms\_alias\_id](#output\_test\_03\_log\_kms\_alias\_id) | n/a |
| <a name="output_test_03_log_kms_alias_name"></a> [test\_03\_log\_kms\_alias\_name](#output\_test\_03\_log\_kms\_alias\_name) | n/a |
| <a name="output_test_03_log_kms_alias_target_key_arn"></a> [test\_03\_log\_kms\_alias\_target\_key\_arn](#output\_test\_03\_log\_kms\_alias\_target\_key\_arn) | n/a |
| <a name="output_test_03_log_kms_alias_target_key_id"></a> [test\_03\_log\_kms\_alias\_target\_key\_id](#output\_test\_03\_log\_kms\_alias\_target\_key\_id) | n/a |
| <a name="output_test_03_log_kms_key_arn"></a> [test\_03\_log\_kms\_key\_arn](#output\_test\_03\_log\_kms\_key\_arn) | n/a |
| <a name="output_test_03_log_kms_key_customer_master_key_spec"></a> [test\_03\_log\_kms\_key\_customer\_master\_key\_spec](#output\_test\_03\_log\_kms\_key\_customer\_master\_key\_spec) | n/a |
| <a name="output_test_03_log_kms_key_deletion_window_in_days"></a> [test\_03\_log\_kms\_key\_deletion\_window\_in\_days](#output\_test\_03\_log\_kms\_key\_deletion\_window\_in\_days) | n/a |
| <a name="output_test_03_log_kms_key_description"></a> [test\_03\_log\_kms\_key\_description](#output\_test\_03\_log\_kms\_key\_description) | n/a |
| <a name="output_test_03_log_kms_key_enable_rotation"></a> [test\_03\_log\_kms\_key\_enable\_rotation](#output\_test\_03\_log\_kms\_key\_enable\_rotation) | n/a |
| <a name="output_test_03_log_kms_key_id"></a> [test\_03\_log\_kms\_key\_id](#output\_test\_03\_log\_kms\_key\_id) | n/a |
| <a name="output_test_03_log_kms_key_is_enabled"></a> [test\_03\_log\_kms\_key\_is\_enabled](#output\_test\_03\_log\_kms\_key\_is\_enabled) | n/a |
| <a name="output_test_03_log_kms_key_tags"></a> [test\_03\_log\_kms\_key\_tags](#output\_test\_03\_log\_kms\_key\_tags) | n/a |
| <a name="output_test_03_log_kms_key_usage"></a> [test\_03\_log\_kms\_key\_usage](#output\_test\_03\_log\_kms\_key\_usage) | n/a |
| <a name="output_test_03_log_kms_resource_id"></a> [test\_03\_log\_kms\_resource\_id](#output\_test\_03\_log\_kms\_resource\_id) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
