package terraform.policies.friday_deploys
import data.terraform.policies.friday_deploys_excluded_workspaces

denyDay := "Friday"

deny[msg] {
  time.weekday(time.now_ns()) == denyDay
  msg := sprintf("No deployments allowed on %v", [denyDay])
}