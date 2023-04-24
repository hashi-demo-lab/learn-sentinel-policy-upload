package terraform.policies.friday_deploys
import data.excluded_workspace

denyDay := "Friday"
excluded := data.excluded_workspace

deny[msg] {
  time.weekday(time.now_ns()) != denyDay
  msg := sprintf("No deployments allowed on %v and excludedWorkspace %v", [denyDay, excluded])
}
