package terraform.policies.friday_deploys

deny[msg] {
  time.weekday(time.now_ns()) == "Friday"
  
  msg := sprintf("%v No deployments allowed on ", ["time.weekday"])
}