provider "aws" {
  region  = "us-east-1"
  profile = "DevOps-Admin"

}

/*resource "aws_instance" "Ec2" {
  ami           = "ami-0230bd60aa48260c6"
  instance_type = "t2.micro"
  key_name      = "terraform"
}*/