variable "env" {
  type = "string"
}

resource "random_id" "suffix" {
  byte_length = 4
}
