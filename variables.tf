data "aws_availability_zones" "available" {}

variable region {
  default = "us-east-1"
}

variable "instances" {
  type = "list"
  //default = []
  description = "A list of instance ids to place in the ELB pool."
}

variable "ssl_certificate_id" {
  //default = ""
  description = "The ARN of an SSL certificate you have uploaded to AWS IAM."
}
