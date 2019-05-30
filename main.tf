# Elastic Load Balancer

resource "aws_elb" "default" {
  name = var.name

  listener {
    instance_port     = var.http_port
    instance_protocol = var.http_protocol
    lb_port           = var.http_lb_port
    lb_protocol       = var.http_lb_protocol
  }

  listener {
    instance_port      = var.https_port
    instance_protocol  = var.https_protocol
    lb_port            = var.https_lb_port
    lb_protocol        = var.https_lb_protocol
    ssl_certificate_id = var.certificate_arn
  }

  instances = var.instances

  subnets = var.subnets

  security_groups = var.security_groups

  //  access_logs {
  //    bucket = "foo"
  //    bucket_prefix = "bar"
  //    interval = 60
  //  }

  health_check {
    healthy_threshold   = var.healthy_threshold
    unhealthy_threshold = var.unhealthy_threshold
    target              = var.health_target
    interval            = var.health_interval
    timeout             = var.health_timeout
  }
  cross_zone_load_balancing   = var.cross_zone_load_balancing
  idle_timeout                = var.idle_timeout
  connection_draining         = var.connection_draining
  connection_draining_timeout = var.connection_draining_timeout
}

//resource "aws_elb_attachment" "default" {
//  elb = "${aws_elb.default.id}"
//
//  count = "${length(var.instances)}"
//  instance = "${element(var.instances, count.index)}"
//}
