resource "aws_instance" "lvalue" {
  ami           = var.amiinstance
  instance_type = var.instance_type
  tags          = local.common_tags
  

}

resource "aws_instance" "bvalue" {
  ami           = var.amiinstance
  instance_type = var.instance_type
  tags          = local.common_tags
  
  
}

locals {
  
 

  common_tags = {
    Owner = "Test User"
    Price = "Free Tier"
  }
}