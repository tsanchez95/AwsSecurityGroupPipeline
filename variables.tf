variable "region" {
  description = "Region used for the provider"
  default     = "us-east-1"
}

locals {
  #Example security group rules input files for apply with CIDR
  security_group_rules_cidr = csvdecode(file("textfilehere.csv"))
}
