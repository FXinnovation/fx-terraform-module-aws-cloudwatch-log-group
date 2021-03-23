# terraform-module-aws-cloudwatch-log-group

**Test case #02:**

- encryption should be **enabled** (enabled by default).
- kms key should be **created** (created by default).
- kms key rotation should be **enabled** (enabled by default).
- kms key deletion window should be `7` days.
- log retention days should be `0` day.

## Usage

```
# terraform init
# terraform apply
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | ~> 0.13 |
| aws | >= 3.0 |
| random | >= 3.0 |

## Providers

| Name | Version |
|------|---------|
| random | >= 3.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| test_02 | ../../ |  |

## Resources

| Name |
|------|
| [random_string](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| access\_key | Credentials: AWS access key. | `string` | n/a | yes |
| secret\_key | Credentials: AWS secret key. Pass this as a variable, never write password in the code. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| test\_02\_log\_group\_arn | n/a |
| test\_02\_log\_group\_id | n/a |
| test\_02\_log\_group\_name | n/a |
| test\_02\_log\_kms\_alias\_arn | n/a |
| test\_02\_log\_kms\_key\_arn | n/a |
| test\_02\_log\_kms\_key\_id | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
