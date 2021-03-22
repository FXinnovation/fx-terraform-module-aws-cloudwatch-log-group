# terraform-module-multi-template

Template repository for public terraform modules

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
| log\_kms\_key\_create | Choose whether we should create the KMS key for log encryption or not. Defaults to false: we have to pass a KMS key name. | `bool` | `true` | no |
| log\_kms\_key\_name | The KMS key name for log encryption. Will be used as alias name. | `string` | `null` | no |
| log\_retention\_days | The number of days you want to retain log events on CloudWatch. | `number` | `7` | no |
| prefix | A prefix for deployment, will be used for each resource name. | `string` | n/a | yes |
| tags | Default tags to be applied to all taggable resources. | `map(any)` | `{}` | no |

## Outputs

No output.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Versioning
This repository follows [Semantic Versioning 2.0.0](https://semver.org/)

## Git Hooks
This repository uses [pre-commit](https://pre-commit.com/) hooks.
