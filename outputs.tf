output "name" {
  value = "${aws_elb.default.name}"
}

output "dns_name" {
  value = "${aws_elb.default.dns_name}"
}
