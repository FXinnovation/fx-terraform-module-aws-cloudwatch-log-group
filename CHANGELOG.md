
1.0.0 / 2021-09-01
==================

  * (BREAKING) chore: pins `pre-commit-hooks` to `v4.0.1`.
  * feat: add config in `Jenkinsfile`.
  * chore: pins `pre-commit-terraform` to `v1.50.0`.
  * chore: pins `terraform` to `>= 0.14`.
  * chore: pins `aws` provider to `>= 3.0`.
  * chore: bumps terraform + providers versions in examples:
    * pins `terraform` to `>= 0.14`.
    * pins `aws` provider to `>= 3.5`.
    * pins `random` provider to `>= 3.1`.
  * refactor: examples, code lint, rename files:
    * lint code.
    * rename directories, add a default example according to standards.
    * rename files according to standards: `deploy.tf` and `outputs.tf`.

0.1.0 / 2021-03-23
==================

  * feat: add input variables, type, description and validation rules.
  * feat: add reusable locals to reuse across the module.
  * feat: add module resources:
    * add `aws_region` datasource.
    * add `aws_cloudwatch_log_group` resource.
    * add `aws_kms_key` resource.
    * add `aws_kms_key_alias` resource.
    * add `aws_kms_key` datasource.
    * add `aws_iam_policy_document` datasource.
  * feat: add outputs with descriptions.
  * feat: add example test cases.
  * fix: disable `terraform_tfsec`, as we can't add skip warning comment on example (but directly in the module itself).
         instead, we might use tools such as `terrascan` or `checkov` (directly in pipeline).
