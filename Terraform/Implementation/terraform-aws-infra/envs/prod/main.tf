
module "vpc" {
  source = "../modules/vpc"
}

module "ec2" {
  source = "../modules/ec2"
  subnet_id = module.vpc.public_subnet_id
}

module "rds" {
  source = "../modules/rds"
  db_user = "admin"
  db_password = "YourSecurePassword"
}
