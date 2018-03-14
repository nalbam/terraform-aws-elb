# terraform-aws-elb

## usage
```
module "sample" {
  source = "git::https://gitlab.com/nalbam/terraform-aws-elb.git"
  region = "${var.region}"

  instances = [
    "i-sample"
  ]

  subnets = [
    "i-sample"
  ]

  security_groups = [
    "i-sample"
  ]

  certificate_arn = "${data.aws_acm_certificate.default.arn}"
}
```
