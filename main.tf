module "vpc" {
  source = "./vpc"
}

module "ec2" {
  source     = "./ec2"
  subnet_id  = module.vpc.public_subnets[0]
  key_name   = var.key_name
  vpc_id     = module.vpc.vpc_id
}
