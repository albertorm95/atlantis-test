variable "env" {
  type = "string"
}
variable "byte_length" {
  type = number
}

module "test" {
  source = "../"
  env = var.env
  byte_length = var.byte_length
}
