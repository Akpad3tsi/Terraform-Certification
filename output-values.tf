resource "aws_eip" "lb2" {
    domain = "vpc"
}

output "public_ip"{
    value = aws_eip.lb2.public_ip
}

output "http_endpoint"{
    value = "https://${aws_eip.lb2.public_ip}:8080"
}
output "all_details"{
    value = aws_eip.lb2
}