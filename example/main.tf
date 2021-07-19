terraform {
  backend "s3" {
    encrypt        = true
    bucket         = "n26-atlantis-demo-states"
    dynamodb_table = "atlantis-demo-states-lock"
    region         = "eu-central-1"
    role_arn       = "arn:aws:iam::576985140337:role/fortknox26/ControlPlaneAccountAccessRole"
  }
}

variable "evn" {
  type = "string"
}

module "test" {
    source = "../"
    env = var.env
}
