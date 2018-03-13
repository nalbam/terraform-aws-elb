# Elastic Load Balancer

resource "aws_elb" "default" {
  name = "${var.name}"

  listener = [
    "${var.listener}"
  ]

  subnets = [
    "${var.subnets}"
  ]

  security_groups = [
    "${var.security_groups}"
  ]

  //  access_logs {
  //    bucket = "foo"
  //    bucket_prefix = "bar"
  //    interval = 60
  //  }

  health_check = [
    "${var.health_check}"
  ]

  cross_zone_load_balancing = true
  idle_timeout = 60
  connection_draining = true
  connection_draining_timeout = 300
}

resource "aws_elb_attachment" "default" {
  elb = "${aws_elb.default.id}"

  count = "${length(var.instances)}"
  instance = "${element(var.instances, count.index)}"
}
