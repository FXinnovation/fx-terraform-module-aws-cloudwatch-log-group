

0.1.0 / 2021-03-23
==================

- add input variables, type, description and validation rules.
- add reusable locals to reuse across the module.
- **add module resources:**
  - add `aws_region` datasource.
  - add `aws_cloudwatch_log_group` resource.
  - add `aws_kms_key` resource.
  - add `aws_kms_key_alias` resource.
  - add `aws_kms_key` datasource.
  - add `aws_iam_policy_document` datasource.
- add outputs with descriptions.
- **fix:** disable `terraform_tfsec`, as we can't add skip warning comment on example (but directly in the module itself). Instead, we might use tools such as `terrascan` or `checkov` (directly in pipeline).
- **test:**
  - **scenario 1:**
    - encryption should be disabled.
    - kms key should NOT be created.
    - log retention days should be 3 day.
  - **scenario 2:**
    - encryption should be enabled.
    - kms key should be created.
    - kms key rotation should be enabled (enabled by default).
    - kms key deletion window should be 7 days.
    - log retention days should be 0 day.
  - **scenario 3:**
    - encryption should be enabled.
    - kms key should NOT be created (external KMS).
    - kms key rotation should be enabled (enabled by default).
    - kms key deletion window should be 7 days.
    - log retention days should be 14 days.
  - **scenario 4:**
    - encryption should be enabled.
    - kms key should be created.
    - kms key rotation should be disabled.
    - kms key deletion window should be 7 days.
    - log retention days should be 731 days.
