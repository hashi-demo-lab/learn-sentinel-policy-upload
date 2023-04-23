package terraform.policies.friday_deploys
import data

excludedWorkspace := data.excluded_workspaces
denyDay := "Sunday"

deny[msg] {
  time.weekday(time.now_ns()) == denyDay
  msg := sprintf("No deployments allowed on %v and excludedWorkspace %v", [denyDay, excludedWorkspace])
}