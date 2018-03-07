# terraform-aws-elb

## usage
```
module "demo-dev" {
  source = "git::https://gitlab.com/nalbam/terraform-aws-elb.git"
  region = "${var.region}"

  instances = [
    "i-0d7f3b12763d2a73b"
  ]
  certificate_id = "${data.aws_acm_certificate.default.arn}"
}
```
