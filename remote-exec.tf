resource "aws_instance" "Ec2" {
  ami           = "ami-0230bd60aa48260c6"
  instance_type = "t2.micro"
  key_name      = "Terraform-keypair"

  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("./Terraform-keypair.pem")
    host        = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "sudo yum -y install nginx",
      "sudo systemctl start nginx",
    ]
  }
}