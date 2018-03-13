data "aws_availability_zones" "available" {}

variable region {
  default = "us-east-1"
}

variable name {
  //default = ""
}

variable "listener" {
  type = "list"
  default = [
    {
      instance_port = 80
      instance_protocol = "http"
      lb_port = 80
      lb_protocol = "http"
    }
  ]
  description = "A list of listener blocks."
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

variable "health_check" {
  type = "list"
  default = [
    {
      healthy_threshold = 2
      unhealthy_threshold = 2
      target = "HTTP:80/"
      interval = 30
      timeout = 3
    }
  ]
  description = "A health_check block."
}
