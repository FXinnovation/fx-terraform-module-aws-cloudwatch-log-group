# terraform-module-aws-cloudwatch-log-group

**Test case #01:**

- encryption should be **disabled**.
- kms key should **NOT be created**.
- log retention days should be `3` days.

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
| test_01 | ../../ |  |

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
| test\_01\_log\_group\_arn | n/a |
| test\_01\_log\_group\_id | n/a |
| test\_01\_log\_group\_kms\_key\_id | n/a |
| test\_01\_log\_group\_name | n/a |
| test\_01\_log\_group\_retention\_in\_days | n/a |
| test\_01\_log\_group\_tags | n/a |
| test\_01\_log\_kms\_alias\_arn | n/a |
| test\_01\_log\_kms\_alias\_id | n/a |
| test\_01\_log\_kms\_alias\_name | n/a |
| test\_01\_log\_kms\_alias\_target\_key\_arn | n/a |
| test\_01\_log\_kms\_alias\_target\_key\_id | n/a |
| test\_01\_log\_kms\_key\_arn | n/a |
| test\_01\_log\_kms\_key\_customer\_master\_key\_spec | n/a |
| test\_01\_log\_kms\_key\_deletion\_window\_in\_days | n/a |
| test\_01\_log\_kms\_key\_description | n/a |
| test\_01\_log\_kms\_key\_enable\_rotation | n/a |
| test\_01\_log\_kms\_key\_id | n/a |
| test\_01\_log\_kms\_key\_is\_enabled | n/a |
| test\_01\_log\_kms\_key\_tags | n/a |
| test\_01\_log\_kms\_key\_usage | n/a |
| test\_01\_log\_kms\_resource\_id | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->