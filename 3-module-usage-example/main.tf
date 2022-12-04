module "vpc1" {
  source = "./modules/network"
  vpc_cidr = "10.10.0.0/16"
  default_tags = {
    environment = "development1",
    owner = "r&d",
    cost_centre = "1234567890"
  }
  subnet_count = 1
}