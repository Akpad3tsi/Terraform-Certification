provider "aws" {
    region = "us-east-1"
    profile = "DevOps-Admin"
}

resource "aws_instance" "First_Instance" {
    ami = "ami-0230bd60aa48260c6"
    instance_type = "t2.micro"
  
    tags = {
       Name = "My Web Server"
         }
}