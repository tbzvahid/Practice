resource "aws_instance" "name" {
  ami           = var.amiinstance
  instance_type = var.instancetp

  count = 3
  tags = {
    Name = var.tagsinstance[count.index]

  }
}