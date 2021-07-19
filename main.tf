variable "env" {
  type = "string"
}
variable "byte_length" {
  type = number
}

resource "random_id" "suffix" {
  prefix = var.env
  byte_length = var.byte_length
}
