# Custom IAM Role
This example changes the default name of the IAM Role to a custom name.

```hcl
provider "aws" {}

module "lacework_iam_role" {
  source             = "lacework/iam-role/aws"
  iam_role_name      = "custom-role-name"
  external_id_length = 256
}
```

For detailed information on integrating Lacework with AWS see [AWS Config and CloudTrail Integration with Terraform](https://support.lacework.com/hc/en-us/articles/360057092034-AWS-Config-and-CloudTrail-Integration-with-Terraform)
