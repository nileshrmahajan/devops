module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = var.ec2_instance_name

  ami                    = var.ec2_ami
  instance_type          = var.ec2_instance_type
  key_name               = var.ec2_key_name
  monitoring             = true
  vpc_security_group_ids = var.ec2_security_group
  subnet_id              = var.ec2_subnet
  associate_public_ip_address = true
  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}