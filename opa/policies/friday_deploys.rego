package terraform.policies.friday_deploys


excludedWorkspace := data.excluded_workspaces
denyDay := "Monday"

deny[msg] {
  time.weekday(time.now_ns()) == denyDay
  msg := sprintf("No deployments allowed on %v and excludedWorkspace %v", [denyDay, excludedWorkspace])
}