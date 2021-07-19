variable "env" {
  type = "string"
}

module "test" {
    source = "../"
    env = var.env
}
