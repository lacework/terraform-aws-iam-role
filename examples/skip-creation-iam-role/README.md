# Skip creation of IAM Role
This example provides an example of using the `create` input set to `false` which will skip creating the IAM Role.

```
terraform {
  required_providers {
    lacework = {
      source = "lacework/lacework"
    }
  }
}
provider "lacework" {}

provider "aws" {}

module "lacework_iam_role" {
  source = "lacework/iam-role/aws"
  create = false
}
```

For detailed information on integrating Lacework with AWS see [AWS Config and CloudTrail Integration with Terraform](https://support.lacework.com/hc/en-us/articles/360057092034-AWS-Config-and-CloudTrail-Integration-with-Terraform)