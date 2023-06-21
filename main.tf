module "vpc" {
  source = "git::https://github.com/raghudevopsb73/tf-module-vpc.git"

  for_each              = var.vpc
  cidr_block            = each.value["cidr_block"]
  web_subnet_cidr_block = each.value["web_subnet_cidr_block"]

  env  = var.env
  tags = var.tags

}
