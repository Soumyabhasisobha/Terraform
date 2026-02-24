#root
module "vpc" {
    source = "./vpc"
  
}
module "web" {
  source = "./web"
  sn = module.vpc.sn
  sg = module.vpc.sg
}