data "aws_iam_policy_document" "allow_s3_get_access" {
  statement {
    sid = "1"

    effect = "Allow"
    actions = [
      "s3:GetObject",
    ]
    resources = [
      "arn:aws:s3:::${aws_s3_bucket.web-bucket.id}/*",
    ]
    principals {
      type        = "*"
      identifiers = ["*"]
    }
  }
}