policy "friday_deploys" {
  query = "data.terraform.policies.friday_deploys.deny"
  enforcement_level = "mandatory"
}

policy "public_ingress" {
  query = "data.terraform.policies.public_ingress.deny"
  enforcement_level = "mandatory"
}

policy "instance_type" {
  query = "data.terraform.policies.instance_rules.deny"
  enforcement_level = "advisory"
}
