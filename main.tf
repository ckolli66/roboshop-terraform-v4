module "network" {
  source = "./network"
}

module "ec2" {
  for_each  = var.components
  source 	= "./ec2"
  ami       = var.ami
  component_name = each.key
  sg_id      = [module.network.sg_id]
  type       = var.type
}

module "route53" {
  for_each = var.components
  source = "./route53"

  component_name = each.key
  private_ip     = module.ec2[each.key].private_ip
  record_type    = var.record_type
  zone_id        = var.zone_id
}

module "ansible" {

  for_each = var.components
  depends_on = [
	module.route53
  ]
  source = "./ansible"

  component_name = each.key
  private_ip     = module.ec2[each.key].private_ip
}

