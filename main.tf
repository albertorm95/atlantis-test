variable "env" {
  type = "string"
}
variable "byte_length" {
  type = number
}
variable "create_before_destroy" {
  type = bool
}

resource "random_id" "suffix" {
  prefix = var.env
  byte_length = var.byte_length
  lifecycle {
    create_before_destroy = var.create_before_destroy
  }
}
