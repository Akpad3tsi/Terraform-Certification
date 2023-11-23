resource "aws_security_group" "variable_demo" {
  name        = "variable demo"
  description = "Allow TLS inbound traffic"

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = [var.ip_address]

  }
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = [var.ip_address]


  }
  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = [var.ip_address]
  }
  tags = {
    Name = "Variable Demo"
  }
}
