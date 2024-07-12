resource "null_resource" "message" {
  # Changes to any instance of the cluster requires re-provisioning
  triggers {
    message = var.message
  }


  provisioner "local-exec" {
    command = "echo ${var.message}"
  }
}
