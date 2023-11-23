resource "aws_iam_user" "username" {
    name =  "Username.${count.index}"
    count = 5
    path = "/system/"
}


variable "elb_name" {
    type = list
    default = ["dev-loadbalancer" , "stage-loadbalancer", "prod-loadbalancer"]  
}


resource "aws_elb" "load_balancer" {
    name = var.elb_name[count.index]
    count = 3


    listener {
    instance_port     = 8000
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

}