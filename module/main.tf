resource "aws_instance" "instance" {
  ami                      = var.ami_m
  instance_type            = var.instance_type_m
  vpc_security_group_ids   = var.vpc_security_group_ids_m
  tags                     = var.tags_m

#  instance_market_options {  // block
#    market_type            = "spot"
#    spot_options {
#      instance_interruption_behavior = "stop"
#      spot_instance_type             = "persistent"
#    }
#  }

  lifecycle {
    ignore_changes = [
      ami,
    ]
  }

}
resource "aws_route53_record" "public_record" {
  name              = "${var.tags_m.Name}.azcart.online"
  type              = "A"
  zone_id           = "Z0144525QEQQSOE8RRNR"
  ttl               = 30
  records           = [aws_instance.instance.public_ip]
}

resource "aws_route53_record" "private_record" {
  name              = "${var.tags_m.Name}-internal.azcart.online"
  type              = "A"
  zone_id           = "Z0144525QEQQSOE8RRNR"
  ttl               = 30
  records           = [aws_instance.instance.private_ip]
}

