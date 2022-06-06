resource "aws_instance" "myawsserver" {
  ami = var.image
  instance_type = var.hardware

  tags = {
    Name = var.name
    Env = upper("eng")
    owner = "rodel"
    backup = "true"
  }
}
