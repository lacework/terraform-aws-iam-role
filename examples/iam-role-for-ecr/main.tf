provider "aws" {}

module "lacework_iam_role_for_ecr" {
  source  = "../../"
  for_ecr = true

  // Optionally, it is possible to pass a list of ECR registries to grant access to
  #ecr_registries = [
  #  "arn:aws:ecr:us-west-2:1234567890123:repository/container1",
  #  "arn:aws:ecr:us-west-2:1234567890123:repository/container2",
  #  "arn:aws:ecr:us-west-2:1234567890123:repository/container3"
  #]
}
