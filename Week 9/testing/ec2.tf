# resource "aws_instance" "myinstance" {
#   ami = "ami-04a81a99f5ec58529"
#   #   ami           = data.aws_ami.ubuntu.id
#   instance_type = "t3.micro"
#   #   security_groups = ["sg-0fb8b17fc8d0ed5dc"]
#   # vpc_security_group_ids 
#   associate_public_ip_address = true
#   subnet_id                   = aws_subnet.mysubnet.id
#   user_data                   = file("start.sh")
#   vpc_security_group_ids = [aws_security_group.mysg.id]

#   tags = {
#     Name = "myinstance"
#   }
# }

# data "aws_ami" "ubuntu" {
#   most_recent = true

#   filter {
#     name   = "name"
#     values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
#   }

#   filter {
#     name   = "virtualization-type"
#     values = ["hvm"]
#   }

#   owners = ["099720109477"] # Canonical
# }
