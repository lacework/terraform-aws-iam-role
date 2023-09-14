provider "aws" {
    profile = "testing"
}

provider "lacework" {}

module "lacework_iam_role" {
  source             = "../../"
  iam_role_name      = "custom-role-name"
}
