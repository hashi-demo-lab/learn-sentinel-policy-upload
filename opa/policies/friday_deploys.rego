package terraform.policies.friday_deploys

deny[msg] {
  time.weekday(time.now_ns()) == "Friday"
  log:= "test print otuput"
  msg := {"error": sprintf("%v",["No deployments allowed on Fridays"]),
          "log": sprintf("%v", [log]),
        }
}