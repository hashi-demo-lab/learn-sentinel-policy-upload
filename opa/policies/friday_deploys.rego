package terraform.policies.friday_deploys

deny[msg] {
  time.weekday(time.now_ns()) == "Friday"
  
  msg := sprintf("No deployments allowed on %v", [time.weekday])
}