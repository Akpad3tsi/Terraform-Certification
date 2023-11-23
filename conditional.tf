variable "is_test" {
}
resource "aws_instance" "dev" {
  ami           = "ami-0230bd60aa48260c6"
  instance_type = "t2.micro"
  count         = var.is_test == true ? 2 : 0

}

resource "aws_instance" "prod" {
  ami           = "ami-0230bd60aa48260c6"
  instance_type = "t2.large"
  count         = var.is_test == false ? 1 : 0
}
