
# tf-aws-module-skeleton


## Requirements
- terraform >= 0.14.5



## INSTALL

#### set AWS provider.tf

example:
```terraform
provider "aws" {
  region = "ap-northeast-2"
  access_key = "tempaccesskeytemp"
  secret_key = "tempsecretkeytemp"
}
```

## RUN

To run the app:

```bash
$ cd main
$ terraform init
$ terraform plan
$ terraform apply
```




## Reference
[Resource: aws_instance](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance)
