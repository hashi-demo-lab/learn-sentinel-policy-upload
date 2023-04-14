package terraform.policies.friday_deploys

deny[msg] {
  print("entering deny")
  time.weekday(time.now_ns()) == "Friday"
  msg := "No deployments allowed on Fridays"
  trace(sprintf("Hello There! %v", [msg]))
}