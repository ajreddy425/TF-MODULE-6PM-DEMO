// vpc_id as a output 
output "vpc_id" {
  value = aws_vpc.main.id
}

# output "subnet_id" {
#   value = aws_subnet.pub_sub.id
  
# }