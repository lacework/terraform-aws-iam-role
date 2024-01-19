locals {
  iam_role_name = length(var.iam_role_name) > 0 ? var.iam_role_name : "lw-iam-${random_id.uniq.hex}"
  version_file   = "${abspath(path.module)}/VERSION"
  module_name    = basename(abspath(path.module))
  module_version = fileexists(local.version_file) ? file(local.version_file) : ""
}

resource "random_id" "uniq" {
  byte_length = 4
}

data "aws_caller_identity" "current" {}

resource "lacework_external_id" "aws_iam_external_id" {
  count      = var.create ? 1 : 0
  csp        = "aws"
  account_id = data.aws_caller_identity.current.account_id
}

data "aws_iam_policy_document" "lacework_assume_role_policy" {
  count   = var.create ? 1 : 0
  version = "2012-10-17"
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "AWS"
      identifiers = ["arn:aws:iam::${var.lacework_aws_account_id}:role/lacework-platform"]
    }

    condition {
      test     = "StringEquals"
      variable = "sts:ExternalId"
      values   = [lacework_external_id.aws_iam_external_id[count.index].v2]
    }
  }
}

resource "aws_iam_role" "lacework_iam_role" {
  count                = var.create ? 1 : 0
  name                 = local.iam_role_name
  assume_role_policy   = data.aws_iam_policy_document.lacework_assume_role_policy[count.index].json
  permissions_boundary = var.permission_boundary_arn
  tags                 = var.tags
}

data "lacework_metric_module" "lwmetrics" {
  name    = local.module_name
  version = local.module_version
}
