// creating vpc in neworking folder
resource "aws_vpc" "main" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = var.ins_tenancy

  tags = {
    Name = var.vpc_tags
  }
}

// creating subnet in networking folder

resource "aws_subnet" "pub_sub" {
  vpc_id     =var.vpc_id
  cidr_block = var.subnet_cidr

  tags = {
    Name = var.subnet_tags
  }
}
