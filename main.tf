resource "null_resource" "example2" {
  provisioner "local-exec" {
<<<<<<< Updated upstream
    command = "echo tess"
=======
    command = "Get-Date > completed.txt"
    interpreter = ["PowerShell", "-Command"]
>>>>>>> Stashed changes
  }
}

module "test" {
  source = "./module"
}