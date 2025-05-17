resource "random_integer" "bucket-suffix" {
  min  = 0
  max  = 10000
  seed = 5555
}

resource "aws_s3_bucket" "web-bucket" {
  bucket = "${var.bucket-name}-${random_integer.bucket-suffix.result}"
}

resource "aws_s3_object" "index-file" {
  bucket       = aws_s3_bucket.web-bucket.id
  key          = "index.html"
  source       = "./website/index.html"
  content_type = "text/html"
}

resource "aws_s3_object" "css-file" {
  bucket       = aws_s3_bucket.web-bucket.id
  key          = "styles.css"
  source       = "./website/styles.css"
  content_type = "text/css"
}

resource "aws_s3_bucket_policy" "allow_public_access_policy" {
  bucket     = aws_s3_bucket.web-bucket.id
  policy     = data.aws_iam_policy_document.allow_s3_get_access.json
  depends_on = [aws_s3_bucket_public_access_block.allow_public_access]
}

resource "aws_s3_bucket_public_access_block" "allow_public_access" {
  bucket = aws_s3_bucket.web-bucket.id

  block_public_acls       = true
  block_public_policy     = false
  ignore_public_acls      = true
  restrict_public_buckets = false
}

resource "aws_s3_bucket_website_configuration" "web-configuration" {
  bucket = aws_s3_bucket.web-bucket.id
  index_document {
    suffix = "index.html"
  }
}
