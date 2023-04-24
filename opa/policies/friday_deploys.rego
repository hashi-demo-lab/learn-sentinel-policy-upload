package terraform.policies.friday_deploys

denyDay := "Friday"
workspaces := json.unmarshal(data)

deny[msg] {
  time.weekday(time.now_ns()) != denyDay
  msg := sprintf("No deployments allowed on %v and excludedWorkspace %v", [denyDay, workspaces.excluded_workspaces])
}
