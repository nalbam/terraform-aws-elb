# terraform-aws-elb

## usage

```hcl
module "sample" {
  source = "git::https://github.com/nalbam/terraform-aws-elb.git"
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
