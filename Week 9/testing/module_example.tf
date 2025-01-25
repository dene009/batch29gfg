# module "myec2module" {
#   source  = "iampsrv/myec2module/pranjal"
#   version = "1.0.0"
#   ami_id_mod = "ami-04a81a99f5ec58529"
#   instance_type_mod = "t2.micro"
#   name = "myec2tf"
#   name_sg = "mysgtf"
# }

# module "mylocalmod" {
#   source = "./batch23mod"
#   cidr_block = "10.0.0.0/16"
#   vpc_name = "myvpc-tf"
#   subnet_cidr_block = "10.0.1.0/24"
#   sg_name = "mysg-tf"
#     ami = "ami-04a81a99f5ec58529"
#   instance_type = "t2.micro"
#   instance_name = "myec2tf"
#   public_ip_ec2 = true
# }

# module "batch23mod" {
#   source            = "iampsrv/batch23mod/pranjal"
#   version           = "1.0.0"
#   cidr_block        = "10.0.0.0/16"
#   vpc_name          = "myvpc-tf"
#   subnet_cidr_block = "10.0.1.0/24"
#   sg_name           = "mysg-tf"
#   ami               = "ami-04a81a99f5ec58529"
#   instance_type     = "t2.micro"
#   instance_name     = "myec2tf"
#   public_ip_ec2     = true
# }