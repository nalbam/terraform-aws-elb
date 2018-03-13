name = "sample"

listener = [
  {
    instance_port = 80
    instance_protocol = "http"
    lb_port = 80
    lb_protocol = "http"
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
