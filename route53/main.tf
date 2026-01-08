resource "aws_route53_record" "records" {
  zone_id = var.zone_id
  name    = "${var.component_name}-dev"
  type    = var.record_type
  ttl     = 5
  records = [var.private_ip]
}