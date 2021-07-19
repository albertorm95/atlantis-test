variable "env" {
  type = "string"
}
variable "byte_length" {
  type = number
}
variable "create_before_destroy" {
  type = bool
}

module "test_live" {
  count = var.env == "live" ? 1 : 0
  source = "../"
  env = var.env
  byte_length = var.byte_length
  create_before_destroy = var.create_before_destroy
}

module "test_dev" {
  count = var.env == "dev" ? 1 : 0
  source = "../"
  env = var.env
  byte_length = var.byte_length
  create_before_destroy = var.create_before_destroy
}
