# Security Group Rules for CIDR
resource "aws_security_group_rule" "windows_server_rules_cidr" {
  for_each = { for r in local.security_group_rules_cidr : r.sgrule_id => r }
  security_group_id = each.value.sg_id
  type              = each.value.type
  protocol          = each.value.protocol
  from_port         = each.value.from
  to_port           = each.value.to
  cidr_blocks       = [each.value.cidr_blocks]
  description       = each.value.comment
}
