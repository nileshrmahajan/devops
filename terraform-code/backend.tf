
terraform {
  backend "s3" {
    encrypt = true
    key = "terraform/statefile"
    bucket = "bramhastra"
    region = "us-east-2"    
  }
}
