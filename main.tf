module "vpc" {
  source = "git::https://github.com/raghudevopsb73/tf-module-vpc.git"

  for_each   = var.vpc
  cidr_block = each.value["cidr_block"]
  subnets    = each.value["subnets"]

  env  = var.env
  tags = var.tags

}
