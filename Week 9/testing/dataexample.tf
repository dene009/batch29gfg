# data "aws_subnet_ids" "private" {
#   vpc_id = var.vpc_id
# }

# resource "aws_instance" "app" {
#   for_each      = data.aws_subnet_ids.example.ids
#   ami           = var.ami
#   instance_type = "t2.micro"
#   subnet_id     = each.value
# }