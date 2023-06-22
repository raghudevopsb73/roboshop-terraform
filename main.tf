module "vpc" {
  source = "git::https://github.com/raghudevopsb73/tf-module-vpc.git"

  for_each   = var.vpc
  cidr_block = each.value["cidr_block"]
  subnets    = each.value["subnets"]

  env            = var.env
  tags           = var.tags
  default_vpc_id = var.default_vpc_id

}

module "app_server" {
  source = "git::https://github.com/raghudevopsb73/tf-module-app.git"

  env       = var.env
  tags      = var.tags
  component = "test"
  subnet_id = lookup(lookup(lookup(module.vpc, "subnet_ids", null), "app", null), "subnet_ids", null)[0]
  //module.vpc["subnet_ids"]["app"]["subnet_ids"][0]
}


