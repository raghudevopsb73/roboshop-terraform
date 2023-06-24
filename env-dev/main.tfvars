env = "dev"

tags = {
  company_name  = "XYZ Tech"
  business      = "ecommerce"
  business_unit = "retail"
  cost_center   = "322"
  project_name  = "roboshop"
}


vpc = {
  main = {
    cidr_block = "10.0.0.0/16"
    subnets = {
      web    = { cidr_block = ["10.0.0.0/24", "10.0.1.0/24"] }
      app    = { cidr_block = ["10.0.2.0/24", "10.0.3.0/24"] }
      db     = { cidr_block = ["10.0.4.0/24", "10.0.5.0/24"] }
      public = { cidr_block = ["10.0.6.0/24", "10.0.7.0/24"] }
    }
  }
}

default_vpc_id = "vpc-0e451797fe9172e67"
default_vpc_rt = "rtb-006100fe759977d85"
allow_ssh_cidr = ["172.31.0.8/32"]
zone_id        = "Z055331734ICV430E01P7"
kms_key_id     = "f0a71b80-90c3-4da1-a189-b4b95e9764e8"
kms_key_arn    = "arn:aws:kms:us-east-1:739561048503:key/f0a71b80-90c3-4da1-a189-b4b95e9764e8"


rabbitmq = {
  main = {
    instance_type = "t3.small"
    component     = "rabbitmq"
  }
}

rds = {
  main = {
    component      = "mysql"
    engine         = "aurora-mysql"
    engine_version = "5.7.mysql_aurora.2.11.3"
    db_name        = "dummy"
    instance_count = 1
  }
}

