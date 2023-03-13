resource "aws_instance" "instance_1" {
  ami           = var.instance_1_amic_id
  instance_type = var.instance_1_type
  key_name      = var.key_name
  tags = {
    name = var.instance_1_machine_name
  }
  count = var.currentinstance == true ? 1 : 0
}

resource "aws_instance" "instance_2" {
  ami           = var.instance_2_ami_id
  instance_type = var.instance_2_type
  key_name      = var.key_name
  tags = {
    name = var.instance_2_machine_name
  }
  count = var.currentinstance == false ? 1 : 0
}






# resource "aws_eip" "eip" {
#   vpc = true

# }

# resource "aws_eip_association" "eip_assoc" {
#   instance_id   = aws_instance.instancec1.id
#   allocation_id = aws_eip.eip.id
# }

# resource "aws_security_group" "TRF_Security" {
#   name        = "SSH_Security"
#   description = "Allow SSh Traffic to pass"

#   ingress {
#     from_port   = var.fport
#     to_port     = var.tport
#     protocol    = var.protocol
#     cidr_blocks = [var.ingress_ip]

#   }
#   tags = {
#     Name = "SSH_Ingrees"
#   }

# }

# output "tbzpip" {
#   value = aws_instance.instancec1.public_ip

# }