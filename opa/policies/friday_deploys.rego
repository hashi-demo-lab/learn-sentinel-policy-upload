package terraform.policies.friday_deploys
import data.json

excludedWorkspace := data.excluded_workspaces
denyDay := "Friday"

deny[msg] {
  time.weekday(time.now_ns()) == denyDay
  msg := sprintf("No deployments allowed on %v and excludedWorkspace %v", [denyDay, excludedWorkspace])
}