
locals {
  common_tags = {
    service = "backend"
    owner   = "DevOps Team"
  }
}



resource "aws_instance" "app-dev" {
  ami           = "ami-0230bd60aa48260c6"
  instance_type = "t2.micro"
  tags = local.common_tags
}

resource "aws_instance" "db-dev" {
  ami           = "ami-0230bd60aa48260c6"
  instance_type = "t2.micro"
  tags = local.common_tags
}

resource "aws_ebs_volume" "db_ebs" {
  availability_zone = "us-east-1a"
  size              = 8
  tags = local.common_tags


}
