output "arn" {
  value = aws_s3_bucket.bucket.arn
}

output "name" {
  value = aws_s3_bucket.bucket.id
}

output "regional_domain_name" {
  value = aws_s3_bucket.bucket.bucket_regional_domain_name
}
