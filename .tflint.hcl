config {
  module = true
  force = false
  disabled_by_default = false
  ignore_module = {
    "terraform-aws-modules/vpc/aws"            = true
    "terraform-aws-modules/security-group/aws" = true
  }
}