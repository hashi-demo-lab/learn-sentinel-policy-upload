package terraform.policies.friday_deploys

denyDay := "Friday"

deny[msg] {
  time.weekday(time.now_ns()) == denyDay
  msg := sprintf("No deployments allowed on %v", [denyDay])
}