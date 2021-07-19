variable "evn" {
  type = "string"
}

module "test" {
    source = "../"
    env = var.env
}
