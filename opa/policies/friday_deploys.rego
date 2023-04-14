package terraform.policies.friday_deploys
import loader

json_data := loader.load_json("./test.json")
denyDay := "Friday"

deny[msg] {
  time.weekday(time.now_ns()) == denyDay
  msg := sprintf("No deployments allowed on %v", [denyDay])
}