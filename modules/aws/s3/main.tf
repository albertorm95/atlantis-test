# tfsec:ignore:aws-s3-enable-bucket-logging
# tfsec:ignore:aws-s3-encryption-customer-key
resource "aws_s3_bucket" "bucket" {
  bucket = local.bucket_name

  versioning {
    enabled = var.versioning
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm     = var.sse_algorithm
        kms_master_key_id = var.sse_algorithm == "AES256" ? null : var.kms_key_id
      }
    }
  }

  tags = merge(
    tomap({
      "Name"        = local.bucket_name,
      "environment" = var.environment,
      "created_by"  = var.created_by,
      "from_module" = "atlantis-test/modules/aws/s3",
    }),
    var.extra_tags
  )
}

# tfsec:ignore:aws-s3-ignore-public-acls
# tfsec:ignore:aws-s3-no-public-buckets
resource "aws_s3_bucket_public_access_block" "bucket" {
  count = var.enable_public_access_block == true ? 1 : 0

  bucket = aws_s3_bucket.bucket.id

  block_public_acls       = var.block_public_acls
  block_public_policy     = var.block_public_policy
  ignore_public_acls      = var.ignore_public_acls
  restrict_public_buckets = var.restrict_public_buckets
}
