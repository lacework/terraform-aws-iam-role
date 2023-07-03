provider "aws" {}

variable "lacework_aws_account_id" {
  type = string
  description = "The Lacework AWS account that the IAM role will grant access"
}

module "lacework_iam_role" {
  source = "../../"
  lacework_aws_account_id = var.lacework_aws_account_id
}
