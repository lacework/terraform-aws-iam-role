variable "iam_role_name" {
  type        = string
  default     = ""
  description = "The IAM role name"
}

variable "lacework_aws_account_id" {
  type        = string
  default     = "434813966438"
  description = "The Lacework AWS account that the IAM role will grant access"
}

variable "external_id_length" {
  type        = number
  default     = 16
  description = "The length of the external ID to generate"
}

variable "create" {
  type        = bool
  default     = true
  description = "Set to false to prevent the module from creating any resources"
}

variable "tags" {
  type        = map(string)
  description = "A map/dictionary of Tags to be assigned to created resources"
  default     = {}
}

variable "for_ecr" {
  type        = bool
  default     = false
  description = "If set to true, configure the IAM role for ECR integration"
}

variable "ecr_registries" {
  type        = list(string)
  default     = []
  description = "List of ECR registries to grant access to"
}
