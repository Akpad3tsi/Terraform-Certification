resource "aws_instance" "localexecdemo" {
  ami           = "ami-0230bd60aa48260c6"
  instance_type = "t2.micro"



  provisioner "local-exec" {
    command = "echo ${self.private_ip} >> private_ips.txt"
  }
}



