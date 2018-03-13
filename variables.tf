data "aws_availability_zones" "available" {}

variable region {
  default = "us-east-1"
}

variable name {
  //default = ""
}

variable "http_port" {
  default = 80
}

variable "http_protocol" {
  default = "http"
}

variable "http_lb_port" {
  default = 80
}

variable "http_lb_protocol" {
  default = "http"
}

variable "https_port" {
  default = 80
}

variable "https_protocol" {
  default = "http"
}

variable "https_lb_port" {
  default = 443
}

variable "https_lb_protocol" {
  default = "https"
}

variable "https_certificate" {
  //default = ""
}

variable "instances" {
  type = "list"
  //default = []
  description = "A list of instance ids to place in the ELB pool."
}

variable "subnets" {
  type = "list"
  //default = []
  description = "List of subnets to place Elastic Load Balancer"
}

variable "security_groups" {
  type = "list"
  //default = []
  description = "List of security_groups to place Elastic Load Balancer"
}

variable "healthy_threshold" {
  default = 2
}

variable "unhealthy_threshold" {
  default = 2
}

variable "health_target" {
  default = "HTTP:80/"
}

variable "health_interval" {
  default = 30
}

variable "health_timeout" {
  default = 3
}
