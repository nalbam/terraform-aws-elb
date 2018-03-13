name = "sample"

listener = [
  {
    instance_port = 80
    instance_protocol = "http"
    lb_port = 80
    lb_protocol = "http"
  },
  {
    instance_port = 80
    instance_protocol = "http"
    lb_port = 443
    lb_protocol = "https"
    ssl_certificate_id = "arn:aws:acm:us-east-1:366826107554:certificate/d762f51e-3873-4fc2-b067-8bbexee1q7e7"
  }
]

instances = [
  "i-sample1",
  "i-sample2",
]

subnets = [
  "sub-sample1",
  "sub-sample2",
]

security_groups = [
  "sub-sample1",
  "sub-sample2",
]
