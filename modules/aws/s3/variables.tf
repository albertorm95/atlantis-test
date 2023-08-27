/* auto-sorted by sort_terraform_variables.py */

variable "allowed_source_vpcs" {
  default     = []
  description = "Provide a list of VPCs that need to be approved for communicate, i.e backend dev, backend staging."
  type        = list(any)
}

variable "aws_region" {
  type = string
}

variable "block_public_acls" {
  default = true
  type    = bool
}

variable "block_public_policy" {
  default = true
  type    = bool
}

variable "bucket" {
  type = string
}

variable "created_by" {
  type    = string
  default = "terraform"
}

variable "enable_public_access_block" {
  default = true
  type    = bool
}

variable "environment" {
  type = string
}

variable "extra_tags" {
  default = {}
  type    = map(any)
}

variable "ignore_public_acls" {
  default = false
  type    = bool
}

variable "kms_key_id" {
  default = null
  type    = string
}

variable "namespace" {
  default = ""
  type    = string
}

variable "prefix" {
  default = "test"
  type    = string
}

variable "restrict_public_buckets" {
  default = false
  type    = bool
}

variable "sse_algorithm" {
  default = "aws:kms"
  type    = string
}

variable "versioning" {
  default = true
  type    = bool
}
