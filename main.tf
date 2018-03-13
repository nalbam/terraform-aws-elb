# Elastic Load Balancer

resource "aws_elb" "default" {
  availability_zones = [
    "${data.aws_availability_zones.available.names}"
  ]

  listener {
    instance_port = 80
    instance_protocol = "http"
    lb_port = 80
    lb_protocol = "http"
  }

  listener {
    instance_port = 80
    instance_protocol = "http"
    lb_port = 443
    lb_protocol = "https"
    ssl_certificate_id = "${var.certificate_id}"
  }

  instances = [
    "${var.instances}"
  ]

  //  vpc_id = "${var.vpc_id}"

  subnets = [
    "${var.subnets}"
  ]

  //  access_logs {
  //    bucket = "foo"
  //    bucket_prefix = "bar"
  //    interval = 60
  //  }

  health_check {
    healthy_threshold = 2
    unhealthy_threshold = 2
    target = "HTTP:80/"
    interval = 30
    timeout = 3
  }

  cross_zone_load_balancing = true
  idle_timeout = 60
  connection_draining = true
  connection_draining_timeout = 300
}
