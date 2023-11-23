/*variable "ip_address" {
  default = "116.50.30.20/32"

}
variable "instance_type" {

}*/

variable "elb_name" {
  type = string


}

variable "availability_zones" {
  type = list

}

variable "timeout" {
  type = number
}
