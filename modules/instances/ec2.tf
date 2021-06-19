# creating ec2 instance resource
resource "aws_instance" "my_ec2" {
count           =var.ec2_count
  ami           = var.my_ami
  instance_type = var.ins_type
  subnet_id     =var.subnet_id

  tags = {
    Name = var.ec2_tags
  }
}



# Create VPC

resource "aws_vpc" "main1" {
  cidr_block       = "192.168.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "vpc-demo-1"
  }
}

# Creating Subnet
resource "aws_subnet" "main2" {
  vpc_id     = aws_vpc.main1.id
  cidr_block = "192.168.1.0/24"

  tags = {
    Name = "my-sub-1"
  }
}



output "subnet_id" {
  value = aws_subnet.main2.id
  
}