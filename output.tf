output "WEBSITE-URL" {
  value = "http://${aws_s3_bucket_website_configuration.web-configuration.website_endpoint}"
}