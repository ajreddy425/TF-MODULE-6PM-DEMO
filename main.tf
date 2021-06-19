# creating vpc from networking module

module "vpc_app" {
  source      = "./modules/networking"
  vpc_cidr    = "192.168.0.0/16"
  vpc_tags    = "my-choice-vpc"
  ins_tenancy = "default"
  subnet_cidr = "192.168.1.0/24"
  subnet_tags = "my-chc-sub1"
  vpc_id      = module.vpc_app.vpc_id
}

# creating ec2 from instaces module

module "ec2_main" {
  source    = "./modules/instances"
  ec2_count = 1
  ec2_tags  = "my-chc-ec2"
  subnet_id = module.ec2_main.subnet_id
}


