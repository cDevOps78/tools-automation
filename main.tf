#module "prometheus" {
#  source = "./module"
#  ami_m  = "ami-05f020f5935e52dc4"
#  instance_type_m = "t3.small"
#  vpc_security_group_ids_m = ["sg-037dcd68553894e24"]
#  tags_m = var.tags.prometheus.tags
#}


module "vault" {
  source = "./module"
  ami_m  = "ami-05f020f5935e52dc4"
  instance_type_m = "t3.micro"
  vpc_security_group_ids_m = ["sg-037dcd68553894e24"]
  tags_m = var.tags.vault.tags
}