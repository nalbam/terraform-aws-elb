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
    ssl_certificate_id = "arn:aws:acm:us-east-1:326826204754:certificate/d765f5ae-3873-4fx2-b067-8bbexqe1q7e7"
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
