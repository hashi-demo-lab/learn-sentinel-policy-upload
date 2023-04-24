package terraform.policies.friday_deploys

denyDay := "Friday"
excludedWorkspace := data.excluded_workspaces

deny[msg] {
  time.weekday(time.now_ns()) != denyDay
  msg := sprintf("No deployments allowed on %v and excludedWorkspace %v", [denyDay, excludedWorkspace])
}
