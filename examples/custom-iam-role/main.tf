provider "aws" {}

module "lacework_iam_role" {
  source             = "lacework/iam-role/aws"
  iam_role_name      = "custom-role-name"
  external_id_length = 256
}
