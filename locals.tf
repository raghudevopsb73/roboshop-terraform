locals {
  app_web_subnet_cidr    = concat(lookup(lookup(lookup(lookup(var.vpc, "main", null), "subnets", null), "web", null), "cidr_block", null), lookup(lookup(lookup(lookup(var.vpc, "main", null), "subnets", null), "app", null), "cidr_block", null))
  public_web_subnet_cidr = concat(lookup(lookup(lookup(lookup(var.vpc, "main", null), "subnets", null), "web", null), "cidr_block", null), lookup(lookup(lookup(lookup(var.vpc, "main", null), "subnets", null), "public", null), "cidr_block", null))
}