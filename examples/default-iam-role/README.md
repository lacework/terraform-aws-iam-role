# Default IAM Role
This example creates an IAM Role used to store IAM policies required to integrate AWS and Lacework.

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
}
```

For detailed information on integrating Lacework with AWS see [AWS Config and CloudTrail Integration with Terraform](https://support.lacework.com/hc/en-us/articles/360057092034-AWS-Config-and-CloudTrail-Integration-with-Terraform)