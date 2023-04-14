package terraform.policies.friday_deploys

deny[msg] {
  print("entering deny")
  time.weekday(time.now_ns()) == "Friday"
  msg := concat("No deployments allowed on Fridays","test concat")
}