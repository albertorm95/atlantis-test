resource "null_resource" "example2" {
  provisioner "local-exec" {
    command = "echo ss"
  }
}
