locals {
  bucket_name = var.namespace == "" ? "${var.prefix}-${var.bucket}" : "${var.prefix}-${var.namespace}-${var.bucket}"
}
