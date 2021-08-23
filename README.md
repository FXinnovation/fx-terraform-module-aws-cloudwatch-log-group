# terraform-module-aws-cloudwatch-log-group

Generic module which create a CloudWatch log group, with encryption (it will encrypt by default and create a KMS key) and appropriated policies.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 0.13 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_cloudwatch_log_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_group) | resource |
| [aws_kms_alias.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_alias) | resource |
| [aws_kms_key.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_key) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_iam_policy_document.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_kms_key.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/kms_key) | data source |
| [aws_partition.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/partition) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_log_encryption_enabled"></a> [log\_encryption\_enabled](#input\_log\_encryption\_enabled) | Choose whether the CloudWatch log encryption is enabled (highly recommended). | `bool` | `true` | no |
| <a name="input_log_group_name"></a> [log\_group\_name](#input\_log\_group\_name) | The name for the log group. | `string` | n/a | yes |
| <a name="input_log_kms_deletion_window_in_days"></a> [log\_kms\_deletion\_window\_in\_days](#input\_log\_kms\_deletion\_window\_in\_days) | The duration in days after which the key is deleted after destruction of the resource. Defaults to 30 days. | `number` | `30` | no |
| <a name="input_log_kms_enable_rotation"></a> [log\_kms\_enable\_rotation](#input\_log\_kms\_enable\_rotation) | Choose whether the key rotation is enabled. Defaults to false. This is highly recommended to enable it. | `bool` | `true` | no |
| <a name="input_log_kms_key_create"></a> [log\_kms\_key\_create](#input\_log\_kms\_key\_create) | Choose whether we should create the KMS key for log encryption or not. Defaults to true. | `bool` | `true` | no |
| <a name="input_log_kms_key_name"></a> [log\_kms\_key\_name](#input\_log\_kms\_key\_name) | The KMS key name for log encryption. Will be used as alias name. | `string` | `null` | no |
| <a name="input_log_retention_days"></a> [log\_retention\_days](#input\_log\_retention\_days) | The number of days you want to retain log events on CloudWatch. | `number` | `7` | no |
| <a name="input_prefix"></a> [prefix](#input\_prefix) | A prefix for deployment, will be used for each resource name. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Default tags to be applied to all taggable resources. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_log_group_arn"></a> [log\_group\_arn](#output\_log\_group\_arn) | The log group arn. |
| <a name="output_log_group_id"></a> [log\_group\_id](#output\_log\_group\_id) | The log group ID. |
| <a name="output_log_group_kms_key_id"></a> [log\_group\_kms\_key\_id](#output\_log\_group\_kms\_key\_id) | The arn of the KMS Key to use when encrypting log data. |
| <a name="output_log_group_name"></a> [log\_group\_name](#output\_log\_group\_name) | The log group name. |
| <a name="output_log_group_retention_in_days"></a> [log\_group\_retention\_in\_days](#output\_log\_group\_retention\_in\_days) | The number of days the log events are retained. |
| <a name="output_log_group_tags"></a> [log\_group\_tags](#output\_log\_group\_tags) | The tags assigned to the log group. |
| <a name="output_log_kms_alias_arn"></a> [log\_kms\_alias\_arn](#output\_log\_kms\_alias\_arn) | The arn of the log group key alias. |
| <a name="output_log_kms_alias_id"></a> [log\_kms\_alias\_id](#output\_log\_kms\_alias\_id) | A globally unique identifier for the log group key alias. |
| <a name="output_log_kms_alias_name"></a> [log\_kms\_alias\_name](#output\_log\_kms\_alias\_name) | The display name of the log group key alias. |
| <a name="output_log_kms_alias_target_key_arn"></a> [log\_kms\_alias\_target\_key\_arn](#output\_log\_kms\_alias\_target\_key\_arn) | The arn of the log group target key identifier. |
| <a name="output_log_kms_alias_target_key_id"></a> [log\_kms\_alias\_target\_key\_id](#output\_log\_kms\_alias\_target\_key\_id) | A globally unique identifier for the log group target key. |
| <a name="output_log_kms_key_arn"></a> [log\_kms\_key\_arn](#output\_log\_kms\_key\_arn) | The arn of the log group key. |
| <a name="output_log_kms_key_customer_master_key_spec"></a> [log\_kms\_key\_customer\_master\_key\_spec](#output\_log\_kms\_key\_customer\_master\_key\_spec) | The specifications for KMS master key. |
| <a name="output_log_kms_key_deletion_window_in_days"></a> [log\_kms\_key\_deletion\_window\_in\_days](#output\_log\_kms\_key\_deletion\_window\_in\_days) | The duration in days after which the key is deleted after destruction of the resource. |
| <a name="output_log_kms_key_description"></a> [log\_kms\_key\_description](#output\_log\_kms\_key\_description) | The description of the key as viewed in AWS console. |
| <a name="output_log_kms_key_enable_rotation"></a> [log\_kms\_key\_enable\_rotation](#output\_log\_kms\_key\_enable\_rotation) | Specifies whether key rotation is enabled. |
| <a name="output_log_kms_key_id"></a> [log\_kms\_key\_id](#output\_log\_kms\_key\_id) | A globally unique identifier for the log group KMS key. |
| <a name="output_log_kms_key_is_enabled"></a> [log\_kms\_key\_is\_enabled](#output\_log\_kms\_key\_is\_enabled) | Specifies whether the key is enabled. |
| <a name="output_log_kms_key_tags"></a> [log\_kms\_key\_tags](#output\_log\_kms\_key\_tags) | The tags assigned to the KMS key. |
| <a name="output_log_kms_key_usage"></a> [log\_kms\_key\_usage](#output\_log\_kms\_key\_usage) | Specifies the intended use of the key. |
| <a name="output_log_kms_resource_id"></a> [log\_kms\_resource\_id](#output\_log\_kms\_resource\_id) | A globally unique identifier for KMS resource. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Versioning
This repository follows [Semantic Versioning 2.0.0](https://semver.org/)

## Git Hooks
This repository uses [pre-commit](https://pre-commit.com/) hooks.
