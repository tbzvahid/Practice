provider "aws" {

}

resource "aws_instance" "awinst" {
  ami           = lookup(var.aminm, var.regionnm)
  instance_type = "t2.micro"
  count         = 2

  tags = {
    Name = element(var.tagnm, count.index)
  }
}