locals {
  ecr_cross_account_policy_name = "ecr-cross-acct-policy-${random_id.uniq.hex}"
  ecr_reg_list = length(var.ecr_registries) > 0 ? var.ecr_registries : (
    ["arn:aws:ecr:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:repository/*"]
  )
}

data "aws_region" "current" {}
data "aws_caller_identity" "current" {}

data "aws_iam_policy_document" "ecr_cross_account_policy" {
  count   = var.for_ecr ? 1 : 0
  version = "2012-10-17"

  statement {
    actions = [
      "ecr:GetAuthorizationToken",
      "ecr:BatchCheckLayerAvailability",
      "ecr:GetDownloadUrlForLayer",
      "ecr:GetRepositoryPolicy",
      "ecr:DescribeRepositories",
      "ecr:ListImages",
      "ecr:DescribeImages",
      "ecr:BatchGetImage",
      "ecr:GetLifecyclePolicy",
      "ecr:GetLifecyclePolicyPreview",
      "ecr:ListTagsForResource",
      "ecr:DescribeImageScanFindings"
    ]
    resources = local.ecr_reg_list
  }
}

resource "aws_iam_policy" "ecr_cross_account_policy" {
  count       = var.for_ecr ? 1 : 0
  name        = local.ecr_cross_account_policy_name
  description = "A cross account policy to allow Lacework to analyze ECR containers"
  policy      = data.aws_iam_policy_document.ecr_cross_account_policy[count.index].json
}

resource "aws_iam_role_policy_attachment" "lacework_ecr_cross_account_iam_role_policy" {
  count      = var.for_ecr && var.create ? 1 : 0
  role       = var.iam_role_name
  policy_arn = aws_iam_policy.ecr_cross_account_policy[count.index].arn
}
