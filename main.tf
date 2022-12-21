locals {
  iam_role_name = length(var.iam_role_name) > 0 ? var.iam_role_name : "lw-iam-${random_id.uniq.hex}"
}

resource "random_id" "uniq" {
  byte_length = 4
}

resource "random_string" "external_id" {
  count            = var.create ? 1 : 0
  length           = var.external_id_length
  override_special = "=,.@:/-"
}

data "aws_iam_policy_document" "lacework_assume_role_policy" {
  count   = var.create ? 1 : 0
  version = "2012-10-17"
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "AWS"
      identifiers = ["arn:aws:iam::${var.lacework_aws_account_id}:root"]
    }

    condition {
      test     = "StringEquals"
      variable = "sts:ExternalId"
      values   = [random_string.external_id[count.index].result]
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
