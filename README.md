# terraform-aws-elb

## usage
```
module "demo-elb" {
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

  https_certificate = "${data.aws_acm_certificate.default.arn}"
}
```
