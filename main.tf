provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "one" {
count = 4
ami = "ami-0360c520857e3138f "
instance_type = "t2.medium"
key_name = "demoproject1"
vpc_security_group_ids = ["sg-0777ec6755223e598"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "AppServer-1", "AppServer-2", "Monitoring server"]
}
