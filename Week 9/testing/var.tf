# resource "aws_instance" "myec2instance" {
#   ami = data.aws_ami.ubuntu.id
#   instance_type = var.instance_type
# #   associate_public_ip_address = var.public_ip_ec2
#   tags = {
#     Name = var.instance_name
#   }
# }


# variable "ami" {
#   type    = string
#   default = "ami-0ba9883b710b05ac6"
# }

# variable "instance_type" {
#   type    = string
#   default = "t3.micro"
# }

# variable "instance_name" {
#   type    = string
#   default = "myinstance"
# }

# variable "public_ip_ec2" {
#   type    = bool
#   default = "true"
# }

# output "my_instance_public_ip_addr" {
#    value = aws_instance.myec2instance.public_ip
# }

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}