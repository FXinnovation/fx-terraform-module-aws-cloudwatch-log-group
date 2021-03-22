#####
# General
#####

variable "tags" {
  description = "Default tags to be applied to all taggable resources."
  type        = map(any)
  default     = {}
}

variable "prefix" {
  description = "A prefix for deployment, will be used for each resource name."
  type        = string

  validation {
    condition     = can(regex("^\\w{1,32}$", var.prefix))
    error_message = "The prefix must match ^\\w{1,32}$."
  }
}

#####
# Cloud Watch
#####

variable "log_encryption_enabled" {
  description = "Choose whether the CloudWatch log encryption is enabled (highly recommended)."
  type        = bool
  default     = true
}

variable "log_group_name" {
  description = "The name for the log group."
  type        = string

  validation {
    condition     = can(regex("^[\\w\\/-]{1,480}$", var.log_group_name))
    error_message = "The log group name must match ^[\\w\\/-]{1,480}$."
  }
}

variable "log_kms_key_create" {
  description = "Choose whether we should create the KMS key for log encryption or not. Defaults to false: we have to pass a KMS key name."
  type        = bool
  default     = true
}

variable "log_kms_key_name" {
  description = "The KMS key name for log encryption. Will be used as alias name."
  type        = string
  default     = null

  validation {
    condition     = (can(regex("^[\\w\\/-]{1,32}$", var.log_kms_key_name)) || var.log_kms_key_name == null)
    error_message = "The KMS key name for logs must match ^[\\w\\/-]{1,32}$."
  }
}

variable "log_kms_deletion_window_in_days" {
  description = "The duration in days after which the key is deleted after destruction of the resource. Defaults to 30 days."
  type        = number
  default     = 30

  validation {
    condition     = var.log_kms_deletion_window_in_days >= 7 && var.log_kms_deletion_window_in_days <= 30
    error_message = "The duration must be comprised between 7 and 30 days."
  }
}

variable "log_kms_enable_rotation" {
  description = "Choose whether the key rotation is enabled. Defaults to false. This is highly recommended to enable it."
  type        = bool
  default     = true
}

variable "log_retention_days" {
  description = "The number of days you want to retain log events on CloudWatch."
  type        = number
  default     = 7

  validation {
    condition     = can(regex("^(0|1|3|5|7|14|30|60|90|120|150|180|365|400|545|731|1827|3653)$", var.log_retention_days))
    error_message = "The retention period must be a valid value. Possible values are 1, 3, 5, 7, 14, 30, 60, 90, 120, 150, 180, 365, 400, 545, 731, 1827 or 3653. If you want to keep indefinitely the logs, set the value to 0."
  }
}
