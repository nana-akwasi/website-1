resource "aws_instance" "main" {
  ami           = var.ami
  instance_type = var.instance_type
  associate_public_ip_address = "true"
  subnet_id = var.subnet_id

  tags = {
    Name = var.project_name
  }
}