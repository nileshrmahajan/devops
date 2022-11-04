variable "ec2_instance_name" {
  default = "terraform_created"
}

variable "ec2_ami" {
  default = "ami-097a2df4ac947655f"
}

variable "ec2_instance_type" {
  default = "t2.micro"
}

variable "ec2_key_name" {
  default = "ohio"
}

variable "ec2_security_group" {
  default = ["sg-0882eaa54633cb0d9"]
}

variable "ec2_subnet" {
  default = "subnet-0bbf1cab4d6d2b9d3"
}