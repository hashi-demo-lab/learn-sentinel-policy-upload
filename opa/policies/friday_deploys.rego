package terraform.policies.friday_deploys
import data

denyDay := "Friday"

deny[msg] {
  time.weekday(time.now_ns()) != denyDay
  msg := sprintf("No deployments allowed on %v and excludedWorkspace %v", [denyDay, data.excluded_workspace])
}
