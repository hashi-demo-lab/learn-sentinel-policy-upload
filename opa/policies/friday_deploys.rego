package terraform.policies.friday_deploys
import data.friday_deploys_excluded_workspaces

excludedWorkspace := friday_deploys_excluded_workspaces.excluded_workspaces
denyDay := "Friday"

deny[msg] {
  time.weekday(time.now_ns()) == denyDay
  msg := sprintf("No deployments allowed on %v and excludedWorkspace", [denyDay])
}