variable "env" {
  type = string
}
variable "byte_length" {
  type = number
}

module "test_live" {
  count = var.env == "live" ? 1 : 0
  source = "../"
  env = var.env
  byte_length = var.byte_length
}

module "test_dev" {
  count = var.env == "dev" ? 1 : 0
  source = "../"
  env = var.env
  byte_length = var.byte_length
}
