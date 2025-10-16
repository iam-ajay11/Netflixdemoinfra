provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "one" {
count = 4
ami = "ami-0341d95f75f311023"
instance_type = "t2.medium"
key_name = "insta"
vpc_security_group_ids = ["sg-0777ec6755223e598"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "AppServer-1", "AppServer-2", "Monitoring server"]
}
