output "elb_name" {
  value = "${aws_elb.default.name}"
}

output "elb_dns_name" {
  value = "${aws_elb.default.dns_name}"
}
