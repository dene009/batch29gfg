provider "aws" {
  region = "us-east-1"
  #   access_key = "my-access-key"
  # secret_key = "my-secret-key"
  #   Access_key
  #   Secret_Access_key
}

# variable "AWS_ACCESS_KEY" {
# }

# variable "AWS_SECRET_KEY" {
# }

# terraform {
#   required_providers {
#     azurerm = {
#       source  = "hashicorp/azurerm"
#       version = "=3.0.0"
#     }
#   }
# }

# terraform { 
#   cloud { 
    
#     organization = "batch23" 

#     workspaces { 
#       name = "batch23gfgws" 
#     } 
#   } 
# }

terraform {
  backend "local" {
    path = "terraform.tfstate"
  }
}

# resource "aws_instance" "myec2instance" {
#   ami = data.aws_ami.ubuntu.id
#   instance_type = "t2.micro"
# #   associate_public_ip_address = var.public_ip_ec2
#   tags = {
#     Name = "hello"
#   }
# }
# resource "aws_instance" "myec2instance1" {
#   ami = data.aws_ami.ubuntu.id
#   instance_type = "t2.micro"
# #   associate_public_ip_address = var.public_ip_ec2
#   tags = {
#     Name = "hello"
#   }
# }


# resource "aws_instance" "web" {
# count = 5
#   ami           = data.aws_ami.ubuntu.id
#   instance_type = "t3.micro"

#   tags = {
#     Name = "HelloWorld-${count.index}"
#   }
# }


# variable "instance_name" {
#   type    = set(string)
#   default = ["myinstance1", "myinstance2"]
# }

# variable "instance_name" {
#     default={
#         myinstance1={instance_type="t2.micro", availability_zone= "us-east-1a"}
#         myinstance2={instance_type="t3.micro", availability_zone= "us-east-1b"}
#     }
# }


# data "aws_iam_role" "myiamrole" {
#   name = "s3ec2role"
# }


# data "aws_security_group" "mysg" {
#   name = "batch19sg"
# }

# resource "aws_instance" "web3" {
#   for_each      = var.instance_name
#   ami           = data.aws_ami.ubuntu.id
#   instance_type = each.value.instance_type
#   availability_zone = each.value.availability_zone
#   iam_instance_profile = data.aws_iam_role.myiamrole.id
# #   security_groups =[data.aws_security_group.mysg.id]
# # security_groups ="batch19sg"
#   tags = {
#     Name = each.key
#   }


# }



# # # resource "aws_instance" "web1" {
# # # for_each = toset(var.instance_name)
# # #   ami           = data.aws_ami.ubuntu.id
# # #   instance_type = "t3.micro"

# # #   tags = {
# # #     Name = each.key
# # #   }
# # # }

# # resource "aws_instance" "web3" {
# #   for_each      = var.instance_name
# #   ami           = var.ami
# #   instance_type = var.instance_type
# #   # ami           = data.aws_ami.ubuntu.id
# #   # instance_type = each.value.instance_type

# #   tags = {
# #     Name = each.key
# #   }


# # }

