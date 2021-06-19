// variable file for ec2

variable "my_ami"{
    default="ami-0aeeebd8d2ab47354"
}

variable "ins_type"{
    default="t2.micro"
}

variable "ec2_tags"{
    default="Public-instace-1"
}

variable"ec2_count"{
    default="1"
}

variable "subnet_id" {
    # default = "192.168.1.0/24"
}