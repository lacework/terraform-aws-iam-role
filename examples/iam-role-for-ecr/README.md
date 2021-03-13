# IAM Role For ECR Integrations
This example enables the IAM role to be used for ECR Integrations.

```hcl
provider "aws" {
  region = "us-west-2"
}

module "lacework_iam_role_for_ecr" {
  source  = "lacework/iam-role/aws"
  for_ecr = true
}
```

By default, the module will detect the AWS region and Account ID in which
Terraform is authorized and use that information to build the default ECR
ARN to grant access to. (e.i `arn:aws:ecr:aws_region:account_id:repository/*`)

Optionally, it is possible to pass a list of ECR registries to grant access to:
```hcl
provider "aws" {}

module "lacework_iam_role_for_ecr" {
  source  = "lacework/iam-role/aws"
  for_ecr = true

  ecr_registries = [
    "arn:aws:ecr:us-west-2:1234567890123:repository/container1",
    "arn:aws:ecr:us-west-2:1234567890123:repository/container2",
    "arn:aws:ecr:us-west-2:1234567890123:repository/container3"
  ]
}
```

This module can then be integrated with the Terraform resource `lacework_integration_ecr`, for more
information about this integration see the [Terraform Provider for Lacework](https://registry.terraform.io/providers/lacework/lacework/latest/docs/resources/integration_ecr)
