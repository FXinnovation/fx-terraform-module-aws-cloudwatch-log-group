# terraform-module-aws-cloudwatch-log-group

Generic module which create a CloudWatch log group, with encryption (it will encrypt by default and create a KMS key) and appropriated policies.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | ~> 0.13 |
| aws | >= 3.0 |

## Providers

| Name | Version |
|------|---------|
| aws | >= 3.0 |

## Modules

No Modules.

## Resources

| Name |
|------|
| [aws_caller_identity](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) |
| [aws_cloudwatch_log_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_group) |
| [aws_iam_policy_document](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) |
| [aws_kms_alias](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_alias) |
| [aws_kms_key](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/kms_key) |
| [aws_kms_key](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_key) |
| [aws_partition](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/partition) |
| [aws_region](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| log\_encryption\_enabled | Choose whether the CloudWatch log encryption is enabled (highly recommended). | `bool` | `true` | no |
| log\_group\_name | The name for the log group. | `string` | n/a | yes |
| log\_kms\_deletion\_window\_in\_days | The duration in days after which the key is deleted after destruction of the resource. Defaults to 30 days. | `number` | `30` | no |
| log\_kms\_enable\_rotation | Choose whether the key rotation is enabled. Defaults to false. This is highly recommended to enable it. | `bool` | `true` | no |
| log\_kms\_key\_create | Choose whether we should create the KMS key for log encryption or not. Defaults to true. | `bool` | `true` | no |
| log\_kms\_key\_name | The KMS key name for log encryption. Will be used as alias name. | `string` | `null` | no |
| log\_retention\_days | The number of days you want to retain log events on CloudWatch. | `number` | `7` | no |
| prefix | A prefix for deployment, will be used for each resource name. | `string` | n/a | yes |
| tags | Default tags to be applied to all taggable resources. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| log\_group\_arn | The log group arn. |
| log\_group\_id | The log group ID. |
| log\_group\_kms\_key\_id | The arn of the KMS Key to use when encrypting log data. |
| log\_group\_name | The log group name. |
| log\_group\_retention\_in\_days | The number of days the log events are retained. |
| log\_group\_tags | The tags assigned to the log group. |
| log\_kms\_alias\_arn | The arn of the log group key alias. |
| log\_kms\_alias\_id | A globally unique identifier for the log group key alias. |
| log\_kms\_alias\_name | The display name of the log group key alias. |
| log\_kms\_alias\_target\_key\_arn | The arn of the log group target key identifier. |
| log\_kms\_alias\_target\_key\_id | A globally unique identifier for the log group target key. |
| log\_kms\_key\_arn | The arn of the log group key. |
| log\_kms\_key\_customer\_master\_key\_spec | The specifications for KMS master key. |
| log\_kms\_key\_deletion\_window\_in\_days | The duration in days after which the key is deleted after destruction of the resource. |
| log\_kms\_key\_description | The description of the key as viewed in AWS console. |
| log\_kms\_key\_enable\_rotation | Specifies whether key rotation is enabled. |
| log\_kms\_key\_id | A globally unique identifier for the log group KMS key. |
| log\_kms\_key\_is\_enabled | Specifies whether the key is enabled. |
| log\_kms\_key\_tags | The tags assigned to the KMS key. |
| log\_kms\_key\_usage | Specifies the intended use of the key. |
| log\_kms\_resource\_id | A globally unique identifier for KMS resource. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Versioning
This repository follows [Semantic Versioning 2.0.0](https://semver.org/)

## Git Hooks
This repository uses [pre-commit](https://pre-commit.com/) hooks.
